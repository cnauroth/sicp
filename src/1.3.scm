;
; Exercise 1.3
;
; Define a procedure that takes three numbers as arguments and returns the sum
; of the squares of the two larger numbers.

(define (sum-squares-two-larger a b c)
  (define (sum-squares x y)
    (+ (* x x) (* y y)))

  (cond ((and (> a c) (> b c)) (sum-squares a b))
        ((and (> b a) (> c a)) (sum-squares b c))
        ((and (> a b) (> c b)) (sum-squares a c))))

(display (sum-squares-two-larger 6 2 4))
(newline)
