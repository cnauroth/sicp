;
; Exercise 1.1
;
; Below is a sequence of expressions.  What is the result printed by the
; interpreter in response to each expression?  Assume that the sequence is to be
; evaluated in the order in which it is presented.

(define (displayline line)
  (display line)
  (newline))

(displayline 10)

(displayline (+ 5 3 4))

(displayline (- 9 1))

(displayline (/ 6 2))

(displayline (+ (* 2 4) (- 4 6)))

(define a 3)

(define b (+ a 1))

(displayline (+ a b (* a b)))

(displayline (= a b))

(displayline (if (and (> b a) (< b (* a b)))
    b
    a))

(displayline (cond ((= a 4) 6)
                   ((= b 4) (+ 6 7 a))
                   (else 25)))

(displayline (+ 2 (if (> b a) b a)))

(displayline (* (cond ((> a b) a)
                      ((< a b) b)
                      (else -1))
                (+ a 1)))
