%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<math.h>
%}
%token NUM NL
%left '+' '-'
%left '*'
%%
expr:E NL{printf("%d",$$);return 0;}
E:E '+' E {$$=$1+$3;}|E '-' E {$$=$1-$3;}|E '*' E {$$=$1*$3;}|NUM {$$=$1;}
%%
int yyerror(char* str)
{
    printf("error");
}
int main()
{
    yyparse();
}