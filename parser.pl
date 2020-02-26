:- [varParser].
:- [boolParser].
:- [numParser].
:- [progParser].

parse(X) :- phrase(block, X).

