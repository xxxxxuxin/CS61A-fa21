(define (over-or-under num1 num2) (cond
                                          ((< num1 num2) -1)
                                          ((= num1 num2) 0)
                                          (else 1)
                                          ))

(define (make-adder num) (lambda (inc) (+ num inc)))

(define (composed f g) (lambda (x) (f (g x))))

(define lst (cons '(1) 
						(cons 2 
							(cons (list 3 4) '(5))
							)))

(define (remove item lst) (filter (lambda (x) (not (= x item)))  lst))
