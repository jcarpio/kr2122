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
