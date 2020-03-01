(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))
(test 0 (p))

; if program runs into an infinite loop, the interpreter is using applicative-evaluation,
; otherwise, if it returns 0 then it's normal-evaluation.