#lang racket
(define (new-if predicate then-clause else-clause) (cond (predicate then-clause)
        (else else-clause)))

(define (improve guess x) (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))
(define (square x) (* x x) )
(define (good-enough? guess x)
(< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x) (new-if (good-enough? guess x)
guess
(sqrt-iter (improve guess x)
x)))

(sqrt-iter 1 4)
; Т.к. применяется апликативный порядок выполнения, то в независимости от результата предиката будет 
; полностью выполняться оба вргумента функции new-if, что в данном случае привдет к бесконечной рекурсии.
; Специальная форма if ведет себя иначе. Расчитывает либо первый, либо второй аргумент в зависимости от предиката