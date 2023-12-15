%{
#include<stdio.h>
%}

%x SINGLE
%x MULTI

%%

"//"     { BEGIN(SINGLE); }
"/*"     { BEGIN(MULTI); }

<SINGLE>[^\n]  ;
<MULTI>\n        { fprintf(yyout, "\n"); } /* Preserve newlines inside multi-line comment */
<MULTI>[^*]     ;

<MULTI>"*/"      { BEGIN(INITIAL); }
<SINGLE>\n       { BEGIN(INITIAL); fprintf(yyout, "\n"); } 

. { fprintf(yyout, "%s", yytext); } 
%%

int main()
{
    extern FILE *yyin, *yyout;
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");

    if (!yyin || !yyout) {
        fprintf(stderr, "Error opening files\n");
        return 1;
    }

    yylex();

    fclose(yyin);
    fclose(yyout);

    return 0;
}
