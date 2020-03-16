:- [varParser].
:- [boolParser].
:- [numParser].
:- [progParser].

parse(X) :- phrase(block, X).

/*

Parser pensado para un lenguaje imperativo simple, en el que se dispone de: 

- asignaciones: variable = expresion
- condicionales: if (expresion booleana) bloque 'else' bloque
- repeticiones: repeat (expresion numerica) bloque
- loops condicionales: while (expresion booleana) bloque

Los bloques deben escribirse entre llaves ({}), y las lineas deben finalizar con ';'.

Ejemplo:

parse([
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
