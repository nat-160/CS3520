;;flips alternate elements
(defun flip (L)
  (if (null (cdr L))
      L
    (cons (car (cdr L)) (cons (car L) (flip (cdr (cdr L)))))
      )
  )
;;deletes ith element
(defun remove-i (i L)
  (if (< i 1)
      L
    (if (= i 1)
	(cdr L)
      (cons (car L) (remove-i (- i 1) (cdr L)))
      )
    )
  )
;;computes product of all terms
(defun product-of-diff (L)
  (if (null (cdr L))
      1
    (* (product-list (cdr L) (car L) 1) (product-of-diff (cdr L)))
    )
  )

(defun product-list (L n acc)
  (if (null L)
      acc
    (product-list (cdr L) n (* acc (- n (car L))))
    )
  )
