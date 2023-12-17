%{
    #include<stdio.h>
%}
%token FOR  NL INC
%token<str> I N
%union {
    char *str;
}

%%

st:FOR '(' I '=' N ';' I '<' N ';' I INC ')'{ printf("Equivalent while loop:\n");
                                                printf("int %s = %s;\n", $3, $5);
                                                    printf("while( %s<%s){\n", $3, $9);
                                                    printf("i++}");
                                            
}
%%
int yyerror()
{
    printf("error");
}
int main()
{
    yyparse();
}