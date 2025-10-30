#lang racket

(require net/url "common.rkt")

(define wordbreak-tests-url (string->url "https://www.unicode.org/Public/16.0.0/ucd/auxiliary/WordBreakTest.txt"))
(define wordbreak-tests-file (string->path "WordBreakTest.txt"))
(define destination-source-file (string->path "../unicode-breaks/private/word-break-tests.rkt"))

(module+ main
  (parameterize ([test-func 'string-word-break-indexes])
    (create-source-file wordbreak-tests-url wordbreak-tests-file destination-source-file generate-tests)))
