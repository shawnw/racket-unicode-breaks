#lang racket
;;; Reads WordBreakProperty.txt and outputs racket source to ../unicode-breaks/private/word-break-categories.rkt
;;; Only needed when updating to a new Unicode version. (Maybe should make it run automatically when installing the package?)

(require (prefix-in is- data/integer-set) racket/syntax net/url "common.rkt")

(define word-break-properties-url (string->url "https://www.unicode.org/Public/14.0.0/ucd/auxiliary/WordBreakProperty.txt"))
(define word-break-properties-file (string->path "WordBreakProperty.txt"))
(define destination-source-file (string->path "../unicode-breaks/private/word-break-categories.rkt"))

(define (build-word-break-tables)
  (define tables (read-unicode-tables))
  (displayln "#lang racket/base")
  (displayln "; Auto-generated file. Do not edit")
  (pretty-write '(require srfi/43 racket/unsafe/ops))
  (pretty-write '(provide char-word-break-property word-break-properties))
  (pretty-write '(struct char-range (lower upper category) #:prefab))
  (pretty-write '(define (compare-range range ch)
                   (cond
                     [(unsafe-char<=? (char-range-lower range) ch (char-range-upper range)) 0]
                     [(unsafe-char<? (char-range-lower range) ch) -1]
                     [else 1])))
  (pretty-write `(define word-break-properties (quote ,(sort (cons 'Other (hash-keys tables)) symbol<?))))
  (define all-values (unicode-tables->vector tables))
  (pretty-write `(define word-break-table (quote ,all-values)))
  (pretty-write '(define (char-word-break-property ch)
                   (let ([idx (vector-binary-search word-break-table ch compare-range)])
                     (if idx
                         (char-range-category (unsafe-vector-ref word-break-table idx))
                         (quote Other))))))

(module+ main
  (create-source-file word-break-properties-url word-break-properties-file destination-source-file build-word-break-tables))
