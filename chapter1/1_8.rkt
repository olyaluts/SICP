#lang racket

(define (cube-root-iter guess prevguess x)
  (if (good-enough? guess prevguess)
      guess
      (cube-root-iter (improve guess x) guess x)))

(define (improve guess x) 
  (/ (+ (/ x (square guess)) (* 2 guess))
     3.0))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prevguess)
 (if (< (abs guess) 0.001) #t
     (< (/ (abs (- guess prevguess))
           (abs guess))
     0.001)))


(define (square x) (* x x))
(define (cube x) (* x x x))


(define (cube-root x) (cube-root-iter 1.0 0.0 x))
(cube-root 0)
