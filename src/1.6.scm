;
; Exercise 1.6
;
; Alyssa P. Hacker doesn't see why if needs to be provided as a special form.
; "Why can't I just define it as an ordinary procedure in terms of cond?" she
; asks.  Alyssa's friend Eva Lu Ator claims this can indeed be done, and she
; defines a new version of if:

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; Eva demonstrates the program for Alyssa:

(display (new-if (= 2 3) 0 5))
(newline)

(display (new-if (= 1 1) 0 5))
(newline)

; Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

; What happens when Alyssa attempts to use this to compute square roots?
; Explain.

;
; Answer:
;
; The program enters an infinite loop.  Due to applicative order evaluation,
; all arguments to new-if are evaluated first before the execution of the call
; to new-if.  This means that it makes infinite recursive calls to sqrt-iter
; regardless of whether or not the guess is good enough.
