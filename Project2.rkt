#lang racket

;; Brett Huffman
;; Project 2
;; CMPSCI 4250
;; June 30, 2021
;;
;; -----------------------------------------------------------------------------
;; 1a
(define pi 3.1416)

(define(my_calc val1 val2)
  (cond
    ;; Check Input Params
    ((null? val1) #f)
    ((null? val2) #f)
    ((or (< val1 1) (> val1 2)) #f)
    ((< val2 0) #f )

    ;; Do Calculations
    ((eq? val1 1)            ;; A Circle Area Calc
      (* (* pi val2) val2))  ;; pi r^2
    ((eq? val1 2)            ;; A Sphere Area Calc
      (* (* (* (* (/ 4 3) pi) val2) val2) val2)) ;; 4/3 pi r^3
    )
  )

(my_calc `1 `35)
;; -----------------------------------------------------------------------------
;; 1b
;;(define pi 3.1416)

(define(my_calc2 val1 val2)

    ;; Check Input Params
    (if(or (null? val1) (null? val2) (< val1 1) (> val1 2) (< val2 0)) #f
                       
    ;; Do Calculations
    (if(eq? val1 1)            ;; A Circle Area Calc
      (* (* pi val2) val2)    ;; pi r^2
                               ;; else A Sphere Area Calc
      (* (* (* (* (/ 4 3) pi) val2) val2) val2)) ;; 4/3 pi r^3
    )
)

(my_calc2 `1 `35)

;; -----------------------------------------------------------------------------
;; 2

(define(rem_second list_in)
  ;; Check input
  (if(< (length list_in) 2) `()
     ;; Append the first item to the tail, omitting the second item
    (append (list (car list_in)) (list-tail list_in 2))
     
  )
)

(rem_second `(1 2 3 4 5))

;; -----------------------------------------------------------------------------
;; 3

(define (membership atm a_list)
  (cond
       ((null? a_list) #f)
       ((eq? atm (car a_list)) #t)
       (else (membership atm (cdr a_list)))
 ))

;;(membership 'a '(d c e b))

;;(define(union_helper list list)

(define(my_union list1 list2)

;;  (membership (car list1) list2)

;;           ((eqv?  s  (car a_list))  a_list )
;;            (else  (guess  s  (cdr a_list)))

  (print list1)
  (if (membership (car list1) list2) ;;'y 'n)
      (my_union (cdr list1) list2)
      (my_union (cdr list1) (cons (car list1) list2))
  )
)

(my_union `(1 2 3) `(5 1 6))


;; -----------------------------------------------------------------------------
;; 4

;;(define(my_delete atm1 list1)


