(define (isEven x)
    (= 0 (remainder x 2)))

(define (square x)
    (* x x))

(define (expIter a b n)
    (cond ((= n 0) a)
        ((isEven n) (expIter a (square b) (/ n 2)))
        (else (expIter (* a b) b (- n 1)))))

; this is an iterative process
(define (fastExp b n)
    (expIter 1 b n))

(fastExp 2 10) ; 1024
(fastExp 2 3) ; 8
