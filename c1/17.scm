(define (isEven x)
    (= 0 (remainder x 2)))
(define (add a b)
    (+ a b))
(define (double x)
    (add x x))
(define (halve x)
    (/ x 2))

(define (reduce a b n)
    (if (= b 1)
        (add a n)
        (if (isEven b)
            (reduce (double a) (halve b) n)
            (reduce (double a) (halve (- b 1)) (add n a)))))

; i am not checking if a or b == 0.
; the algo can be faster if iterate through the smaller number.
(define (fast-mulitiply a b)
    (reduce a b 0))

(fast-mulitiply 2 30)

;   2 * 30
; = (2 * 2) * 15
; = (4 * 2) * 7 + 4
; = (8 * 2) * 3 + 12
; = (16 * 2) * 1 + 28
; = 32 + 28
; = 60 
