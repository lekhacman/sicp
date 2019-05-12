#lang scheme

(define (fib x)
  (define (fibIter a b i)
    (if (= i 2)
        (+ a b )
        (fibIter b (+ a b) (- i 1))))
  (if (< x 2)
      x
      (fibIter 0 1 x)))

(fib 8)

