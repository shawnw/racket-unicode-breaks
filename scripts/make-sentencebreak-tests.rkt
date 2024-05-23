#lang racket

(require net/url "common.rkt")

(define sentencebreak-tests-url (string->url "https://www.unicode.org/Public/15.1.0/ucd/auxiliary/SentenceBreakTest.txt"))
(define sentencebreak-tests-file (string->path "SentenceBreakTest.txt"))
(define destination-source-file (string->path "../unicode-breaks/private/sentence-break-tests.rkt"))

(module+ main
  (parameterize ([test-func 'string-sentence-break-indexes])
    (create-source-file sentencebreak-tests-url sentencebreak-tests-file destination-source-file generate-tests)))
