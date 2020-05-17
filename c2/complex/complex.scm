#lang racket

(define (square x)
    (* x x))

; Rectangular representation of a complex number
(define (make-rectangular-z x y)
    (attach-tag "rectangular" (cons x y)))

(define (rec-real z)
    (car z))

(define (rec-imagine z)
    (cdr z))

(define (rec-magnitude z)
    (sqrt (+ (square (real z))
            (square (imagine z)))))

(define (rec-angle z)
    (atan (imagine z) (real z)))

; Polar representation of a complex number
(define (make-polar-z magnitude angle)
    (attach-tag "polar" (cons magnitude angle)))

(define (pol-magnitude z)
    (car z))

(define (pol-angle z)
    (cdr z))

(define (pol-real z)
    (* (magnitude z)
        (cos (angle z))))

(define (pol-imagine z)
    (* (magnitude z)
        (sin (angle z))))

; Types
(define (attach-tag type data)
    (cons type data))

(define (type-tag datum)
    (car datum))

(define (contents datum)
    (cdr datum))

(define (rectangular? complex)
    (= "rectangular" (type-tag complex)))

(define (polar? complex)
    (= "polar" (type-tag complex)))

; Complex arithmetic package
(define (make-complex-from-real-imag x y)
    (make-rectangular-z x y))

(define (make-complex-from-mag-ang r a)
    (make-polar-z r a))

(define (real complex)
    (cond ((rectangular? complex) 
                (rec-real complex))
        ((polar? complex) 
            (pol-real complex))
        (else (error "Unknown type: real" complex))))

(define (imagine complex)
    (cond ((rectangular? complex) 
                (rec-imagine complex))
        ((polar? complex) 
            (pol-imagine complex))
        (else (error "Unknown type: imagine" complex))))

(define (magnitude complex)
    (cond ((rectangular? complex) 
                (rec-magnitude complex))
        ((polar? complex) 
            (pol-magnitude complex))
        (else (error "Unknown type: magnitude" complex))))

(define (angle complex)
    (cond ((rectangular? complex) 
                (rec-angle complex))
        ((polar? complex) 
            (pol-angle complex))
        (else (error "Unknown type: angle" complex))))

; Programs that use complex number
(define (add-complex z1 z2)
    (make-complex-from-real-imag 
        (+ (real z1) (real z2))
        (+ (imagine z1) (imagine z2))))

(define (sub-complex z1 z2)
    (make-complex-from-real-imag 
        (- (real z1) (real z2))
        (- (imagine z1) (imagine z2))))

(define (mul-complex z1 z2)
    (make-complex-from-mag-ang 
        (* (magnitude z1) (magnitude z2))
        (+ (angle z1) (angle z2))))

(define (div-complex z1 z2)
    (make-complex-from-mag-ang 
        (/ (magnitude z1) (magnitude z2))
        (- (angle z1) (angle z2))))
