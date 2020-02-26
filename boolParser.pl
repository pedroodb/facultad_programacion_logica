/*
:-[varParser].
:-[numParser].
*/

boolExp --> boolTerm, andterm.
boolExp --> boolTerm, orterm.
boolExp --> boolTerm, [].
andterm --> [and], boolExp.
orterm --> [or], boolExp.
boolTerm --> [true].
boolTerm --> [false].
boolTerm --> numExp, eqOp, numExp.
boolTerm --> ['!'], boolTerm.
boolTerm --> [X], {isVar(X)}.
boolTerm --> ['('], boolExp, [')'].

eqOp --> [>].
eqOp --> [<].
eqOp --> [=].
eqOp --> [<=].
eqOp --> [>=].

/*
Ejemplos:
    boolExp([true,and,'(',false,or,true,')'],[]).
*/