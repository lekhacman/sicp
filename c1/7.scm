(define (square x)
    (* x x))
(define (improve x guess)
    (/ 
        (+ 
            (/ x guess) 
            guess) 
        2))

; (define (good-enough? guess x)
;     (> 0.001 (abs (- (square guess) x))))
(define (good-enough? x guess)
    (> 
        0.001 
        (abs (- 
            guess 
            (improve x guess)))))

(define (sqrt-iter x guess)
    (if (good-enough? x guess)
        guess
        (sqrt-iter x (improve x guess))))

(define (square-root x)
    (sqrt-iter 
        x
        (/ x 2)))
