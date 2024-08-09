older(queen_elizabeth, prince_charles).
older(prince_charles, princess_ann).
older(princess_ann, prince_andrew).
older(prince_andrew, prince_edward).

mother_of(queen_elizabeth, prince_charles).
mother_of(queen_elizabeth, prince_andrew).
mother_of(queen_elizabeth, prince_edward).
mother_of(queen_elizabeth, princess_ann).

successor(X, Y) :-
    older(X, Y).

next_successor(Person, Successor) :-
    successor(Person, Successor).
next_successor(Person, Successor) :-
    successor(Person, Intermediary),
    next_successor(Intermediary, Successor).
