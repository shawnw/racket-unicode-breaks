#lang racket
;;; Reads SentenceBreakProperty.txt and outputs racket source to ../unicode-breaks/private/sentence-break-categories.rkt
;;; Only needed when updating to a new Unicode version. (Maybe should make it run automatically when installing the package?)

(require (prefix-in is- data/integer-set) racket/syntax net/url "common.rkt")

(define sentence-break-properties-url (string->url "https://www.unicode.org/Public/15.1.0/ucd/auxiliary/SentenceBreakProperty.txt"))
(define sentence-break-properties-file (string->path "SentenceBreakProperty.txt"))
(define destination-source-file (string->path "../unicode-breaks/private/sentence-break-categories.rkt"))

(define (build-sentence-break-tables)
  (define tables (read-unicode-tables))
  (displayln "#lang racket/base")
  (displayln "; Auto-generated file. Do not edit")
  (pretty-write '(require srfi/43 racket/unsafe/ops))
  (pretty-write '(provide char-sentence-break-property sentence-break-properties))
  (pretty-write '(struct char-range (lower upper category) #:prefab))
  (pretty-write '(define (compare-range range ch)
                   (cond
                     [(unsafe-char<=? (char-range-lower range) ch (char-range-upper range)) 0]
                     [(unsafe-char<? (char-range-upper range) ch) -1]
                     [else 1])))
  (pretty-write `(define sentence-break-properties (quote ,(sort (cons 'Other (hash-keys tables)) symbol<?))))
  (define all-values (unicode-tables->vector tables))
  (pretty-write `(define sentence-break-table (quote ,all-values)))
  (pretty-write '(define (char-sentence-break-property ch)
                   (let ([idx (vector-binary-search sentence-break-table ch compare-range)])
                     (if idx
                         (char-range-category (unsafe-vector-ref sentence-break-table idx))
                         (quote Other))))))

(module+ main
  (create-source-file sentence-break-properties-url sentence-break-properties-file destination-source-file build-sentence-break-tables))
