%{
    #include<stdio.h>

%}
%token name N NL place pin phone p po 
%%
s:name N NL place N NL pin p NL phone po NL{ printf("valid");}
%%
int yyerror()
{
    printf("error");
}
int main()
{
    yyparse();
}