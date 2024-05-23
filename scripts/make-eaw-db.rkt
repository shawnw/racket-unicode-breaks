#lang racket
;;; Reads EastAsianWidth.txt and outputs racket source to ../unicode-breaks/private/eaw-categories.rkt
;;; Only needed when updating to a new Unicode version. (Maybe should make it run automatically when installing the package?)

(require (prefix-in is- data/integer-set) racket/syntax net/url "common.rkt")

(define word-break-properties-url (string->url "https://www.unicode.org/Public/15.1.0/ucd/EastAsianWidth.txt"))
(define word-break-properties-file (string->path "EastAsianWidth.txt"))
(define destination-source-file (string->path "../unicode-breaks/private/eaw-categories.rkt"))

(define (build-word-break-tables)
  (define tables (read-unicode-tables))
  (displayln "#lang racket/base")
  (displayln "; Auto-generated file. Do not edit")
  (pretty-write '(require srfi/43 racket/unsafe/ops))
  (pretty-write '(provide char-east-asian-width-property east-asian-width-properties))
  (pretty-write '(struct char-range (lower upper category) #:prefab))
  (pretty-write '(define (compare-range range ch)
                   (cond
                     [(unsafe-char<=? (char-range-lower range) ch (char-range-upper range)) 0]
                     [(unsafe-char<? (char-range-upper range) ch) -1]
                     [else 1])))
  (pretty-write `(define east-asian-width-properties (quote ,(sort (hash-keys tables) symbol<?))))
  (define all-values (unicode-tables->vector tables))
  (pretty-write `(define east-asian-width-table (quote ,all-values)))
  (pretty-write '(define (char-east-asian-width-property ch)
                   (let ([idx (vector-binary-search east-asian-width-table ch compare-range)])
                     (cond
                       (idx (char-range-category (unsafe-vector-ref east-asian-width-table idx)))
                       ((or
                         (unsafe-char<=? #\u3400 ch #\u4DBF)
                         (unsafe-char<=? #\u4E00 ch #\u9FFF)
                         (unsafe-char<=? #\uF900 ch #\uFAFF)
                         (unsafe-char<=? #\U20000 ch #\U2FFFD)
                         (unsafe-char<=? #\U30000 ch #\U3FFFD))
                        (quote W))
                       (else
                         (quote N)))))))

(module+ main
  (create-source-file word-break-properties-url word-break-properties-file destination-source-file build-word-break-tables))
