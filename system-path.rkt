#lang racket
#;(require compatibility/defmacro) ;; compatibility-lib
(require access)

(define (::system-path:keys)
  '(
    home-dir
    pref-dir
    pref-file
    temp-dir
    init-dir
    init-file
    config-dir
    host-config-dir
    addon-dir
    cache-dir
    doc-dir
    desk-dir
    sys-dir
    exec-file
    run-file
    collects-dir
    host-collects-dir
    orig-dir
    )
  )

(define (::system-path:table)
  (define result (make-hasheq))
  (for/list ([key (::system-path:keys)])
    (define path (! (find-system-path key) (path->string !) (string-replace ! "\\" "/")))
    (hash-set! result key path)
    )
  result
  )

(define (::system-path:home-dir) (find-system-path 'home-dir))
(define (::system-path:pref-dir) (find-system-path 'pref-dir))
(define (::system-path:pref-file) (find-system-path 'pref-file))
(define (::system-path:temp-dir) (find-system-path 'temp-dir))
(define (::system-path:init-dir) (find-system-path 'init-dir))
(define (::system-path:init-file) (find-system-path 'init-file))
(define (::system-path:config-dir) (find-system-path 'config-dir))
(define (::system-path:host-config-dir) (find-system-path 'host-config-dir))
(define (::system-path:addon-dir) (find-system-path 'addon-dir))
(define (::system-path:cache-dir) (find-system-path 'cache-dir))
(define (::system-path:doc-dir) (find-system-path 'doc-dir))
(define (::system-path:desk-dir) (find-system-path 'desk-dir))
(define (::system-path:sys-dir) (find-system-path 'sys-dir))
(define (::system-path:exec-file) (find-system-path 'exec-file))
(define (::system-path:run-file) (find-system-path 'run-file))
(define (::system-path:collects-dir) (find-system-path 'collects-dir))
(define (::system-path:host-collects-dir) (find-system-path 'host-collects-dir))
(define (::system-path:orig-dir) (find-system-path 'orig-dir))

(define (::system-path:run-file->string) (path->string (::system-path:run-file)))

(provide
 ::system-path:keys
 ::system-path:table
 ::system-path:home-dir
 ::system-path:pref-dir
 ::system-path:pref-file
 ::system-path:temp-dir
 ::system-path:init-dir
 ::system-path:init-file
 ::system-path:config-dir
 ::system-path:host-config-dir
 ::system-path:addon-dir
 ::system-path:cache-dir
 ::system-path:doc-dir
 ::system-path:desk-dir
 ::system-path:sys-dir
 ::system-path:exec-file
 ::system-path:run-file
 ::system-path:collects-dir
 ::system-path:host-collects-dir
 ::system-path:orig-dir

 ::system-path:run-file->string
 )
