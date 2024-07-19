#lang racket
(require ffi/unsafe
         ffi/unsafe/define
         ffi/winapi)

(provide MessageBoxW)

;int MessageBoxW(
;  [in, optional] HWND    hWnd,
;  [in, optional] LPCWSTR lpText,
;  [in, optional] LPCWSTR lpCaption,
;  [in]           UINT    uType
;);

(define user32-lib
  (cond
    [(eq? 'windows (system-type))
     (ffi-lib "user32.dll")]
    [else #f]))

(define-ffi-definer define-user32 user32-lib)

(define-user32 MessageBoxW (_fun #:abi winapi _pointer _string/utf-16 _string/utf-16 _uint -> _int))

;#(MessageBoxW #f "メッセージ©" "タイトル©" 0)

(define (msgbox msg [title "Message"])
  (set! msg (format "~a" msg))
  (set! title (format "~a" title))
  (printf "[msgbox] ~a: ~a\n" title msg)
  (cond
    [(eq? 'windows (system-type))
     #;(printf "[msgbox] ~a: ~a\n" title msg)
     (MessageBoxW #f msg title 0)
     (void)
     ]
    #;[else
       (printf "[msgbox] ~a: ~a\n" title msg)
       ]
    )
  (void)
  )

(provide msgbox)
