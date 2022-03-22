
/*

my_length(List, R)
  it is true if R unify
  with the number of elements in List

*/

my_length([], 0).

%       Full List           List without one elment 
my_length([_|Tail], R2):- my_length(Tail, R),
                             R2 is R + 1.

 






