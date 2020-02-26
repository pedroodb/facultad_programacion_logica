isVar(X) :-
    string_chars(X,L),
    variable(L,[]).

variable --> [X], rest, {char_type(X,alpha)}.
rest --> [X], rest, {char_type(X,alnum)}.
rest --> [].