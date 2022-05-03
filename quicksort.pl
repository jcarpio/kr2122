
:- load_files('generate_list.pl').
% :- set_prolog_flag(stack_limit, 8_589_934_592).
% :- set_prolog_flag(stack_limit, 17_179_869_184).
% :- set_prolog_flag(stack_limit, 34_359_738_368).
:- set_prolog_flag(stack_limit, 68_719_476_736).



/*

quicksort(+List, -R)
  it is true if R unify with a list that contains
  the elements of List sorted from small to high values.

*/

quicksort([], []).

quicksort([Pivot|Tail], R):-
  split_list(Pivot, Tail, Small, High),
  quicksort(Small, RS),
  quicksort(High, RH),
  append(RS, [Pivot|RH], R).
  
/*
 split_list(+Pivot, +List, -Small, -High)
   is is true if Small unify a list with the values of
   List that are less or equal than Pivot and
   High unify with a list with the values that are
   higher than Pivot.   
*/  

split_list(_, [], [], []).

split_list(Pivot, [Head|Tail], [Head|Small], High):-
  Head =< Pivot,
  split_list(Pivot, Tail, Small, High).
  
  
split_list(Pivot, [Head|Tail], Small, [Head|High]):-
  Head > Pivot,
  split_list(Pivot, Tail, Small, High).
    
