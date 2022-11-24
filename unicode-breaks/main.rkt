#lang racket/base

;;; Unicode 14.0 Text Segmentation Annex #29 algorithms for Racket 8.7+
;;; Copyright 2022 Shawn Wagner <shawnw.mobile@gmail.com>
;;; Released under MIT and Apache licenses; your choice.

(require racket/contract racket/require racket/sequence racket/unsafe/ops
         (for-syntax racket/base (only-in racket/string string-prefix?)
                     "private/word-break-categories.rkt" "private/sentence-break-categories.rkt")
         "private/word-break-categories.rkt" "private/sentence-break-categories.rkt")
(require (filtered-in (lambda (name) (and (string-prefix? name "unsafe-fx") (substring name 7))) racket/unsafe/ops))
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

(define-syntax define/range-checked
  (syntax-rules ()
    [(_ (name str i start end) body ...)
     (define (name str i [start 0] [end (string-length str)])
       (cond
         [(< start 0)
          (raise-range-error 'name "string" "starting " start str 0 (string-length str))]
         [(or (< end start) (> end (string-length str)))
          (raise-range-error 'name "string" "ending " end str start (unsafe-string-length str) 0)]
         [(or (< i start) (> i end))
          (raise-range-error 'name "string" "" i str start end)]
         [else (void)])
       body ...)]
    [(_ (name str start end) body ...)
     (define (name str [start 0] [end (string-length str)])
       (cond
         [(< start 0)
          (raise-range-error 'name "string" "starting " start str 0 (string-length str))]
         [(or (< end start) (> end (string-length str)))
          (raise-range-error 'name "string" "ending " end str start (unsafe-string-length str) 0)]
         [else (void)])
       body ...)]))

(define-syntax define/range-checked*
  (syntax-rules ()
    [(_ (name str start end more-optional-args ...) body ...)
     (define (name str [start 0] [end (string-length str)] more-optional-args ...)
       (cond
         [(< start 0)
          (raise-range-error 'name "string" "starting " start str 0 (string-length str))]
         [(or (< end start) (> end (string-length str)))
          (raise-range-error 'name "string" "ending " end str start (unsafe-string-length str) 0)]
         [else (void)])
       body ...)]))

(define-syntax (word-equals stx)
  (syntax-case stx (in is)
    [(_ val in . args)
     #`(or #,@(map (lambda (sym)
                     (let ([sym-name (syntax-e sym)])
                       (unless (memq sym-name word-break-properties)
                         (raise-syntax-error 'word-equals "symbol not in word-break-properties list" sym))
                       #`(eq? val '#,sym)))
                   (syntax->list #'args)))]
    [(_ val is sym)
     (let ([sym-name (syntax-e #'sym)])
       (unless (memq sym-name word-break-properties)
         (raise-syntax-error 'word-equals "symbol not in word-break-properties list" #'sym))
       #'(eq? val 'sym))]))

(define-syntax (sentence-equals stx)
  (syntax-case stx (in is)
    [(_ val in . args)
     #`(or #,@(map (lambda (sym)
                     (let ([sym-name (syntax-e sym)])
                       (unless (memq sym-name sentence-break-properties)
                         (raise-syntax-error 'sentence-equals "symbol not in sentence-break-properties list" sym))
                       #`(eq? val '#,sym)))
                   (syntax->list #'args)))]
    [(_ val is sym)
     (let ([sym-name (syntax-e #'sym)])
       (unless (memq sym-name sentence-break-properties)
         (raise-syntax-error 'sentence-equals "symbol not in sentence-break-properties list" #'sym))
       #'(eq? val 'sym))]))

;; Cache of break properties for a string
(struct cache (start vec str func))

(define (make-word-break-cache str start end)
  (cache start (for/vector #:length (- end start) ([ch (in-string str start end)]) (char-word-break-property ch)) str char-word-break-property))

(define (make-sentence-break-cache str start end)
  (cache start (for/vector #:length (- end start) ([ch (in-string str start end)]) (char-sentence-break-property ch)) str char-sentence-break-property))

(define (make-empty-cache str start end f)
  (cache start #f str f))

(define (cache-property-ref c i)
  (let ([vec (cache-vec c)])
    (if vec
        (unsafe-vector-ref vec (fx- i (cache-start c)))
        ((cache-func c) (unsafe-string-ref (cache-str c) i)))))

(define (string-skip/with-cache str pred? start end break-cache)
  (cond
    [(fx= start end) #f]
    [(pred? (unsafe-string-ref str start) (cache-property-ref break-cache start))
     (string-skip/with-cache str pred? (fx+ start 1) end break-cache)]
    [else start]))

(define (string-skip-right/with-cache str pred? start end break-cache)
  (let ([endm1 (fx- end 1)])
    (cond
      [(fx= start end) #f]
      [(pred? (unsafe-string-ref str endm1) (cache-property-ref break-cache endm1))
       (string-skip-right/with-cache str pred? start endm1 break-cache)]
      [else (fx- end 1)])))

(define (string-count/with-cache str pred? start end break-cache)
  (for/sum ([ch (in-string str start end)]
            [i (in-naturals start)]
            #:when (pred? ch (cache-property-ref break-cache i)))
    1))

;;; Graphemes

;; Create a sequence of substrings, one grapheme per element
(define/range-checked (in-graphemes str start end)
  (%in-graphemes (string->immutable-string str) start end))

(define (%in-graphemes str start end)
  (let ([end-pos (fx+ start (string-grapheme-span str start end))])
    (make-do-sequence
     (lambda ()
       (values
        (lambda (start-pos) (substring str start-pos end-pos))
        (lambda (pos)
          (let ([new-pos end-pos])
            (set! end-pos (fx+ end-pos (string-grapheme-span str end-pos end)))
            new-pos))
        start
        (lambda (pos) (fx< pos end))
        #f
        #f)))))

;; Split a string into a list of substrings, one grapheme per element
(define/range-checked (string-split-graphemes str start end)
  (sequence->list (%in-graphemes str start end)))

;; Same, returning immutable strings
(define/range-checked (string-split-graphemes/immutable str start end)
  (map unsafe-string->immutable-string! (sequence->list (%in-graphemes str start end))))

;; Return a list of the pairs of start and one past end indexes of each grapheme
(define/range-checked (string-grapheme-indexes str start end)
  (let loop [(i start)
             (indexes '())]
    (if (fx>= i end)
        (reverse indexes)
        (let ([j (string-grapheme-span str i end)])
          (loop (fx+ i j) (cons i indexes))))))

;;; Word breaks
;; TODO: Look into building a state machine to handle word boundaries instead of a huge cond

(define (AHLetter? cat) (word-equals cat in ALetter Hebrew_Letter))
(define (MidNumLetQ? cat) (word-equals cat in MidNumLet Single_Quote))

(define (Regional_Indicator? ch break)
  (if break
      (word-equals break is Regional_Indicator)
      (word-equals (char-word-break-property ch) is Regional_Indicator)))
(define (Regional_Indicator/EFZ? ch break)
  (if break
      (word-equals break in Regional_Indicator Extend Format ZWJ)
      (let ([cat (char-word-break-property ch)])
        (word-equals cat in Regional_Indicator Extend Format ZWJ))))

(define (EFZ? ch break)
  (if break
      (word-equals break in Extend Format ZWJ)
      (let ([cat (char-word-break-property ch)])
        (word-equals break in Extend Format ZWJ))))

(define (next-non-ef-idx str i end break-cache) (string-skip/with-cache str EFZ? i end break-cache))
(define (prev-non-ef-idx str i start break-cache) (string-skip-right/with-cache str EFZ? start i break-cache))

;; #t if there's a word break before the character at index i
(define/range-checked (string-word-break-at? str i start end)
  (%string-word-break-at? str i start end (make-empty-cache str start end char-word-break-property)))

(define (%string-word-break-at? str i start end bc)
  (if (or (fx= i start) (fx= i end))
      #t; WB1,2
      (let* ([before-ch (unsafe-string-ref str (fx- i 1))]
             [before (cache-property-ref bc (fx- i 1))]
             [after-ch (unsafe-string-ref str i)]
             [after (cache-property-ref bc i)])
        (cond
          [(and (word-equals before is CR) (word-equals after is LF)) #f] ; WB3
          [(or (word-equals before in Newline CR LF)
               (word-equals after in Newline CR LF)) #t] ; WB3a,b
          [(and (word-equals before is ZWJ) (char-extended-pictographic? after-ch)) #f] ; WB3c
          [(and (word-equals before is WSegSpace) (word-equals after is WSegSpace)) #f] ; WB3d
          [(word-equals after in Format Extend ZWJ) #f] ; WB4
          [else
           (let* ([before-idx (prev-non-ef-idx str i start bc)] ; WB4 ignore rules
                  [before-ch (if before-idx (unsafe-string-ref str before-idx) before-ch)]
                  [before (if (and before-idx (not (fx= before-idx (fx- i 1)))) (cache-property-ref bc before-idx) before)]
                  [after-idx (next-non-ef-idx str i end bc)]
                  [after-ch (and after-idx (unsafe-string-ref str after-idx))]
                  [after (if (and after-ch (not (fx= after-idx i))) (cache-property-ref bc after-idx) after)]
                  [next-before-idx (and before-idx (fx>= (fx- before-idx 1) start) (prev-non-ef-idx str before-idx start bc))]
                  [next-before-ch (and next-before-idx (unsafe-string-ref str next-before-idx))]
                  [next-before (and next-before-idx (cache-property-ref bc next-before-idx))]
                  [next-after-idx (and (fx< (fx+ after-idx 1) end) (next-non-ef-idx str (fx+ after-idx 1) end bc))]
                  [next-after-ch (and next-after-idx (unsafe-string-ref str next-after-idx))]
                  [next-after (and next-after-idx (cache-property-ref bc next-after-idx))])
             #;(printf "next-before-idx: ~S next-before-ch: ~S next-before: ~S~%before-idx: ~S before-ch: ~S before: ~S~%after-idx: ~S after-ch: ~S after: ~S~%next-after-idx: ~S next-after-ch: ~S next-after: ~S~%"
                     next-before-idx next-before-ch next-before before-idx before-ch before after-idx after-ch after next-after-idx next-after-ch next-after)
             (cond
               ;[(not (and before after)) #f]
               [(and (AHLetter? before) (AHLetter? after)) #f] ; WB5
               [(and (AHLetter? before)
                     (or (word-equals after is MidLetter) (MidNumLetQ? after))
                     (AHLetter? next-after)) #f] ; WB6
               [(and (AHLetter? next-before)
                     (or (word-equals before is MidLetter) (MidNumLetQ? before))
                     (AHLetter? after)) #f] ; WB7
               [(and (word-equals before is Hebrew_Letter) (word-equals after is Single_Quote)) #f] ; WB7a
               [(and (word-equals before is Hebrew_Letter)
                     (word-equals after is Double_Quote)
                     (word-equals next-after is Hebrew_Letter)) #f] ; WB7b
               [(and (word-equals next-before is Hebrew_Letter)
                     (word-equals before is Double_Quote)
                     (word-equals after is Hebrew_Letter)) #f] ; WB7c
               [(and (word-equals before is Numeric) (word-equals after is Numeric)) #f] ; WB8
               [(and (AHLetter? before) (word-equals after is Numeric)) #f] ; WB9
               [(and (word-equals before is Numeric) (AHLetter? after)) #f] ; WB10
               [(and (word-equals next-before is Numeric)
                     (or (word-equals before is MidNum) (MidNumLetQ? before))
                     (word-equals after is Numeric)) #f] ; WB11
               [(and (word-equals before is Numeric)
                     (or (word-equals after is MidNum) (MidNumLetQ? after))
                     (word-equals next-after is Numeric)) #f] ; WB12
               [(and (word-equals before is Katakana) (word-equals after is Katakana)) #f] ; WB13
               [(and (or (AHLetter? before) (word-equals before is Numeric) (word-equals before is Katakana) (word-equals before is ExtendNumLet))
                     (word-equals after is ExtendNumLet)) #f] ; WB13a
               [(and (word-equals before is ExtendNumLet)
                     (or (AHLetter? after) (word-equals after is Numeric) (word-equals after is Katakana))) #f] ; WB13b
               [(and (word-equals before is Regional_Indicator) (word-equals after is Regional_Indicator)
                     ; Find out how many Regional_Indicator characters exist before the point
                     (let ([first-non-ri (string-skip-right/with-cache str Regional_Indicator/EFZ? start after-idx bc)])
                       (if first-non-ri
                           (odd? (string-count/with-cache str Regional_Indicator? (fx+ first-non-ri 1) after-idx bc))
                           (odd? (string-count/with-cache str Regional_Indicator? start after-idx bc))))) #f] ; WB15, 16
               [else #t]))])))) ; WB999

;; Like string-grapheme-span but for word breaks
(define/range-checked (string-word-span str start end)
  (let* ([break-cache (make-word-break-cache str start end)]
         [first-break (for/first ([i (in-range (fx+ start 1) end)]
                                  #:when (%string-word-break-at? str i start end break-cache))
                       i)])
    (if first-break
        (fx- first-break start)
        (fx- end start))))

(define (skip-whitespace-only-segments str word-breaks)
  (cond
    [(fx< (length word-breaks) 2) '()]
    [(regexp-match? #px"^\\p{Z}+$" str (car word-breaks) (cadr word-breaks))
     (skip-whitespace-only-segments str (cdr word-breaks))]
    [else word-breaks]))

(define/range-checked* (in-words str start end #:skip-blanks? [skip-blanks? #f])
  (%in-words (string->immutable-string str) start end skip-blanks?))

(define (%in-words str start end skip-blanks?)
  (let* ([break-cache (make-word-break-cache str start end)]
         [initial-word-breaks (if skip-blanks?
                                  (skip-whitespace-only-segments str (%string-word-break-indexes str start end break-cache))
                                  (%string-word-break-indexes str start end break-cache))])
    (make-do-sequence
     (lambda ()
       (values
        (lambda (word-breaks) (substring str (car word-breaks) (cadr word-breaks)))
        (lambda (word-breaks) (if skip-blanks? (skip-whitespace-only-segments str (cdr word-breaks)) (cdr word-breaks)))
        initial-word-breaks
        (lambda (word-breaks) (fx>= (length word-breaks) 2))
        #f
        #f)))))

(define/range-checked* (string-split-words str start end #:skip-blanks? [skip-blanks? #f])
  (sequence->list (%in-words str start end skip-blanks?)))

(define/range-checked* (string-split-words/immutable str start end #:skip-blanks? [skip-blanks? #f])
  (map unsafe-string->immutable-string! (sequence->list (%in-words str start end skip-blanks?))))

(define/range-checked (string-word-break-indexes str start end)
  (%string-word-break-indexes str start end (make-word-break-cache str start end)))

(define (%string-word-break-indexes str start end bc)
  (for/list ([i (in-inclusive-range start end)]
             #:when (%string-word-break-at? str i start end bc))
    i))

;;; Sentence breaks

(define (ParaSep? cat)
  (sentence-equals cat in Sep CR LF))
(define (SATerm? cat)
  (sentence-equals cat in STerm ATerm))

(define (sEF? ch break)
  (if break
      (sentence-equals break in Extend Format)
      (let ([cat (char-sentence-break-property ch)])
        (sentence-equals cat in Extend Format))))

(define (next-non-sef-idx str i end break-cache) (string-skip/with-cache str sEF? i end break-cache))
(define (prev-non-sef-idx str i start break-cache) (string-skip-right/with-cache str sEF? start i break-cache))

(define (sEFSp? ch break)
  (if break
      (sentence-equals break in Extend Format Sp)
      (let ([cat (char-sentence-break-property ch)])
        (sentence-equals cat in Extend Format Sp))))

(define (sEFC? ch break)
  (if break
      (sentence-equals break in Extend Format Close)
      (let ([cat (char-sentence-break-property ch)])
        (sentence-equals break in Extend Format Close))))

(define (prev-skip-close-sp str i start break-cache)
  (let ([new-i (string-skip-right/with-cache str sEFSp? start (fx+ i 1) break-cache)])
    (and new-i (string-skip-right/with-cache str sEFC? start (fx+ new-i 1) break-cache))))

(define (prev-skip-close str i start break-cache)
  (string-skip-right/with-cache str sEFC? start i break-cache))

(define (notStuff? ch break)
  (if break
      (not (or (sentence-equals break in OLetter Upper Lower) (ParaSep? break) (SATerm? break)))
      (let ([cat (char-sentence-break-property ch)])
        (not (or (sentence-equals cat in OLetter Upper Lower) (ParaSep? cat) (SATerm? cat))))))

(define (next-skip-notseq str i end break-cache)
  (string-skip/with-cache str notStuff? i end break-cache))

(define/range-checked (string-sentence-break-at? str i start end)
  (%string-sentence-break-at? str i start end (make-empty-cache str start end char-sentence-break-property)))

(define (%string-sentence-break-at? str i start end bc)
  (if (or (fx= i start) (fx= i end))
      #t; SB1,2
      (let* ([before-ch (unsafe-string-ref str (fx- i 1))]
             [before (cache-property-ref bc (fx- i 1))]
             [after-ch (unsafe-string-ref str i)]
             [after (cache-property-ref bc i)])
        (cond
          [(and (sentence-equals before is CR) (sentence-equals after is LF)) #f] ; SB3
          [(ParaSep? before) #t] ; SB4
          [(sentence-equals after in Format Extend) #f] ; SB5
          [else
           (let* ([before-idx (prev-non-sef-idx str i start bc)] ; SB5 ignore rules
                  [before-ch (if before-idx (unsafe-string-ref str before-idx) before-ch)]
                  [before (if (and before-idx (not (fx= before-idx (fx- i 1)))) (cache-property-ref bc before-idx) before)]
                  [after-idx (next-non-sef-idx str i end bc)]
                  [after-ch (and after-idx (unsafe-string-ref str after-idx))]
                  [after (if (and after-idx (not (fx= after-idx i))) (cache-property-ref bc after-idx) after)]
                  [next-before-idx (and before-idx (fx>= (fx- before-idx 1) start) (prev-non-sef-idx str before-idx start bc))]
                  [next-before-ch (and next-before-idx (unsafe-string-ref str next-before-idx))]
                  [next-before (and next-before-idx (cache-property-ref bc next-before-idx))]
                  [before-skip-close-sp-idx (and before-idx (prev-skip-close-sp str before-idx start bc))]
                  [before-skip-close-sp-ch (and before-skip-close-sp-idx (unsafe-string-ref str before-skip-close-sp-idx))]
                  [before-skip-close-sp (and before-skip-close-sp-idx (cache-property-ref bc before-skip-close-sp-idx))])
             #;(printf "before-skip-close-sp-idx: ~S before-skip-close-sp-ch: ~S before-skip-close-sp: ~S~%next-before-idx: ~S next-before-ch: ~S next-before: ~S~%before-idx: ~S before-ch: ~S before: ~S~%after-idx: ~S after-ch: ~S after: ~S~%"
                       before-skip-close-sp-idx before-skip-close-sp-ch before-skip-close-sp next-before-idx next-before-ch next-before before-idx before-ch before after-idx after-ch after)
             (cond
               [(and (sentence-equals before is ATerm) (sentence-equals after is Numeric)) #f] ; SB6
               [(and (sentence-equals next-before in Upper Lower)
                     (sentence-equals before is ATerm)
                     (sentence-equals after is Upper)) #f] ; SB7
               [(and (sentence-equals before-skip-close-sp is ATerm)
                     (let ([after-idx (next-skip-notseq str after-idx end bc)])
                       (and after-idx (sentence-equals (cache-property-ref bc after-idx) is Lower)))) #f] ; SB8
               [(and (SATerm? before-skip-close-sp)
                     (or (sentence-equals after is SContinue) (SATerm? after))) #f] ; SB8a
               [(and (let ([before-close-idx (and before-idx (prev-skip-close str (fx+ before-idx 1) start bc))])
                       (and before-close-idx (SATerm? (cache-property-ref bc before-close-idx))))
                     (or (sentence-equals after in Close Sp) (ParaSep? after))) #f] ; SB9
               [(and (SATerm? before-skip-close-sp)
                     (or (sentence-equals after is Sp) (ParaSep? after))) #f] ; SB10
               [(if (ParaSep? before)
                    (let* ([before-skip-close-sp-idx (prev-skip-close-sp str before-idx start bc)]
                           [before-skip-close-sp (and before-skip-close-sp-idx (cache-property-ref bc before-skip-close-sp-idx))])
                      (SATerm? before-skip-close-sp))
                    (SATerm? before-skip-close-sp)) #t] ; SB11
               [else #f]))])))) ; SB998

(define/range-checked (in-sentences str start end)
  (%in-sentences (string->immutable-string str) start end))

(define (%in-sentences str start end)
  (let ([break-cache (make-sentence-break-cache str start end)])
    (make-do-sequence
     (lambda ()
       (values
        (lambda (sentence-breaks) (substring str (car sentence-breaks) (cadr sentence-breaks)))
        (lambda (sentence-breaks) (cdr sentence-breaks))
        (%string-sentence-break-indexes str start end break-cache)
        (lambda (sentence-breaks) (fx>= (length sentence-breaks) 2))
        #f
        #f)))))

(define/range-checked (string-split-sentences str start end)
  (sequence->list (%in-sentences str start end)))

(define/range-checked (string-split-sentences/immutable str start end)
  (map unsafe-string->immutable-string! (sequence->list (%in-sentences str start end))))

(define/range-checked (string-sentence-break-indexes str start end)
  (%string-sentence-break-indexes str start end (make-sentence-break-cache str start end)))

(define (%string-sentence-break-indexes str start end break-cache)
  (for/list ([i (in-inclusive-range start end)]
             #:when (%string-sentence-break-at? str i start end break-cache))
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
