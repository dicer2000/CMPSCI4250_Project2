#lang racket

;; Brett Huffman
;; Test Functions 2
;; CMPSCI 4250
;; June 30, 2021
;;
;; -----------------------------------------------------------------------------

;;  This one check for equal lists (without lists within lists)
(define(equalsimp list1 list2)
  (cond
   ((null? list1) (null? list2))
   ((null? list2) #f)
   
   ((eqv? (car list1) (car list2))
     (equalsimp (cdr list1) (cdr list2)))

   (else #f)
   )
  )

(equalsimp `(1 2 3) `(1 2 3))


;; This one checks for equal lists going recursive on lists within lists
(define (equalLists list1 list2)
  (cond
    ((not (list? list1)) (eq? list1 list2))
    ((not (list? list2)) #f)
    ((null? list1) (null? list2))
    ((null? list2) #f)
    ((equalLists(car list1) (car list2))
     (equalLists(cdr list1) (cdr list2)))
    (else #f)
  ))

(equalLists `(1 (2 3)) `(1 (2 3)))


(define (spherevol  radius)
     (* (/ 4 3) 3.1415926 radius radius radius)
)