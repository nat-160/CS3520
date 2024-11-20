# 3520a2

Solve the following problems using LISP:

1. Write a function palindromep that takes a list and returns t if the list is a palindrome, i.e., the sequence of elements is the same when read left-to-right or right-to-left:
   > (palindromep '(1 2 3 2 1))
   > T
   > (palindromep '(a c f t))
   > NIL
2. Write a function occr that takes a list and returns a list of dotted pairs (also called an associative list) consisting of every element in the list and the times it occurs in the list:

   > (occr '(1 2 1 2 3 4 2 4 1 3))
   > ((1 . 3) (2 . 3) (3 . 2) (4 . 2))

3. Write a function nodups that takes a list and returns a list with any consecutive identical items removed:

   > (nodups '(1 1 2 2 2 3 4 5 5))
   > (1 2 3 4 5)
   > (nodups '(a a b b b a c c))
   > (a b a c)

4. Write a function factorsL that takes a list of numbers and replaces every number with a list of its prime factors:

   > (factorsL '(6 20 9 18))
   > ((2 3) (2 5) (3) (2 3))

5. Write a function dups that takes a list and a number and duplicates each element the number of times specified by the number argument:
   > (dups '(1 2 3) 3)
   > (1 1 1 2 2 2 3 3 3)
