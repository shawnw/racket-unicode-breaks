#lang info
(define collection 'multi)
(define deps '("base" "srfi-lib" ("racket" #:version "8.16")))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define pkg-desc "Implementations of Unicode Annex #29 break algorithms")
(define version "0.16") ; Major.Unicode-Version.Minor
(define pkg-authors '(shawnw))
(define license '(Apache-2.0 OR MIT))
(define test-omit-paths '(#rx"scripts" #rx"scribblings"))
