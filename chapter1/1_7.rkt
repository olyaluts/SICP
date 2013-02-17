#lang racket

(define (sqrt-iter guess x) 
  (if (good-enough? (improve guess x) guess)
      (improve guess x)
      (sqrt-iter (improve guess x) x)))

(define (improve guess x) (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prevguess)
  (< (abs(- guess prevguess)) 0.001))


(define (square x) (* x x))


(define (sqrt x) (sqrt-iter 1.0 x))