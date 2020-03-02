#lang racket

; the beginner student lang interpreter on DrRacket does not understand
; internal definition and block structure. That's why this file use #lang racket interpreter

(define (f n)
  (if (< n 3)
      n
      (+ (* 1 (f (- n 1)))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))
(f 7) ; 142


(define (fn n)
    (define (f-iter counter n1 n2 n3)
        (define result (+ (* 1 n1)
                          (* 2 n2)
                          (* 3 n3)))
        (if (= n counter)
            result
            (f-iter (+ counter 1) result n1 n2)))
    (if (< n 3)
        n
        (f-iter 3 2 1 0)))
(fn 7)
