%{
#include <stdio.h>
int nest = 0;
%}

%token IF ELSE 

%%

s: IF{ nest++; printf("lvl%d\n", nest); } cond 
cond: '{' x '}'ELSE '{' x '}'|'{' x '}'
x:stmt x| ;
stmt: IF { nest++; printf("lvl%d\n", nest); } cond {nest--;}

%%

int yyerror(const char *msg) {
    fprintf(stderr, "Parser error: %s\n", msg);
    return 0;
}

int main() {
    yyparse();
    return 0;
}


