grammar cc;

// grammatik parser

start   : (Three | Four) fail EOF ;

Three : [0-9] [0-5] [0-9] ;
Four : [0-2] [0-9] [0-5] [0-9] ;

fail : ANYTHING* ;

Letters: [a-zA-ZæøåÆØÅ]* -> skip;

Whitespace : [ \n\t]+ -> skip; 

Short : [0-9] -> skip;

COMMENT : '//' (~[\n])* '\n' -> skip; 

Special : ('}' | '{' | '(' | ')' | '.' | '+' | ';' | ',' | '=' | '!' | '-' | '*') -> skip;

ANYTHING : . ;