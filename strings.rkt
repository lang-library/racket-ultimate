#lang racket
(require access)

(define (strings-dos2unix lines)
  (! lines
     (string-replace ! "\r\n" "\n")
     )
  )

(define (strings-remove-last-newline s)
  (cond
    ((string-suffix? s "\r\n")
     (substring s 0 (- (string-length s) 2))
     )
    ((string-suffix? s "\r")
     (substring s 0 (- (string-length s) 1))
     )
    ((string-suffix? s "\n")
     (substring s 0 (- (string-length s) 1))
     )
    (else s)
    )
  )

(define (strings-prefix-lines prefix lines)
  (! lines
     #;(string-replace ! "\r\n" "\n")
     (strings-dos2unix !)
     (string-replace ! "\r" "\n")
     (string-split ! "\n")
     (map (lambda (x) (format "~a~a" prefix x)) !)
     (string-join ! "\n")
     (string-append ! "\n")
     )
  )

(provide
 strings-dos2unix
 strings-prefix-lines
 strings-remove-last-newline
 )
