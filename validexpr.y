%{
    #include<stdio.h>
    #include<stdlib.h>
    int v=1;
%}
%token num id op
%%
stmt:id'='s';'
s:id x
    |num x
    |'-'num x
    |'('s')'
    ;
x:op s
    | '-'s
    |
    ;

%%
int yyerror()
{   v=0;
    printf("invalid\n");
    return 0;
}
int main(){
    yyparse();
    if(v){
        printf("valid\n");
    }
}
