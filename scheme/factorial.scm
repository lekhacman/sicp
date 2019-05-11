#lang scheme

(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))
(factorial 6)

(define (factorialTail x)
  (define (factorial last next n)
    (if (= next n)
        (* last next)
        (factorial (* last next) (+ next 1) n)))
  (factorial 1 1 x))
(factorialTail 6)
