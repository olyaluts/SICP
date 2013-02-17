#lang racket

(define (square x)
  (* x x))
(define (double a)
  (+ a a))

(define (halve a)
  (if (even? a)
      (/ a 2)
      (halve (- a 1)))
  )

(define (even? n)
  (= (remainder n 2) 0))

(define (* a b) 
  (cond ((= b 0) 0)
        ((= b 1) a)
        ((even? b) (double (* a (halve b)))) 
        (else (+ a (* a (- b 1))))
        ))

