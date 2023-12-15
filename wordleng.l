%{

%}

%%
[""] ;
[a-zA-Z]+ {printf("len of %s = %d",yytext,yyleng);}
%%

int main()
{
    yylex();
}