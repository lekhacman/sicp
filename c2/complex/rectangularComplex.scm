#lang racket
(define (square x)
    (* x x))
; Rectangular representation of a complex number
(define (make-z-from-real-imag x y)
    (cons x y))

(define (real z)
    (car z))

(define (imagine z)
    (cdr z))

(define (magnitude z)
    (sqrt (+ (square (real z))
            (square (imagine z)))))

(define (angle z)
    (atan (imagine z) (real z)))

(define com (make-z-from-real-imag 3 4))

(display (real com))
(display " + i")
(display (imagine com))

(display " magnitude: ")
(display (magnitude com))

(display " angle: ")
(display (angle com))
