#lang scribble/manual

@title{Tools for Racket}

@author[(author+email "Ultimate Language Project" "the.ultimate.lang@gmail.com")]

@defmodule[tools]

@table-of-contents[]

@section{Example and usage}

@codeblock|{
#! /usr/bin/env racket
#lang racket
(require ultimate)
(require access)
(require pprint-all)

(! (strings-prefix-lines "[prefix] " "a\r\nb\nc\r")
   (strings-remove-last-newline !)
   )

(for ([i 10])
  (dump (between 0 10 10))
  )
}|
