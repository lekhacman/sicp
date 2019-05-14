#lang scheme

(define (multiplyR a b)
  (if (= b 0)
      0
      (+ a (multiplyR a (- b 1)))))

(define (isEven x) (= (remainder x 2) 0))

(define (multiply a b)
  (cond ((= b 0) 0)
        ((isEven b) (multiply (+ a a) (/ b 2)))
        (else (+ a (multiply a (- b 1))))))

(multiply 3 9)
