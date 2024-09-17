grammar cc;

// grammatik parser

start : UPDATES NEGATION CONJUNCTION DISJUNCTION DEFINITION PARENT EOF ;

UPDATES : Exp '=' Exp | Exp ' = ' Exp ;
NEGATION : '/' Exp ;
CONJUNCTION : Exp '*' Exp | Exp ' ' Exp ;
DISJUNCTION : Exp '+' Exp ;
DEFINITION : IDENT '(' Exp ')' ;
PARENT : '(' Exp ')' ;







Exp : [a-zA-Z][a-zA-Z0-9]* | TEXT ;
TEXT : ~[<>/& \n\t]+ ;
IDENT : [a-zA-Z][a-zA-Z0-9]* ;

WHITESPACE : [ \n\t] -> skip ;
