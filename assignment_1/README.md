# 3520a1

Write LISP functions that perform the following tasks:

1. Flips alternate elements of a list. That is, if the input is `(a_1 a_2 ... a_n)` then the output is `(a_2 a_1 a_4 a_3 ... a_n a_n-1)`. If `n` is odd, `a_n` remains at the end. Name the function `flip`.
2. Given an input list `L` and an integer `i`, returns a copy of `L` with the ith element deleted. If the length of `L` is less than `i`, return `L`. Name the function `(remove-i i L)`.
3. Takes a list of integers `(a_1 a_2 ... a_n)` and computes the product of all terms:  
   `(a_i - a_j), where i < j`
   that is, computes the product of all differences between elements, with the element appearing later on the list subtracted from the element appearing first. For example for the list:  
   `(3 2 1)`  
   the function computes:  
   `(3-1)*(3-2)*(2-1) = 2`  
   If the list is empty, the function returns `1`.  
   Name the function `product-of-diff`.
