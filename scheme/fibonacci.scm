#lang scheme

(define (fib x)
  (define (fibIter a b i n)
    (if (= i n)
        (+ a b )
        (fibIter b (+ a b) (+ i 1) n)))
  (if (< x 2)
      x
      (fibIter 0 1 2 x)))

(fib 9)

