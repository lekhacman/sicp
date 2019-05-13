#lang scheme

(define (expR x n)
  (if (= n 0)
      1
      (* x (expR x (- n 1)))))
(expR 2 10)

(define (exp x n)
  (define (iter acc a i)
    (if (= i 0)
        acc
        (iter (* acc a)
              a
              (- i 1))))
  (iter 1 x n))
(exp 2 10)
