%{
#include"y.tab.h"
%}
%%
for {return FOR;}
[a-z]+ {yylval.str = strdup(yytext);return ID;}
[0-9]+ {yylval.d = atoi(yytext);return DIG;}
"++" {yylval.str = strdup(yytext);return INC;}
"--" {yylval.str = strdup(yytext);return INC;}
. {return yytext[0];}
%%
