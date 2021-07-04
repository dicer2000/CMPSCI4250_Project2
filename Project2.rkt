#lang racket

;; Brett Huffman
;; Project 2
;; CMPSCI 4250
;; June 30, 2021
;;
;; -----------------------------------------------------------------------------
;; 1a
(display "1a: \n")

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
(display "1b: \n")

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
(display "2: \n")

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
(display "3: \n")

(define (membership atm a_list)
  (cond
       ((null? a_list) #f)
       ((eq? atm (car a_list)) #t)
       (else (membership atm (cdr a_list)))
 ))

(define (my_union list1 list2)
;;  For debugging
;;  (print (car list1))

  (cond
    ((null? list2) list1)
  
    ((membership (car list2) list1)
      (my_union list1 (cdr list2)))    ;; Found
      (else (my_union (cons (car list2) list1) (cdr list2)))  ;; Not found, add
    )
)

(my_union `(1 2 3) `(5 1 6))


;; -----------------------------------------------------------------------------
;; 4

(define(my_delete atm1 list1)

  (cond
    ((not (list? list1)) (eq? list1 list2))
    ((not (list? list2)) #f)
    ((null? list1) (null? list2))
    ((null? list2) #f)
    ((equalLists(car list1) (car list2))
     (equalLists(cdr list1) (cdr list2)))
    (else #f)


 )
