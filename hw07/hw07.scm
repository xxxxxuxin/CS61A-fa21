(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (cadr (cdr s)))

(define (ordered? s) (cond 
						((equal? (cdr s) nil) true)
						((<= (car s) (cadr s)) (ordered? (cdr s)))
						(else false)
						))

(define (square x) (* x x))

(define (pow base exp) (cond
						((or (= base 1) (= exp 1)) base)
						((= (modulo exp 2) 0) (square (pow base (/ exp 2))) )
						(else	(* (square (pow base (/ (- exp 1) 2)) ) 
									base ))

						))
