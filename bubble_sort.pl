%-----------------------------------------------------
% bubble_sort(+List, -ListR).
% it is true when ListR unifies with a list containing the 
% same elements as List ordered from lowest to highest.
%-----------------------------------------------------

bubble_sort(L, L):- sorted(L).


bubble_sort(L,  ):- append(L1, [E1,E2|L2], L),
  E1 > E2,
  append(




/*

sorted(+List)
  it is true if List is sorted from low to high.

*/

sorted([]).
sorted([_]).
sorted([H1,H2|Tail]) :- H1 =< H2, sorted([H2|Tail]).



/*
  H1, H2
 [1,   2,  3,4,5,6,7]


  sorted? -> [2,3,4,5,6,7]
  
  H1 =< H2?
  
  

*/
