#! /usr/bin/env racket
#lang racket
(require "./main.rkt")
(require access)
(require pprint-all)

(! (strings-prefix-lines "[prefix] " "a\r\nb\nc\r")
   (strings-remove-last-newline !)
   )

(for ([i 10])
  (dump (between 0 10 10))
  )
