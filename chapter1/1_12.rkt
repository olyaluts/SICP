#lang racket

(define (pascal_tr row col)
  (cond ((> col row) 0)
        ((= row col) 1)
        ((= col 1) 1)
        (else (+ (pascal_tr (- row 1) (- col 1)) 
                 (pascal_tr (- row 1) col)))))
              

 

(pascal_tr 1 1)