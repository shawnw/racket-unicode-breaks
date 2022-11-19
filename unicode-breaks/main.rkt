#lang racket/base

;;; Unicode 14.0 Text Segmentation Annex #29 algorithms for Racket 8.7+
;;; Copyright 2022 Shawn Wagner <shawnw.mobile@gmail.com>
;;; Released under MIT and Apache licenses; your choice.

(require racket/contract racket/sequence racket/unsafe/ops srfi/13
         "private/word-break-categories.rkt" "private/sentence-break-categories.rkt")
(module+ test (require rackunit))

(provide
 (contract-out
  [in-graphemes (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer?) (sequence/c string?))]
  [string-split-graphemes (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer?) (listof string?))]
  [string-split-graphemes/immutable (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer?) (listof (and/c string? immutable?)))]
  [string-grapheme-indexes (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer?) (listof exact-nonnegative-integer?))]

  [char-word-break-property (-> char? symbol?)]
  [string-word-break-at? (->* (string? exact-nonnegative-integer?) (exact-nonnegative-integer? exact-nonnegative-integer?) boolean?)]
  [string-word-span (->* (string? exact-nonnegative-integer?) (exact-nonnegative-integer?) exact-nonnegative-integer?)]
  [in-words (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer? #:skip-blanks? any/c) (sequence/c string?))]
  [string-split-words (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer? #:skip-blanks? any/c) (listof string?))]
  [string-split-words/immutable (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer? #:skip-blanks? any/c) (listof (and/c string? immutable?)))]
  [string-word-break-indexes (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer?) (listof exact-nonnegative-integer?))]

  [char-sentence-break-property (-> char? symbol?)]
  [string-sentence-break-at? (->* (string? exact-nonnegative-integer?) (exact-nonnegative-integer? exact-nonnegative-integer?) boolean?)]
  [in-sentences (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer?) (sequence/c string?))]
  [string-split-sentences (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer?) (listof string?))]
  [string-split-sentences/immutable (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer?) (listof (and/c string? immutable?)))]
  [string-sentence-break-indexes (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer?) (listof exact-nonnegative-integer?))]

  ))

;;; Graphemes

