; This is a recursive process because `inc` is defered until `dec` returns its result
(define (+ a b)
  (if (= a 0) 
      b 
      (inc (+ (dec a) b))))

; This is an iterative process
(define (+ a b)
  (if (= a 0) 
      b 
      (+ (dec a) (inc b))))
