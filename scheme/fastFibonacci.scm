#lang scheme

(define (isEven x) (= (remainder x 2) 0))

(define (square x) (* x x))

(define (fib n)
  (define (fibIter a b x y i)
    (cond ((= i 0) b)
          ((isEven i) (fibIter a
                               b
                               (+ (square x) (square y))
                               (+ (* 2 x y) (square y))
                               (/ i 2)))
          (else (fibIter (+ (* b y) (* a x) (* a y))
                         (+ (* b x) (* a y))
                         x
                         y
                         (- i 1)))))
  (fibIter 1 0 0 1 n))

(fib 8)
