(define (square x)
    (* x x))
(define (improve x guess)
    (/ 
        (+
            (/
                x
                (square guess))
            (* 2 guess))
        3))

(define (good-enough? x guess)
    (> 
        0.001 
        (abs (- 
            guess 
            (improve x guess)))))

(define (crt-iter x guess)
    (if (good-enough? x guess)
        guess   
        (crt-iter x (improve x guess))))

(define (cube-root x)
    (crt-iter x (/ x 3)))

(cube-root 8)