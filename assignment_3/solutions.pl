is_member(X, [X|_]) :-
    !.
is_member(X, [_|T]) :-
    is_member(X, T).

is_subset([X], L2) :-
    is_member(X, L2).
is_subset([H|T], L2) :-
    is_member(H, L2),
    is_subset(T, L2).

is_union(L1, L2, LR) :-
    is_subset(L1, LR),
    is_subset(L2, LR).

is_intersect([], _, LR) :-
    LR = [],
    !.
is_intersect([X], L2, LR) :-
    is_member(X, L2),
    LR = X.
is_intersect([H|T], L2, LR) :-
    is_intersect(T, L2, L),
    (   is_member(H, L2)
    ->  LR = [H|L]
    ;   LR = L
    ).

add_set(_, [], []) :-
    !.
add_set(X, [H|T], [HH|TT]) :-
    add_set(X, T, TT),
    HH = [X|H].

is_power([], [[]]) :-
    !.
is_power([H|T], LR) :-
    is_power(T, L),
    add_set(H, L, LL),
    append(L, LL, LR).

quicksort([], []).
quicksort([H|T], SL) :-
    partition(T, H, Left, Right),
    quicksort(Left, LL),
    quicksort(Right, RR),
    append(LL, [H|RR], SL).

partition([], _, [], []).
partition([H|T], X, [H|Left], Right) :-
    H =< X,
    partition(T, X, Left, Right).
partition([H|T], X, Left, [H|Right]) :-
    H > X,
    partition(T, X, Left, Right).

mergesort([], []).
mergesort([X], [X]).
mergesort(L, SL) :-
    L = [_,_|_],
    split(L, Left, Right),
    mergesort(Left, LeftSorted),
    mergesort(Right, RightSorted),
    merge(LeftSorted, RightSorted, SL).

split([], [], []).
split([X], [X], []).
split([X,Y|List], [X|Left], [Y|Right]) :-
    split(List, Left, Right).

merge([], Right, Right).
merge(Left, [], Left).
merge([X|Left], [Y|Right], [X|Merged]) :-
    X =< Y,
    merge(Left, [Y|Right], Merged).
merge([X|Left], [Y|Right], [Y|Merged]) :-
    X > Y,
    merge([X|Left], Right, Merged).

sum_divisors(N, Sum) :-
    divisors(N, Divisors),
    sum_list(Divisors, Sum).

divisors(N, Divisors) :-
    findall(D, divisor(N, D), Divisors).

divisor(N, D) :-
    M is N-1,
    between(1, M, D),
    N mod D =:= 0.

are_amicable(A, B) :-
    sum_divisors(A, SumA),
    sum_divisors(B, SumB),
    A \== B,
    SumA =:= B,
    SumB =:= A.
