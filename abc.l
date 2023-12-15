%{
#include <stdio.h>
%}

%%
abc     { printf("ABC"); }
.       {printf("%s",yytext);} 
%%

int main() {
    printf("Enter a string: ");
    yylex();
   
}
