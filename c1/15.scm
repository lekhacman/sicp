(define (cube x)
    (* x x x))
(define (p x)
    (- (* 3 x)
        (* 4 (cube x))))

(define (sine angle)
    (if (not (> (abs angle) 0.1))
        angle
        (p (sine (/ angle 3)))))

(sine(/ 3.14 2))

; Complexity log(angle/3) = log(angle)
