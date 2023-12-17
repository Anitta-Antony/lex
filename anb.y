%{
    #include<stdio.h>

%}
%token A B NL
%%
s:A A A A A stmt B NL { printf("valid");}
stmt:A stmt| ;

%%
int yyerror()
{
    printf("error");
}
int main()
{
    yyparse();
}