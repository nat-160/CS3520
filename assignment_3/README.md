# 3520a3

Solve the following problems using Prolog:

1. Consider a representation of sets as lists. Define the following predicates:

   - `is_member(X,L)`, which is true iff X is a member of L.
     > ?- is_member(3,[1,2,3]).  
     > true.
   - `is_subset(L1,L2)`, which is true iff L1 is a subset of L2.
     > ?- is_subset([1],[1,2,3]).  
     > true.
   - `is_union(L1,L2,LR)`, which is true iff LR is the union of L1 and L2.
     > ?- is_union([1,2],[3,4],LR).  
     > LR = [1,2,3,4].
   - `is_intersect(L1,L2,LR)`, which is true iff LR is the intersection of L1 and L2.
     > ?- is_intersect([1,2],[2,3],LR).  
     > LR = [2].
   - `is_power(L,LR)`, which is true iff LR is the power set of L.
     > ?- is_power([1,2],LR).  
     > LR = [[],[1],[2],[1,2]].

2. Define a relation `quicksort(L,SL)` which maps a list L to a list SL which is the sorted version of L using the quicksort algorithm.

   > ?- quicksort([4,2,6,1,3],SL).  
   > SL = [1,2,3,4,6].

3. Define a relation mergesort(L,SL) which maps a list L to a list SL which is the sorted version of L using the mergesort algorithm.

   > ?- mergesort([4,2,6,1,3],SL).  
   > SL = [1,2,3,4,6].

4. Determine whether two numbers are amicable:
   > ?- are_amicable(220,284).  
   > true.
