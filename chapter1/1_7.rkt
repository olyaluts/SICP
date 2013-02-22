#lang racket

(define (sqrt-iter guess prevguess x)
  (if (good-enough? guess prevguess)
      guess
      (sqrt-iter (improve guess x) guess x)))

(define (improve guess x) 
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prevguess)
  (if (< (abs guess) 0.001) #t
      (< (/ (abs(- guess prevguess)) guess)
         0.001)))

(define (square x) (* x x))

(define (sqrt x)
  (if (< x 0) #f
      (sqrt-iter 1.0 0.0 x)))

(sqrt 1000000)
