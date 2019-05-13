#lang scheme

(define (expR x n)
  (if (= n 0)
      1
      (* x (expR x (- n 1)))))

(define (exp x n)
  (define (newIter a)
    (define (iter acc i)
      (if (= i 0)
          acc
          (iter (* acc a) (- i 1))))
    iter)
  ((newIter x) 1 n))

(define (square n) (* n n))
(define (isEven x) (= (remainder x 2) 0))

(define (fExp b n)
  (cond ((= n 0) 1)
        ((isEven n) (square (fExp b (/ n 2))))
        (else (* b (fExp b (- n 1))))))
(fExp 2 10)
