/*
:-[varParser].
*/

numExp --> numTerm, addterm.
numExp --> numTerm, subterm.
numExp --> numTerm, [].
addterm --> [+], numExp.
subterm --> [-], numExp.
numTerm --> factor, multfactor.
numTerm --> factor, divfactor.
numTerm --> factor, [].
multfactor --> [*], numTerm.
divfactor --> [/], numTerm.
factor --> [I], {integer(I)}.
factor --> [X], {isVar(X)}.
factor --> ['('], numExp, [')'].

/*
Ejemplos:
    numExp([4,*,'(',8,+,9,')'],[]).
*/