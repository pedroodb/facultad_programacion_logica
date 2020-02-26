:- [varParser].
:- [boolParser].
:- [numParser].

block --> ['{'], multiLines, ['}'].
multiLines --> line, [;], multiLines.
multiLines --> [].
/*
phrase(block,[
    '{',
        x, =, 1, ;,
        y, =, 10, ;,
        while, '(', x, <=, y, ')', '{',
            x, =, '(', x, +, 1, ')', ;,
        '}', ;,
        if, '(', x, or, y, ')', '{',
            x, =, 1, ;,
        '}', else, '{',
            x, =, 2, ;,
        '}', ;,
    '}'
]).
*/

line --> assign.
line --> if.
line --> repeat.
line --> while.

assign --> [X, =], numExp, {isVar(X)}.
assign --> [X, =], boolExp, {isVar(X)}.
/*
    assign([x, =, 1],[]).
*/

if --> [if, '('], boolExp, [')'], block, [else], block.
/*
    if([if, '(', x, or, y, ')', '{', x, =, 1, ;, '}', else, '{', x, =, 2, ;, '}'],[]).
*/

repeat --> [repeat, '('], numExp, [')'], block.
/*
    repeat([repeat, '(', 3, +, 4, ')', '{', x, =, 1, ;, '}'],[]).
*/

while --> [while, '('], boolExp, [')'], block.
/*
    while([while, '(', true, ')', '{', x, =, 1, ;, '}'],[]).
*/