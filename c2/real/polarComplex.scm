#lang racket

; Polar representation of a complex number
(define (make-z-from-mag-ang magnitude angle)
    (cons magnitude angle))

(define (magnitude z)
    (car z))

(define (angle z)
    (cdr z))

(define (real z)
    (* (magnitude z)
        (cos (angle z))))

(define (imagine z)
    (* (magnitude z)
        (sin (angle z))))

(define com (make-z-from-mag-ang 5 .9))

(display (magnitude com))
(display "(cos")
(display (angle com))
(display " + i.sin")
(display (angle com))
(display ")")

(display " real: ")
(display (real com))

(display " imagine: ")
(display (imagine com))
