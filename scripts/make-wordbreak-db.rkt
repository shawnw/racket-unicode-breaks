#lang racket
;;; Reads WordBreakProperty.txt and outputs racket source to ../unicode-breaks/private/word-break-categories.rkt
;;; Only needed when updating to a new Unicode version. (Maybe should make it run automatically when installing the package?)

(require (prefix-in is- data/integer-set) racket/syntax net/url)

(define word-break-properties-url (string->url "https://www.unicode.org/Public/14.0.0/ucd/auxiliary/WordBreakProperty.txt"))

(struct char-range (lower upper category) #:prefab)

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
  (pretty-write '(provide char-word-break-property word-break-properties))
  (pretty-write '(struct char-range (lower upper category) #:prefab))
  (pretty-write '(define (compare-range range cp)
                       (cond
                         [(unsafe-char<=? (char-range-lower range) cp (char-range-upper range)) 0]
                         [(unsafe-char<? (char-range-lower range) cp) -1]
                         [else 1])))
  (pretty-write `(define word-break-properties (quote ,(sort (cons 'Other (hash-keys tables)) symbol<?))))
  (define all-values
    (for*/vector ;#:length (for/fold ([sum 0]) ([cps (in-hash-values tables)]) (+ sum (is-count cps)))
      ([(category cps) (in-hash tables)]
       [range (in-list (is-integer-set-contents cps))])
      (char-range (integer->char (car range)) (integer->char (cdr range)) category)))
  (vector-sort! all-values (lambda (a b) (char<? (char-range-upper a) (char-range-lower b))))
  (pretty-write `(define word-break-table (quote ,all-values)))
  (pretty-write '(define (char-word-break-property ch)
                   (let ([idx (vector-binary-search word-break-table ch compare-range)])
                     (if idx
                         (char-range-category (unsafe-vector-ref word-break-table idx))
                         (quote Other))))))

(module+ main
  (call/input-url
   word-break-properties-url
   get-pure-port
   (lambda (in-port)
     (parameterize ([pretty-print-columns 80]
                    [current-input-port in-port])
       (with-output-to-file "../unicode-breaks/private/word-break-categories.rkt" #:exists 'replace
         build-word-break-tables)))))
