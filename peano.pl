2 - n(n(0))
3 - n(n(n(0)))
....


Induction:

1. P(n0)

2. For all n > n0
   P(n-1) -> P(n)
   
   P(N):- N2 is N - 1, P(N2).
 

add(X, Y, Z).
 it is true if Z is the result of adding
 X + Y with Peano Arithmetic
 
*/

add(0, Y, Y).

add(n(X), Y, n(Z)):-  add(X, Y, Z).



add2(X, Y, Z) :- Z is X + Y.
