#lang racket

;; Brett Huffman
;; Project 2
;; CMPSCI 4250
;; June 30, 2021
;;
;; -----------------------------------------------------------------------------
(define pi 3.1416)

(define(my_calc val1 val2)
  (cond
    ((null? val1) #f)
    ((null? val2) #f)
    ((< val2 0) #f )
    ((eq? val1 1)            ;; A Circle Area Calc
      (* (* pi val2) val2))  ;; pi r^2
    ((eq? val1 2)            ;; A Sphere Area Calc
      (* (* (* (* (/ 4 3) pi) val2) val2))) ;; 4/3 pi r^2
    )
  )

(my_calc `2 `1)


(define(equalsimp list1 list2)
  (cond
   ((null? list1) (null? list2))
   ((null? list2) #f)
   
   (eqv? (car list1) (car list2))
     (equalsimp (cdr list1) (cdr list2))

   (else #f)
   )
  )

(equalsimp `(1 2 3) `(1 2 3))


(define(membership atm a_list)
    (cond
      ((null? a_list) #f)
      ((eq? atm (car a_list)) #t)
      (else (membership atm (cdr a_list)))
      ))

(define (spherevol  radius)
     (* (/ 4 3) 3.1415926 radius radius radius)
)

(define (make_set old_set new_list)
        (set-union old_set new_list)
        )