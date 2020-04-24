#lang racket

; Exercise 2.2: Consider the problem of representing line segments 
; in a plane. Each segment is represented as a pair of points: 
; a starting point and an ending point. Define a constructor make-segment 
; and selectors start-segment and end-segment that define the 
; representation of segments in terms of points. Furthermore, a point can be 
; represented as a pair of numbers: the x coordinate and the y coordinate. 
; Accordingly, specify a constructor make-point and selectors x-point and 
; y-point that define this representation. Finally, using your selectors and 
; constructors, define a procedure midpoint-segment that takes a 
; line segment as argument and returns its midpoint (the point whose 
; coordinates are the average of the coordinates of the endpoints). 
; To try your procedures, you’ll need a way to print points:

; Math
(define (average x y)
    (/ (+ x y) 2))

; Point constructor
(define (make-point x y)
    (cons x y))

; Point operations
(define (x-point point)
    (car point))
(define (y-point point)
    (cdr point))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

; Segment constructor
(define (make-segment start end)
    (cons start end))

; Segment operations
(define (start-segment x)
    (car x))
(define (end-segment x)
    (cdr x))
(define (x-start segment)
    (x-point (start-segment segment)))
(define (x-end segment)
    (x-point (end-segment segment)))
(define (y-start segment)
    (y-point (start-segment segment)))
(define (y-end segment)
    (y-point (end-segment segment)))

(define (midpoint segment)
    (make-point 
        (average (x-start segment) (x-end segment))
        (average (y-start segment) (y-end segment))))

; Test
; (define x (make-point 1 2))
; (define y (make-point 3 4))
; (define seg (make-segment x y))

; (define mid (midpoint seg))
; (print-point mid)

; Exercise 2.3: Implement a representation for rectangles in a plane. 
; (Hint: You may want to make use of Exercise 2.2.) In terms of your 
; constructors and selectors, create procedures that compute the perimeter 
; and the area of a given rectangle. Now implement a different representation 
; for rectangles. Can you design your system with suitable abstraction 
; barriers, so that the same perimeter and area procedures will work using 
; either representation?

; Rectangle Operations
(define (perimeter rec)
    (* 2 
        (+ (length rec) 
            (width rec))))
(define (area rec)
    (* (length rec) 
        (width rec)))

; First rectangle constructor
; (define (rectangle length width)
;     (cons length width))
; (define (length x)
;     (car x))
; (define (width x)
;     (cdr x))

; 2-Ds rectangle constructor
(define (my-rectangle l-segment w-segment)
    (cons l-segment w-segment))

(define (length rec)
    (length-segment (car rec)))
(define (width rec)
    (length-segment (cdr rec)))

(define (length-segment seg)
    (sqrt (+ (expt (- (x-start seg)
                        (x-end seg)) 
                    2)
            (expt (- (y-start seg)
                        (y-end seg)) 
                    2))))
; y
; ^
; |
;4|_____________________
; |                    |
; |                    |
; |                    |
; |____________________|_______________>x
; 0                    8
(define my-width (make-segment (make-point 0 0) 
                                (make-point 0 4)))
(define my-length (make-segment (make-point 0 4) 
                                (make-point 8 4)))
(define my-rec (my-rectangle my-length my-width))
(display (perimeter my-rec))
(newline)
(display (area my-rec))
