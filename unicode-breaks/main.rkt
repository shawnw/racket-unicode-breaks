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

(define (AHLetter? ch) (or (ALetter? ch) (Hebrew_Letter? ch)))
(define (MidNumLetQ? ch) (or (MidNumLet? ch) (Single_Quote? ch)))

;; Like string-grapheme-span but for word breaks
(define (string-word-span str start [end (string-length str)])
  (let loop ([i start]
             [len 0])
    (cond
      [(= i end) len] ; WB1
      [(= (- end i) 1) (+ len 1)] ; WB2
      [else
       (let ([ch (string-ref str i)]
             [next (string-ref str (+ i 1))])
         (cond
           [(and (CR? ch) (LF? next)) (+ len 2)] ; WB3
           [(and (or (Newline? ch) (CR? ch) (LF? ch))
                 (or (Newline? next) (CR? next) (LF? next))) (+ len 1)] ; WB3a, b
           [(and (ZWJ? ch) (char-extended-pictographic? next))
            (loop (+ i 1) (+ len 1))] ; WB3c
           [(and (WSegSpace? ch) (WSegSpace? next))
            (loop (+ i 1) (+ len 1))] ; WB3d
           [(or (Extend? next) (Format? next) (ZWJ? next))
            (loop (string-skip str (lambda (ch) (or (Extend? ch) (Format? ch) (ZWJ? ch))) (+ i 1) end) (+ len 1))] ; WB4
           [(and (AHLetter? ch) (AHLetter? next))
            (loop (+ i 1) (+ len 1))] ; WB5
           [(and (AHLetter? ch)
                 (or (MidLetter? next) (MidNumLetQ? next))
                 (and (< (+ i 2) end) (AHLetter? (string-ref str (+ i 2)))))
            (loop (+ i 2) (+ len 2))] ; WB6, 7
           [(and (Hebrew_Letter? ch) (Single_Quote? next))
            (loop (+ i 1) (+ len 1))] ; WB7a
           [(and (Hebrew_Letter? ch)
                 (Double_Quote? next)
                 (and (< (+ i 2) end) (Hebrew_Letter? (string-ref str (+ i 2)))))
            (loop (+ i 2) (+ len 2))] ; WB7b, c
           [(and (Numeric? ch) (Numeric? next))
            (loop (+ i 1) (+ len 1))] ; WB8
           [(and (AHLetter? ch) (Numeric? next))
            (loop (+ i 1) (+ len 1))] ; WB9
           [(and (Numeric? ch) (AHLetter? next))
            (loop (+ i 1) (+ len 1))] ; WB10
           [(and (Numeric? ch)
                 (or (MidNum? next) (MidNumLetQ? next))
                 (and (< (+ i 2) end) (Numeric? (string-ref str (+ i 2)))))
            (loop (+ i 2) (+ len 2))] ; WB11, 12
           [(and (Katakana? ch) (Katakana? next))
            (loop (+ i 1) (+ len 1))] ; WB13
           [(and (or (AHLetter? ch) (Numeric? ch) (Katakana? ch) (ExtendNumLet? ch))
                 (ExtendNumLet? next))
            (loop (+ i 1) (+ len 1))] ; WB13a
           [(and (ExtendNumLet? ch)
                 (or (AHLetter? next) (Numeric? next) (Katakana? next)))
            (loop (+ i 1) (+ len 1))] ; WB13b
           [(and (= i start) (Regional_Indicator? ch))
            (let ([ri-end (string-skip Regional_Indicator? str i end)])
              (loop ri-end (+ len (- ri-end i))))] ; WB15
           [(and (not (Regional_Indicator? ch))
                 (Regional_Indicator? next))
            (let ([ri-end (string-skip Regional_Indicator? str (+ i 1) end)])
              (loop ri-end (+ len (- ri-end i))))] ; WB16
           [else (+ len 1)]))])))
  
(define (in-words str [start 0] [end (string-length str)] #:skip-blanks? [skip-blanks? #f])
  (let ([end-pos (+ start (string-word-span str start end))])
    (make-do-sequence
     (lambda ()
       (values
        (lambda (start-pos) (substring str start-pos end-pos))
        (lambda (pos)
          (let loop ([new-pos end-pos])
            (set! end-pos (+ end-pos (string-word-span str end-pos end)))
            (if (and skip-blanks? (regexp-match? #px"^\\p{Z}+$" str new-pos end-pos))
                (loop end-pos)
                new-pos)))
        start
        (lambda (pos) (< pos end))
        #f
        #f)))))

(define (string-split-words str [start 0] [end (string-length str)] #:skip-blanks? [skip-blanks? #f])
  (sequence->list (in-words str start end #:skip-blanks? skip-blanks?)))

(define (string-split-words/immutable str [start 0] [end (string-length str)] #:skip-blanks? [skip-blanks? #f])
  (map unsafe-string->immutable-string! (sequence->list (in-words str start end #:skip-blanks? skip-blanks?))))

(define (string-word-break-indexes str [start 0] [end (string-length str)])
  (let loop ([i start]
             [indexes '()])
    (if (>= i end)
        (cdr (reverse indexes))
        (loop (+ i (string-word-span str i end)) (cons i indexes)))))
  
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
  (test-equal? "words with spaces"
               (string-split-words  "The quick (“brown”) fox can’t jump 32.3 feet, right?" #:skip-blanks? #f)
               '("The" " " "quick" " " "(" "“" "brown" "”" ")" " " "fox" " " "can’t" " " "jump" " " "32.3" " " "feet" "," " " "right" "?"))
  (test-equal? "words without spaces"
               (string-split-words  "The quick (“brown”) fox can’t jump 32.3 feet, right?" #:skip-blanks? #t)
               '("The" "quick" "(" "“" "brown" "”" ")" "fox" "can’t" "jump" "32.3" "feet" "," "right" "?"))
  )
