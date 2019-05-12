#lang scheme
(define (square x) (* x x))

(define (abs x) (if (< x 0) (* x -1) x))

(define (average x y) (/ (+ x y) 2))

(define (sqrt x)
  (define (goodEnough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (sqrtIter guess x)
    (if (goodEnough? guess x)
        guess
        (sqrtIter (improve guess x) x)))
  (sqrtIter x x))


(sqrt 2.0)

