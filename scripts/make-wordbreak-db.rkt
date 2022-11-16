#lang racket
;;; Reads WordBreakProperty.txt and outputs racket source to ../unicode-breaks/private/word-break-categories.rkt
;;; Only needed when updating to a new Unicode version. (Maybe should make it run automatically when installing the package?)

(require (prefix-in is- data/integer-set) racket/syntax net/url)

(define word-break-properties-url (string->url "https://www.unicode.org/Public/14.0.0/ucd/auxiliary/WordBreakProperty.txt"))

(define (build-word-break-tables)
  (define tables
    (for/fold ([tables (hasheq)])
              ([line (in-lines)])
      (cond
        [(regexp-match #px"^([[:xdigit:]]{4,6})\\s+;\\s+([[:word:]]+)" line)
         => (lambda (match-data)
              (hash-update tables (string->symbol (third match-data))
                           (lambda (cps) (is-union cps (is-make-range (string->number (second match-data) 16))))
                           is-make-range))]
        [(regexp-match #px"^([[:xdigit:]]{4,6})\\.\\.([[:xdigit:]]{4,6})\\s+;\\s+([[:word:]]+)" line)
         => (lambda (match-data)
              (hash-update tables (string->symbol (fourth match-data))
                           (lambda (cps) (is-union cps (is-make-range (string->number (second match-data) 16) (string->number (third match-data) 16))))
                           is-make-range))]
        [else tables])))
  (define (make-predicate name) (format-symbol "~A?" name))
  (displayln "#lang racket/base")
  (displayln "; Auto-generated file. Do not edit")
  (pretty-write '(require srfi/43 racket/unsafe/ops))
  (pretty-write `(provide ,@(map make-predicate (hash-keys tables #t))))
  (pretty-write '(define (search-range range cp)
                   (cond
                     [(unsafe-fx<= (car range) cp (cdr range)) 0]
                     [(unsafe-fx< (car range) cp) -1]
                     [else 1])))
  (pretty-write '(define (search-chars c1 c2)
                   (cond
                     [(unsafe-char<? c1 c2) -1]
                     [(unsafe-char=? c1 c2) 0]
                     [else 1])))
  (for ([category (in-list (hash-keys tables #t))])
    (let* ([cps (hash-ref tables category)]
           [len (is-count cps)])
      (cond
        ; If a category has a single character, test it directly.
        [(= len 1)
         (pretty-write `(define (,(make-predicate category) ch) (unsafe-char=? ch ,(integer->char (is-get-integer cps)))))]
        ; Same for a single range pair
        [(= (length (is-integer-set-contents cps)) 1)
         (let ([range (is-integer-set-contents cps)])
           (pretty-write `(define (,(make-predicate category) ch) (unsafe-char<=? ,(integer->char (caar range)) ch ,(integer->char (cdar range))))))] 
        ; 20 or fewer codepoints, put them all in a vector and just use a linear search
        [(<= len 20)
         (pretty-write `(define ,(format-symbol "~A-table" category)
                          ,(list->vector (is-foldr (lambda (cp acc) (cons (integer->char cp) acc)) '() cps))))
         (pretty-write `(define (,(make-predicate category) ch)
                          (vector-index (lambda (ch2) (unsafe-char=? ch ch2)) ,(format-symbol "~A-table" category))))]
        ; 100 or fewer codepoints, put them all in a vector and binary search
        [(<= len 100)
         (pretty-write `(define ,(format-symbol "~A-table" category)
                          ,(list->vector (is-foldr (lambda (cp acc) (cons (integer->char cp) acc)) '() cps))))
         (pretty-write `(define (,(make-predicate category) ch)
                          (vector-binary-search ,(format-symbol "~A-table" category) ch search-chars)))]
        ; Otherwise use a vector of range pairs
        [else
         (pretty-write `(define ,(format-symbol "~A-table" category) ,(list->vector (is-integer-set-contents cps))))
         (pretty-write `(define (,(make-predicate category) ch)
                          (vector-binary-search ,(format-symbol "~A-table" category) (unsafe-char->integer ch) search-range)))]))))

(module+ main
  (call/input-url
   word-break-properties-url
   get-pure-port
   (lambda (in-port)
     (parameterize ([pretty-print-columns 80]
                    [current-input-port in-port])
       (with-output-to-file "../unicode-breaks/private/word-break-categories.rkt" #:exists 'replace
         build-word-break-tables)))))
