;;palindromep
(defun palindromep (L)
  (if (null (cdr L))
      t
      (if (eq (car L) (car (last L)))
          (palindromep (cdr (reverse (cdr (reverse L)))))
          nil)))

;;occr
(defun occr (L)
  (occr-h (cdr L) nil (car L) 0 nil))

(defun occr-h (L R i n acc)
  (if (null L)
      (if (null R)
          (reverse (cons (cons i n) acc))
          (occr-h (cdr R) nil (car R) 1 (cons (cons i n) acc)))
      (if (eq i (car L))
          (occr-h (cdr L) R i (incf n) acc)
          (occr-h (cdr L) (append R (cons (car L) nil)) i n acc))))

;;nodups
(defun nodups (L)
  (nodups-h (cdr L) (cons (car L) nil)))

(defun nodups-h (L acc)
  (if (null L)
      (reverse acc)
      (if (eq (car acc) (car L))
          (nodups-h (cdr L) acc)
          (nodups-h (cdr L) (cons (car L) acc)))))

;;factorsL
(defun factorsL (L)
  (factorsL-h L nil))

(defun factorsL-h (L acc)
  (if (null L)
      acc
      (factorsL-h
       (cdr L)
       (append acc (cons (factors
                          (car L)
                          nil
                          2)
                         nil)))))

(defun factors (n acc i)
  (if (= i n)
      (reverse acc)
      (if (and (prime i i) (= 0 (mod n i)))
          (factors n (cons i acc) (incf i))
          (factors n acc (incf i)))))

(defun prime (num i)
  (if (= i 2)
      t
      (if (= 0 (mod num (- i 1)))
          nil
          (prime num (decf i)))))

;;dups
(defun dups (L n)
  (dups-h L n nil))

(defun dups-h (L n acc)
  (if (null L)
      acc
      (dups-h (cdr L) n (append acc (dups-hh (car L) n nil)))))

(defun dups-hh (i n acc)
  (if (< n 1)
      acc
      (dups-hh i (decf n) (cons i acc))))
