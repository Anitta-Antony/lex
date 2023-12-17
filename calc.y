%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<math.h>
    int v=0;
%}
%token NUMBER
%left '+' '-'
%left '*' '/'
%left '(' ')'
%right '^'
%%
expr:E{printf("%d",$$);return 0;}
E:E'+'E {$$=$1+$3;}
 |E'-'E {$$=$1-$3;}
 |E'*'E {$$=$1*$3;}
 |E'/'E {$$=$1/$3;}
 |E'^'E {$$=pow($1,$3);}
 |'('E')'{$$=$2;}
 |NUMBER {$$=$1;}
;
%%
int yyerror(){
    printf("error");
    v=1;
}
void main()
{
    yyparse();
    if(v==0)
    {
        printf("\n");
    }
}