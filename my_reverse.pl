/*

length(?List, ?Length)

my_reverse(+List, -ListR) 
  which is true when ListR 
  unifies with a list containing the
  same elements as List but in reverse order.
  
  + means variable have a value
  - means free variable
  ? means will have a value or be a free variable
  
*/

my_reverse([], []).

my_reverse([Head|Tail],  ):-  my_reverse(Tail, R),

/*
insert_end(+Elem, +List, -Result)
  it is true if Result unify with a list
  that have the elements of List with
  element Elem inserted at the end.


*/
