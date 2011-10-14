;
; Exercise 1.5
;
; Ben Bitdiddle has invented a test to determine whether the interpreter he is
; faced with is using applicative-order evaluation or normal-order evaluation.
; He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; Then he evaluates the expression

(test 0 (p))

; What behavior will Ben observe with an interpreter that uses applicative-order
; evaluation?  What behavior will he observe with an interpreter that uses
; normal-order evaluation?  Explain your answer.  (Assume that the evaluation
; rule for the special form if is the same whether the interpreter is using
; normal or applicative order: The predicate expression is evaluated first, and
; the result determines whether to evaluate the consequent or the alternative
; expression.)

;
; Answer:
;
; p keeps recursively calling itself, so if p is called, the program enters an
; infinite loop.  Under applicative-order evaluation, the call to test evalutes
; p first, so the program enters the infinite loop.  Under normal-order
; evaluation, the call to p used as an argument to test is not evaluated until
; needed.  When the test method executes, x is 0, so it has no need to call p.
; test returns 0.
