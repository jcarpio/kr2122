:- use_module(library(clpfd)).

/*
sudoku(+Matrix)
 it is true if Matrix unify with a 9x9 matrix
 that represent a valid 9x9 sudoku. 
*/

% https://www.funwithpuzzles.com/2018/05/irregular-sudoku-puzzles.html

% International sudoku competition
% https://logicmastersindia.com/SM/2022sm.asp

% https://www.sudoku.org.uk/Daily.asp

sudoku(Matrix):- 
  length(Matrix, 9),
  maplist(same_length(Matrix), Matrix),
  append(Matrix, Elems), Elems ins 1..9,
  maplist(all_distinct, Matrix),
  transpose(Matrix, Matrix2),
  maplist(all_distinct, Matrix2),
  Matrix = [L1, L2, L3, L4, L5, L6, L7, L8, L9],
     L1 = [E11, E12, E13, E14, E15, E16, E17, E18, E19],
	 L2 = [E21, E22, E23, E24, E25, E26, E27, E28, E29],
	 L3 = [E31, E32, E33, E34, E35, E36, E37, E38, E39],
	 L4 = [E41, E42, E43, E44, E45, E46, E47, E48, E49],
	 L5 = [E51, E52, E53, E54, E55, E56, E57, E58, E59],
	 L6 = [E61, E62, E63, E64, E65, E66, E67, E68, E69],
	 L7 = [E71, E72, E73, E74, E75, E76, E77, E78, E79],
	 L8 = [E81, E82, E83, E84, E85, E86, E87, E88, E89],
	 L9 = [E91, E92, E93, E94, E95, E96, E97, E98, E99],
	 
	 all_distinct([E11,E12,E13,E14,E21,E22,E31,E32,E42]),
     all_distinct([E15,E16,E17,E25,E26,E35,E44,E45,E54]),
     all_distinct([E18,E19,E27,E28,E29,E36,E37,E38,E48]),
     all_distinct([E23,E24,E33,E34,E43,E52,E53,E62,E63]),
     all_distinct([E41,E51,E61,E71,E81,E91,E92,E93,E94]),
     all_distinct([E55,E56,E64,E65,E66,E72,E73,E74,E82]),
     all_distinct([E83,E84,E85,E86,E87,E88,E95,E96,E97]),
     all_distinct([E46,E47,E57,E58,E67,E68,E75,E76,E77]),
     all_distinct([E39,E49,E59,E69,E78,E79,E89,E98,E99]).  	 
	 
  
  
/*
distinct_blocks(+Line1, +Line2, +Line3)
 it is true if each block of 3x3 has different
 numbers. Each line has a length of 9 numbers.
*/


sudoku1([[2,_,_,_,_,_,_,9,6],
         [4,9,8,_,_,_,3,1,_],
		 [_,1,_,_,_,_,_,4,_],
		 [_,_,_,_,2,3,_,_,_],
		 [_,_,_,9,8,4,_,_,_],
		 [_,_,_,7,6,_,_,_,_],
		 [_,2,_,_,_,_,_,6,_],
		 [_,5,6,_,_,_,8,3,1],
		 [8,4,_,_,_,_,_,_,3]]).
