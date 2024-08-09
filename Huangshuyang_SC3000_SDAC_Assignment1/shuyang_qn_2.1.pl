male(prince_charles).
male(prince_andrew).
male(prince_edward).
female(princess_ann).

older(prince_charles, princess_ann).
older(princess_ann, prince_andrew).
older(prince_andrew, prince_edward).

parent(queen_elizabeth, prince_charles).
parent(queen_elizabeth, princess_ann).
parent(queen_elizabeth, prince_andrew).
parent(queen_elizabeth, prince_edward).

successor(X) :- male(X), parent(queen_elizabeth, X).
successor(X) :- male(X), parent(X, Y), successor(Y), older(Y, Z), parent(Z, Y).
successor(X) :- female(X), parent(queen_elizabeth, X).
successor(X) :- female(X), parent(X, Y), successor(Y), older(Y, Z), parent(Z, Y).
