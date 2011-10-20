;
; Exercise 1.11
;
; A function f is defined by the rule that f(n) = n if n < 3 and f(n) =
; f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3.  Write a procedure that computes f
; by means of a recursive process.  Write a procedure that computes f by means
; of an iterative process.

(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1))
         (* 2 (f-recursive (- n 2)))
         (* 3 (f-recursive (- n 3))))))

(display (f-recursive 0))
(newline)

(display (f-recursive 1))
(newline)

(display (f-recursive 2))
(newline)

(display (f-recursive 3))
(newline)

(display (f-recursive 4))
(newline)

(display (f-recursive 5))
(newline)

(display (f-recursive 6))
(newline)

(display (f-recursive 7))
(newline)

(display (f-recursive 8))
(newline)

(display (f-recursive 9))
(newline)



(define (f-iterative n)
  (define (f-iterative-internal i n a b c)
    (if (= i n)
        a
        (f-iterative-internal (+ i 1)
                              n
                              (if (< i 2)
                                  (+ i 1)
                                  (+ a (* 2 b) (* 3 c)))
                              a
                              b)))
  (f-iterative-internal 0 n 0 0 0))

(display (f-iterative 0))
(newline)

(display (f-iterative 1))
(newline)

(display (f-iterative 2))
(newline)

(display (f-iterative 3))
(newline)

(display (f-iterative 4))
(newline)

(display (f-iterative 5))
(newline)

(display (f-iterative 6))
(newline)

(display (f-iterative 7))
(newline)

(display (f-iterative 8))
(newline)

(display (f-iterative 9))
(newline)
