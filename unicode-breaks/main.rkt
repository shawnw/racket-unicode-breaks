#lang racket/base

;;; Unicode 14.0 Text Segmentation Annex #29 algorithms for Racket 8.7+
;;; Copyright 2022 Shawn Wagner <shawnw.mobile@gmail.com>
;;; Released under MIT and Apache licenses; your choice.

(require racket/contract racket/fixnum racket/sequence racket/unsafe/ops
         srfi/13 "private/word-break-categories.rkt")
(module+ test (require rackunit))

(provide
 (contract-out
  [in-graphemes (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer?) (sequence/c string?))]
  [string-split-graphemes (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer?) (listof string?))]
  [string-split-graphemes/immutable (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer?) (listof (and/c string? immutable?)))]
  [string-grapheme-indexes (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer?) (listof (cons/c exact-nonnegative-integer? exact-nonnegative-integer?)))]

  [char-word-break-property (-> char? (or/c 'ALetter 'CR 'Double_Quote 'Extend 'ExtendNumLet 'Format 'Hebrew_Letter 'Katakana 'LF 'MidLetter 'MidNum 'MidNumLet 'Newline 'Numeric 'Other 'Regional_Indicator 'Single_Quote 'WSegSpace 'ZWJ))]
  [string-word-span (->* (string? exact-nonnegative-integer?) (exact-nonnegative-integer?) exact-nonnegative-integer?)]
  [in-words (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer? #:skip-blanks? any/c) (sequence/c string?))]
  [string-split-words (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer? #:skip-blanks? any/c) (listof string?))]
  [string-split-words/immutable (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer? #:skip-blanks? any/c) (listof (and/c string? immutable?)))]
  [string-word-break-indexes (->* (string?) (exact-nonnegative-integer? exact-nonnegative-integer?) (listof exact-nonnegative-integer?))]
  ))

;;; Graphemes

;; Create a sequence of substrings, one grapheme per element
(define (in-graphemes str [start 0] [end (string-length str)])
  (let ([end-pos (+ start (string-grapheme-span str start end))])
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
          (loop (+ i j) (cons (cons i (+ i j)) indexes))))))

;;; Word breaks
;; TODO: Look into building a state machine to handle word boundaries instead of a huge cond

(define (AHLetter? cat) (or (eq? 'ALetter cat) (eq? 'Hebrew_Letter cat)))
(define (MidNumLetQ? cat) (or (eq? 'MidNumLet cat) (eq? 'Single_Quote cat)))
(define (Regional_Indicator? ch) (eq? (char-word-break-property ch) 'Regional_Indicator))

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
                  [before (if before-idx (char-word-break-property before-ch) before)]
                  [after-idx (next-non-ef-idx str i end)]
                  [after-ch (and after-idx (string-ref str after-idx))]
                  [after (and after-ch (char-word-break-property after-ch))]
                  [next-before-idx (and before-idx (>= (- before-idx 1) start) (prev-non-ef-idx str before-idx start))]
                  [next-before-ch (and next-before-idx (string-ref str next-before-idx))]
                  [next-before (and next-before-ch (char-word-break-property next-before-ch))]
                  [next-after-idx (and (< (+ after-idx 1) end) (next-non-ef-idx str (+ after-idx 1) end))]
                  [next-after-ch (and next-after-idx (string-ref str next-after-idx))]
                  [next-after (and next-after-ch (char-word-break-property next-after-ch))])
             #;(printf "next-before-idx: ~S next-before-ch: ~S next-before: ~S~%before-idx: ~S before-ch: ~S before: ~S~%after-idx: ~S after-ch: ~S after: ~S~%next-after-idx: ~S next-after-ch: ~S next-after: ~S~%"
                     next-before-idx next-before-ch next-before before-idx before-ch before after-idx after-ch after next-after-idx next-after-ch next-after)
             (cond
               [(not (and before after)) #f]
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
               [(and (eq? before 'Regional_Indicator) (eq? after 'Regional_Indicator))
                ; Find out how many Regional_Indicator characters exist before the point
                (let ([first-non-ri (string-skip-right str Regional_Indicator? start after-idx)])
                  (if first-non-ri
                      (even? (- after-idx first-non-ri)) ; WB16
                      (even? (- after-idx start))))] ; WB15
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
               '((0 . 1) (1 . 2) (2 . 3) (3 . 4) (4 . 6)))

  ;; Some basic tests. More in private/wordbreak-tests.rkt
  (define some-words "The quick (“brown”) fox can’t jump 32.3 feet, right?")
  (test-equal? "words with spaces"
               (string-split-words some-words #:skip-blanks? #f)
               '("The" " " "quick" " " "(" "“" "brown" "”" ")" " " "fox" " " "can’t" " " "jump" " " "32.3" " " "feet" "," " " "right" "?"))
  (test-equal? "words without spaces"
               (string-split-words some-words #:skip-blanks? #t)
               '("The" "quick" "(" "“" "brown" "”" ")" "fox" "can’t" "jump" "32.3" "feet" "," "right" "?"))
  )
