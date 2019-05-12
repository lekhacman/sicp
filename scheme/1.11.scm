#lang scheme
(define (f n)
  (if (< n 3)
      n
      (+ (* 1 (f (- n 1)))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))
(f 7)


(define (fn n)
  (define (fnSum a b c)
    (+ a
       (* 2 b)
       (* 3 c)))
  (define (iter x y z i)
    (if (= i 3)
        (fnSum z y x)
        (iter y
              z
              (fnSum z y x)
              (- i 1))))
  (if (< n 3)
      n
      (iter 0 1 2 n)))
(fn 7)
