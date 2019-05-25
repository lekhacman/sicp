#lang scheme
(require "./gcd.scm")

(define (makeRat n d) 
  (let ((g (gcd n d)))
    (cons (/ n g) (/ d g))))

(define (numer rat) (car rat))
(define (denom rat) (cdr rat))

(define (addRat x y)
  (cons (+ (* (numer x) (denom y))
        (* (numer y) (denom x)))
     (* (denom x)
        (denom y))))
(define (subRat x y)
  (cons (- (* (numer x) (denom y))
        (* (numer y) (denom x)))
     (* (denom x)
        (denom y))))
(define (mulRat x y)
  (cons (* (numer x) (numer y))
     (* (denom x) (denom y))))
(define (divRat x y)
  (cons (* (numer x) (denom y))
     (* (denom x) (numer y))))

(define (printRat rat)
  (newline)
  (display (numer rat))
  (display "/")
  (display (denom rat)))

(define oneHalf (makeRat 1 2))
(printRat oneHalf)

(define oneThird (makeRat 1 3))
(printRat (addRat oneHalf oneThird))
(printRat (mulRat oneHalf oneThird))
(printRat (addRat oneThird oneThird))

