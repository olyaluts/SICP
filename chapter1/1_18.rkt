#lang racket
(define (square x)
  (* x x))
(define (double a)
  (+ a a))

(define (halve a)
  (if (even? a)
      (/ a 2)
      (halve (- a 1))
   ))

(define (even? n)
  (= (remainder n 2) 0))

(define (* a b)
  (define (iter a b c)
    (cond ((= b 0) c)
          ((even? b) (iter (double a) (halve b) c)) 
          (else (iter a (- b 1) (+ c a)))
        ))
  (iter a b 0)
  )

