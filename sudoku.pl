
:- use_module(library(clpfd)).

/*
sudoku(+Matrix)
 it is true if Matrix unify with a 9x9 matrix
 that represent a valid 9x9 sudoku. 

*/

sudoku(Matrix):- 
  length(Matrix, 9),
  maplist(same_length(Matrix), Matrix),
  append(Matrix, Elems), Elems ins 1..9,
  maplist(all_distinct, Matrix),
  transpose(Matrix, Matrix2),
  maplist(all_distinct, Matrix2),
  Matrix = [L1, L2, L3, L4, L5, L6, L7, L8, L9],
  distinct_blocks(L1, L2, L3),
  distinct_blocks(L4, L5, L6),
  distinct_blocks(L7, L8, L9).
  
  
/*
distinct_blocks(+Line1, +Line2, +Line3)
 it is true if each block of 3x3 has different
 numbers. Each line has a length of 9 numbers.

*/

distinct_blocks([], [], []).
distinct_blocks([E1, E2, E3| Tail1], 
                [E4, E5, E6| Tail2],
				[E7, E8, E9| Tail3]):-
 all_distinct([E1, E2, E3, E4, E5, E6, E7, E8, E9]),
 distinct_blocks(Tail1, Tail2, Tail3). 
