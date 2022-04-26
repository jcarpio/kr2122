/*

quicksort(+List, -R)
  it is true if R unify with a list that contains
  the elements of List sorted from small to high values.

*/


quicksort([Pivot|Tail],  ):-
  split_list(Pivot, Tail, Small, High),
  quicksort(Small, RS),
  quicksort(High, RH),
