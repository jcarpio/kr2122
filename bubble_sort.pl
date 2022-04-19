%-----------------------------------------------------
% bubble_sort(+List, -ListR).
% it is true when ListR unifies with a list containing the 
% same elements as List ordered from lowest to highest.
%-----------------------------------------------------

bubble_sort(L, L):- sorted(L).

bubble_sort(L, R2):- 
  append(L1, [E1,E2|L2], L),
  E1 > E2,
  append(L1, [E2,E1|L2], R),
  bubble_sort(R, R2).
  
bubble_sort(L, R):- 
  append(_, [E1,E2|_], L),
  E1 =< E2,  
  bubble_sort(L, R).


/*

sorted(+List)
  it is true if List is sorted from low to high.

*/

sorted([]).

sorted([_]).

sorted([E1,E2|Tail]) :- E1 =< E2, sorted([E2|Tail]).


/*
  H1, H2
 [1,   2,  3,4,5,6,7]


  sorted? -> [2,3,4,5,6,7]
  
  H1 =< H2?
  
  

*/



/* 

 generate_list(+N, -List)
   it is true if List unify with a list
   of N radom generated numbers between
   1 and N.
   
*/

generate_list(0, []).


generate_list(N, [Head|R]):-
    N > 0,
    N2 is N-1,
	generate_list(N2, R),
	Head is random(N).





