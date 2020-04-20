#lang racket

(define (make-rat n d)
    (if (< d 0)
        (cons (- 0 n) (- 0 d))
        (cons n d)))
(define (numer x)
    (car x))
(define (denom x)
    (cdr x))
    
(define (print-rat x)
    (newline)
    (display (numer x))
    (display "/")
    (display (denom x)))

(define rat (make-rat 2 3))
(print-rat rat)

(print-rat (make-rat -3 -4))
(print-rat (make-rat 4 -5))
(print-rat (make-rat -5 6))
