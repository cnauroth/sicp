;
; Exercise 1.8
;
; Newton's method for cube roots is based on the fact that if y is an
; approximation to the cube root of x, then a better approximation is given by
; the value
;
; x/(y^2) + 2y
; ------------
;      3
;
; Use this formula to implement a cube-root procedure analagous to the
; square-root procedure.  (In section 1.3.4 we will see how to implement
; Newton's method in general as an abstraction of these square-root and
; cube-root procedures.

(define (cube-root-newton x)
  (define (cube x)
    (* x x x))

  (define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.001))

  (define (improve guess x)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

  (define (cube-root-newton-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-root-newton-iter (improve guess x) x)))

  (cube-root-newton-iter 1.0 x))

(display (cube-root-newton 8))
(newline)

(display (cube-root-newton 2))
(newline)

(display (cube-root-newton 3))
(newline)

(display (cube-root-newton 4))
(newline)
