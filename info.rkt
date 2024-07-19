#lang info
(define collection "ultimate")
(define name "ultimate: Tools for Racket")
(define blurb '("Tools for Racket."))
(define categories '(devtools))
(define can-be-loaded-with 'all)
(define required-core-version "5.1.1")
(define version "1.0")
(define repositories '("4.x"))
(define scribblings '(("ultimate.scrbl")))
(define primary-file "main.rkt")
(define release-notes '((p "First release")))
(define deps '(
               "reprovide-lang-lib"
               "access"
               "base"
               "compatibility-lib"
               "pprint-all"
               ))
(define build-deps '("racket-doc"
                     "scribble-lib"))
