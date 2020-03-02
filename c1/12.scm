(define (pascalElement row index)
  (cond ((> index (- row 1)) 0)
        ((= index 0) 1)
        ((< index 0) 0)
        ((= index (- row 1)) 1)
        (else (+ (pascalElement (- row 1) (- index 1))
                 (pascalElement (- row 1) index)))))

(pascalElement 5 2) ; 6
(pascalElement 5 3) ; 4
(pascalElement 6 3) ; 10
