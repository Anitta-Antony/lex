%{
    #include<stdio.h>
    
%}

%token N A M
%%
s:N A M { printf("email is valid");}
%%
int yyerror(){
    printf("error");

}
int main()
{
    yyparse();

}