%{
    #include<stdio.h>
%}
%token A B NL
%%
x:s NL {printf("valid");}
s:A S B 
S:A S B |
;
%%
int yyerror()
{
    printf("error");
}
int main()
{
    yyparse();
}