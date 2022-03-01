/* 

  Prolog Program to check if any number is any  
  number is a natural number.
  
  We will use Mathematical Induction
  
  1. natural(1).
  
  2. For any number greather than 1 we apply this rule
   
     If natural(n-1) it is true, then natural(n) will be true.
	 
*/

natural(1).

% natural(n-1) -> natural(n)
% 

natural(N):- N > 1, N2 is N-1, 
              natural(N2).
