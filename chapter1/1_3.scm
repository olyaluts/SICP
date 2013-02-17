#lang racket
(define a 3)

(define (sq_sum a b)
  (+ (* a a) (* b b)))

(define (sicp1_3 x y z)
  (cond ((= (min x y z) x) (sq_sum y z))
        ((= (min x y z) y) (sq_sum x z))
        ((= (min x y z) z) (sq_sum x y))))

(sicp1_3 3 1 2)
