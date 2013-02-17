#lang racket

(define (pascal_tr row col)
  (if (> col row) 0
    (if (= row col) 1
        (if (= col 1) 1
           (+ (pascal_tr (- row 1) (- col 1)) (pascal_tr (- row 1) col)
              
              )))))
