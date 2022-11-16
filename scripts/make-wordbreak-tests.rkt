#lang racket

(require net/url)

(define wordbreak-tests-url (string->url "https://www.unicode.org/Public/14.0.0/ucd/auxiliary/WordBreakTest.txt"))

(define (make-tests)
  (displayln "#lang racket/base")
  (displayln "; Auto-generated file. Do not edit.")
  (displayln "(module+ test")
  (displayln "(require rackunit \"../main.rkt\")")
  (for ([line (in-lines)])
    (cond
      [(regexp-match #px"^(÷\\s+(?:[[:xdigit:]]{4,6}\\s+[÷×]\\s+)+)#\\s+(.*)" line)
       => (lambda (match-data)
            (let ([str (list->string
                        (map (lambda (hex-cp) (integer->char (string->number hex-cp 16)))
                             (regexp-match* #px"[[:xdigit:]]+" (second match-data))))]
                  [breaks (for/list ([break? (in-list (regexp-match* #px"[÷×]" (second match-data)))]
                                     [idx (in-naturals)]
                                     #:when (string=? break? "÷"))
                            idx)])
              (pretty-write `(test-equal? ,(format "~A: ~A" str (third match-data))
                                          (string-word-break-indexes ,str)
                                          (quote ,breaks)))))]
      [else (void)]))
  (displayln ")"))

(module+ main
  (call/input-url
   wordbreak-tests-url
   get-pure-port
   (lambda (in-port)
     (parameterize ([pretty-print-columns 80]
                    [current-input-port in-port])
       (with-output-to-file "../unicode-breaks/private/word-break-tests.rkt" #:exists 'replace
          make-tests)))))