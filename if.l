%{
    #include"y.tab.h"
%}
%%
[\t] {;}
if {return IF;}
else {return ELSE;}
. {return yytext[0];}


%%