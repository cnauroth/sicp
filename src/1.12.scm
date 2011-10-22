;
; Exercise 1.12
;
; The following pattern of numbers is called Pascal's triangle.
;
;     1
;    1 1
;   1 2 1
;  1 3 3 1
; 1 4 6 4 1
;    ...
;
; The numbers at the edge of the triangle are all 1, and each number inside the
; triangle is the sum of the two numbers above it.  Write a procedure that
; computes elements of Pascal's triangle by means of a recursive process.

(define (pascals-triangle-recursive row index)
  (if (or (= 0 index)
          (= row index))
      1
      (+ (pascals-triangle-recursive (- row 1) (- index 1))
         (pascals-triangle-recursive (- row 1) index))))

(display (pascals-triangle-recursive 0 0))
(newline)

(display (pascals-triangle-recursive 1 0))
(newline)

(display (pascals-triangle-recursive 1 1))
(newline)

(display (pascals-triangle-recursive 2 0))
(newline)

(display (pascals-triangle-recursive 2 1))
(newline)

(display (pascals-triangle-recursive 2 2))
(newline)

(display (pascals-triangle-recursive 3 0))
(newline)

(display (pascals-triangle-recursive 3 1))
(newline)

(display (pascals-triangle-recursive 3 2))
(newline)

(display (pascals-triangle-recursive 3 3))
(newline)

(display (pascals-triangle-recursive 4 0))
(newline)

(display (pascals-triangle-recursive 4 1))
(newline)

(display (pascals-triangle-recursive 4 2))
(newline)

(display (pascals-triangle-recursive 4 3))
(newline)

(display (pascals-triangle-recursive 4 4))
(newline)
