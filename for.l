%{
    #include"y.tab.h"
%}
%%
for {return FOR;}
[a-zA-Z_][a-zA-Z0-9_]* { yylval.str=strdup(yytext);return I;}
[0-9]+ { yylval.str=strdup(yytext);return N;}
"++" {return INC;}
[\n] {return NL;}
. {return yytext[0];}
%%