;; Create a sequence of substrings, one grapheme per element
(define (in-graphemes str [start 0] [end (string-length str)])
  (let* ([str (string->immutable-string str)]
         [end-pos (+ start (string-grapheme-span str start end))])
    (make-do-sequence
     (lambda ()
       (values
        (lambda (start-pos) (substring str start-pos end-pos))
        (lambda (pos)
          (let ([new-pos end-pos])
            (set! end-pos (+ end-pos (string-grapheme-span str end-pos end)))
            new-pos))
        start
        (lambda (pos) (< pos end))
        #f
        #f)))))

;; Split a string into a list of substrings, one grapheme per element
(define (string-split-graphemes str [start 0] [end (string-length str)])
  (sequence->list (in-graphemes str start end)))

;; Same, returning immutable strings
(define (string-split-graphemes/immutable str [start 0] [end (string-length str)])
  (map unsafe-string->immutable-string! (sequence->list (in-graphemes str start end))))

;; Return a list of the pairs of start and one past end indexes of each grapheme
(define (string-grapheme-indexes str [start 0] [end (string-length str)])
  (let loop [(i start)
             (indexes '())]
    (if (>= i end)
        (reverse indexes)
        (let ([j (string-grapheme-span str i end)])
          (loop (+ i j) (cons i indexes))))))

;;; Word breaks
;; TODO: Look into building a state machine to handle word boundaries instead of a huge cond

(define (AHLetter? cat) (or (eq? cat 'ALetter) (eq? cat 'Hebrew_Letter)))
(define (MidNumLetQ? cat) (or (eq? cat 'MidNumLet) (eq? cat 'Single_Quote)))

(define (Regional_Indicator? ch) (eq? (char-word-break-property ch) 'Regional_Indicator))
(define (Regional_Indicator/EFZ? ch)
  (let ([cat (char-word-break-property ch)])
    (or (eq? cat 'Regional_Indicator) (eq? cat 'Extend) (eq? cat 'Format) (eq? cat 'ZWJ))))

(define (EFZ? ch)
  (let ([cat (char-word-break-property ch)])
    (or (eq? cat 'Extend) (eq? cat 'Format) (eq? cat 'ZWJ))))

(define (next-non-ef-idx str i end) (string-skip str EFZ? i end))
(define (prev-non-ef-idx str i start) (string-skip-right str EFZ? start i))

;; #t if there's a word break before the character at index i
(define (string-word-break-at? str i [start 0] [end (string-length str)])
  (if (or (= i start) (= i end))
      #t; WB1,2
      (let* ([before-ch (string-ref str (- i 1))]
             [before (char-word-break-property before-ch)]
             [after-ch (string-ref str i)]
             [after (char-word-break-property after-ch)])
        (cond
          [(and (eq? before 'CR) (eq? after 'LF)) #f] ; WB3
          [(or (or (eq? before 'Newline) (eq? before 'CR) (eq? before 'LF))
               (or (eq? after 'Newline) (eq? after 'CR) (eq? after 'LF))) #t] ; WB3a,b
          [(and (eq? before 'ZWJ) (char-extended-pictographic? after-ch)) #f] ; WB3c
          [(and (eq? before 'WSegSpace) (eq? after 'WSegSpace)) #f] ; WB3d
          [(or (eq? after 'Format) (eq? after 'Extend) (eq? after 'ZWJ)) #f] ; WB4
          [else
           (let* ([before-idx (prev-non-ef-idx str i start)] ; WB4 ignore rules
                  [before-ch (if before-idx (string-ref str before-idx) before-ch)]
                  [before (if (and before-idx (not (= before-idx (- i 1)))) (char-word-break-property before-ch) before)]
                  [after-idx (next-non-ef-idx str i end)]
                  [after-ch (and after-idx (string-ref str after-idx))]
                  [after (if (and after-ch (not (= after-idx i))) (char-word-break-property after-ch) after)]
                  [next-before-idx (and before-idx (>= (- before-idx 1) start) (prev-non-ef-idx str before-idx start))]
                  [next-before-ch (and next-before-idx (string-ref str next-before-idx))]
                  [next-before (and next-before-ch (char-word-break-property next-before-ch))]
                  [next-after-idx (and (< (+ after-idx 1) end) (next-non-ef-idx str (+ after-idx 1) end))]
                  [next-after-ch (and next-after-idx (string-ref str next-after-idx))]
                  [next-after (and next-after-ch (char-word-break-property next-after-ch))])
             #;(printf "next-before-idx: ~S next-before-ch: ~S next-before: ~S~%before-idx: ~S before-ch: ~S before: ~S~%after-idx: ~S after-ch: ~S after: ~S~%next-after-idx: ~S next-after-ch: ~S next-after: ~S~%"
                     next-before-idx next-before-ch next-before before-idx before-ch before after-idx after-ch after next-after-idx next-after-ch next-after)
             (cond
               ;[(not (and before after)) #f]
               [(and (AHLetter? before) (AHLetter? after)) #f] ; WB5
               [(and (AHLetter? before)
                     (or (eq? after 'MidLetter) (MidNumLetQ? after))
                     (AHLetter? next-after)) #f] ; WB6
               [(and (AHLetter? next-before)
                     (or (eq? before 'MidLetter) (MidNumLetQ? before))
                     (AHLetter? after)) #f] ; WB7
               [(and (eq? before 'Hebrew_Letter) (eq? after 'Single_Quote)) #f] ; WB7a
               [(and (eq? before 'Hebrew_Letter)
                     (eq? after 'Double_Quote)
                     (eq? next-after 'Hebrew_Letter)) #f] ; WB7b
               [(and (eq? next-before 'Hebrew_Letter)
                     (eq? before 'Double_Quote)
                     (eq? after 'Hebrew_Letter)) #f] ; WB7c
               [(and (eq? before 'Numeric) (eq? after 'Numeric)) #f] ; WB8
               [(and (AHLetter? before) (eq? after 'Numeric)) #f] ; WB9
               [(and (eq? before 'Numeric) (AHLetter? after)) #f] ; WB10
               [(and (eq? next-before 'Numeric)
                     (or (eq? before 'MidNum) (MidNumLetQ? before))
                     (eq? after 'Numeric)) #f] ; WB11
               [(and (eq? before 'Numeric)
                     (or (eq? after 'MidNum) (MidNumLetQ? after))
                     (eq? next-after 'Numeric)) #f] ; WB12
               [(and (eq? before 'Katakana) (eq? after 'Katakana)) #f] ; WB13
               [(and (or (AHLetter? before) (eq? before 'Numeric) (eq? before 'Katakana) (eq? before 'ExtendNumLet))
                     (eq? after 'ExtendNumLet)) #f] ; WB13a
               [(and (eq? before 'ExtendNumLet)
                     (or (AHLetter? after) (eq? after 'Numeric) (eq? after 'Katakana))) #f] ; WB13b
               [(and (eq? before 'Regional_Indicator) (eq? after 'Regional_Indicator)
                     ; Find out how many Regional_Indicator characters exist before the point
                     (let ([first-non-ri (string-skip-right str Regional_Indicator/EFZ? start after-idx)])
                       (if first-non-ri
                           (odd? (string-count str Regional_Indicator? (+ first-non-ri 1) after-idx))
                           (odd? (string-count str Regional_Indicator? start after-idx))))) #f] ; WB15, 16
               [else #t]))])))) ; WB999

;; Like string-grapheme-span but for word breaks
(define (string-word-span str start [end (string-length str)])
  (let ([first-break (for/first ([i (in-range (+ start 1) end)]
                                 #:when (string-word-break-at? str i start end))
                       i)])
    (if first-break
        (- first-break start)
        (- end start))))

(define (skip-whitespace-only-segments str word-breaks)
  (cond
    [(< (length word-breaks) 2) '()]
    [(regexp-match? #px"^\\p{Z}+$" str (car word-breaks) (cadr word-breaks))
     (skip-whitespace-only-segments str (cdr word-breaks))]
    [else word-breaks]))

(define (in-words str [start 0] [end (string-length str)] #:skip-blanks? [skip-blanks? #f])
  (let* ([str (string->immutable-string str)]
         [initial-word-breaks (if skip-blanks?
                                  (skip-whitespace-only-segments str (string-word-break-indexes str start end))
                                  (string-word-break-indexes str start end))])
    (make-do-sequence
     (lambda ()
       (values
        (lambda (word-breaks) (substring str (car word-breaks) (cadr word-breaks)))
        (lambda (word-breaks) (if skip-blanks? (skip-whitespace-only-segments str (cdr word-breaks)) (cdr word-breaks)))
        initial-word-breaks
        (lambda (word-breaks) (>= (length word-breaks) 2))
        #f
        #f)))))

(define (string-split-words str [start 0] [end (string-length str)] #:skip-blanks? [skip-blanks? #f])
  (sequence->list (in-words str start end #:skip-blanks? skip-blanks?)))

(define (string-split-words/immutable str [start 0] [end (string-length str)] #:skip-blanks? [skip-blanks? #f])
  (map unsafe-string->immutable-string! (sequence->list (in-words str start end #:skip-blanks? skip-blanks?))))

(define (string-word-break-indexes str [start 0] [end (string-length str)])
  (for/list ([i (in-inclusive-range start end)]
             #:when (string-word-break-at? str i start end))
    i))


;;; Sentence breaks

(define (ParaSep? cat)
  (or (eq? cat 'Sep) (eq? cat 'CR) (eq? cat 'LF)))
(define (SATerm? cat) (or (eq? cat 'STerm) (eq? cat 'ATerm)))

(define (sEF? ch)
  (let ([cat (char-sentence-break-property ch)])
    (or (eq? cat 'Extend) (eq? cat 'Format))))

(define (next-non-sef-idx str i end) (string-skip str sEF? i end))
(define (prev-non-sef-idx str i start) (string-skip-right str sEF? start i))

(define (sEFSp? ch)
  (let ([cat (char-sentence-break-property ch)])
    (or (eq? cat 'Extend) (eq? cat 'Format) (eq? cat 'Sp))))

(define (sEFC? ch)
  (let ([cat (char-sentence-break-property ch)])
    (or (eq? cat 'Extend) (eq? cat 'Format) (eq? cat 'Close))))

(provide prev-skip-close-sp)
(define (prev-skip-close-sp str i start)
  (let ([new-i (string-skip-right str sEFSp? start (+ i 1))])
    (and new-i (string-skip-right str sEFC? start (+ new-i 1)))))

(define (prev-skip-close str i start)
  (string-skip-right str sEFC? start i))

(define (notStuff? ch)
  (let ([cat (char-sentence-break-property ch)])
    (not (or (eq? cat 'OLetter) (eq? cat 'Upper) (eq? cat 'Lower) (ParaSep? cat) (SATerm? cat)))))

(define (next-skip-notseq str i end)
  (string-skip str notStuff? i end))

(define (string-sentence-break-at? str i [start 0] [end (string-length str)])
  (if (or (= i start) (= i end))
      #t; SB1,2
      (let* ([before-ch (string-ref str (- i 1))]
             [before (char-sentence-break-property before-ch)]
             [after-ch (string-ref str i)]
             [after (char-sentence-break-property after-ch)])
        (cond
          [(and (eq? before 'CR) (eq? after 'LF)) #f] ; SB3
          [(ParaSep? before) #t] ; SB4
          [(or (eq? after 'Format) (eq? after 'Extend)) #f] ; SB5
          [else
           (let* ([before-idx (prev-non-sef-idx str i start)] ; SB5 ignore rules
                  [before-ch (if before-idx (string-ref str before-idx) before-ch)]
                  [before (if (and before-idx (not (= before-idx (- i 1)))) (char-sentence-break-property before-ch) before)]
                  [after-idx (next-non-sef-idx str i end)]
                  [after-ch (and after-idx (string-ref str after-idx))]
                  [after (if (and after-ch (not (= after-idx i))) (char-sentence-break-property after-ch) after)]
                  [next-before-idx (and before-idx (>= (- before-idx 1) start) (prev-non-sef-idx str before-idx start))]
                  [next-before-ch (and next-before-idx (string-ref str next-before-idx))]
                  [next-before (and next-before-ch (char-sentence-break-property next-before-ch))]
                  [before-skip-close-sp-idx (and before-idx (prev-skip-close-sp str before-idx start))]
                  [before-skip-close-sp-ch (and before-skip-close-sp-idx (string-ref str before-skip-close-sp-idx))]
                  [before-skip-close-sp (and before-skip-close-sp-ch (char-sentence-break-property before-skip-close-sp-ch))])
             #;(printf "before-skip-close-sp-idx: ~S before-skip-close-sp-ch: ~S before-skip-close-sp: ~S~%next-before-idx: ~S next-before-ch: ~S next-before: ~S~%before-idx: ~S before-ch: ~S before: ~S~%after-idx: ~S after-ch: ~S after: ~S~%"
                       before-skip-close-sp-idx before-skip-close-sp-ch before-skip-close-sp next-before-idx next-before-ch next-before before-idx before-ch before after-idx after-ch after)
             (cond
               [(and (eq? before 'ATerm) (eq? after 'Numeric)) #f] ; SB6
               [(and (or (eq? next-before 'Upper) (eq? next-before 'Lower))
                     (eq? before 'ATerm)
                     (eq? after 'Upper)) #f] ; SB7
               [(and (eq? before-skip-close-sp 'ATerm)
                     (let ([after-idx (next-skip-notseq str after-idx end)])
                       (and after-idx (eq? (char-sentence-break-property (string-ref str after-idx)) 'Lower)))) #f] ; SB8
               [(and (SATerm? before-skip-close-sp)
                     (or (eq? after 'SContinue) (SATerm? after))) #f] ; SB8a
               [(and (let ([before-close-idx (and before-idx (prev-skip-close str (+ before-idx 1) start))])
                       (and before-close-idx (SATerm? (char-sentence-break-property (string-ref str before-close-idx)))))
                     (or (eq? after 'Close) (eq? after 'Sp) (ParaSep? after))) #f] ; SB9
               [(and (SATerm? before-skip-close-sp)
                     (or (eq? after 'Sp) (ParaSep? after))) #f] ; SB10
               [(if (ParaSep? before)
                    (let* ([before-skip-close-sp-idx (prev-skip-close-sp str before-idx start)]
                           [before-skip-close-sp (and before-skip-close-sp-idx (char-sentence-break-property (string-ref str before-skip-close-sp-idx)))])
                      (SATerm? before-skip-close-sp))
                    (SATerm? before-skip-close-sp)) #t] ; SB11
               [else #f]))])))) ; SB998

(define (in-sentences str [start 0] [end (string-length str)])
  (let ([str (string->immutable-string str)])
    (make-do-sequence
     (lambda ()
       (values
        (lambda (sentence-breaks) (substring str (car sentence-breaks) (cadr sentence-breaks)))
        (lambda (sentence-breaks) (cdr sentence-breaks))
        (string-sentence-break-indexes str start end)
        (lambda (sentence-breaks) (>= (length sentence-breaks) 2))
        #f
        #f)))))

(define (string-split-sentences str [start 0] [end (string-length str)])
  (sequence->list (in-sentences str start end)))

(define (string-split-sentences/immutable str [start 0] [end (string-length str)])
  (map unsafe-string->immutable-string! (sequence->list (in-sentences str start end))))

(define (string-sentence-break-indexes str [start 0] [end (string-length str)])
  (for/list ([i (in-inclusive-range start end)]
             #:when (string-sentence-break-at? str i start end))
    i))

(module+ test
  (define pure-ascii "abcd\r\n")
  (define mixed "abc\u0308d \u1100\u1161\u11A8")
  (test-equal? "split pure ascii"
               (string-split-graphemes pure-ascii) '("a" "b" "c" "d" "\r\n"))
  (test-equal? "split pure ascii with range"
               (string-split-graphemes pure-ascii 2 4) '("c" "d"))
  (test-equal? "split graphemes"
              (string-split-graphemes mixed)
              '("a" "b" "c\u0308" "d" " " "\u1100\u1161\u11A8"))
  (test-equal? "split graphemes with range"
               (string-split-graphemes mixed 3 5)
               '("\u0308" "d"))
  (test-equal? "indexes pure ascii"
               (string-grapheme-indexes pure-ascii)
               '(0 1 2 3 4))

  ;; Some basic tests. More in private/wordbreak-tests.rkt
  (define some-words "The quick (“brown”) fox can’t jump 32.3 feet, right?")
  (test-equal? "words with spaces"
               (string-split-words some-words #:skip-blanks? #f)
               '("The" " " "quick" " " "(" "“" "brown" "”" ")" " " "fox" " " "can’t" " " "jump" " " "32.3" " " "feet" "," " " "right" "?"))
  (test-equal? "words without spaces"
               (string-split-words some-words #:skip-blanks? #t)
               '("The" "quick" "(" "“" "brown" "”" ")" "fox" "can’t" "jump" "32.3" "feet" "," "right" "?"))

  (define some-sentences "This is a sentence. And this is another. Finally a third.")
  (test-equal? "sentences"
               (string-split-sentences some-sentences)
               '("This is a sentence. " "And this is another. " "Finally a third."))

  )
