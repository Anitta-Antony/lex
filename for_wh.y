%{
#include<stdio.h>
%}
%union{
    char* str;
    int d;
}
%token<str> ID FOR INC
%token<d> DIG
%%

s: x ID '=' ID '}'  { printf("\n%s = %s;\n}",$2,$4);} 
  |x ID '=' DIG '}' { printf("\n%s = %d",$2,$4);}
x:FOR '(' ID '=' DIG ';' ID '<' DIG ';' ID INC ')' '{'   {printf("\nint %s=0;\nwhile(%s<%d){\n%s++ ",$3,$7,$9,$11);}
%%

int yyerror(){
    printf("error");
}
int main()
{
    yyparse();
}