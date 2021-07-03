#lang racket
(define (membership atm a_list)
  (cond
       ((null? a_list) #f)
       ((eq? atm (car a_list)) #t)
       (else (membership atm (cdr a_list)))
 ))

(membership 'a '(d c e b))


(car  `(9  ((3  2  1)  6)  (7  8)))
(car  `(((3  2  1)  6)  (7  8)))
(cdr '((3 2 1) 6))


(caadr  `(9  ((3  2  1)  6)  (7  8)))


(define (guess s a_list)                                     

     (cond

           ((null?  a_list)   `())

           ((eqv?  s  (car a_list))  a_list )

            (else  (guess  s  (cdr a_list)))

))

(guess  `2  `(3 1 2 5))