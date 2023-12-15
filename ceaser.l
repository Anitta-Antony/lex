%{
#include <stdio.h>
%}

%%
[A-Za-z] {
    if ('a' <= yytext[0] && yytext[0] <= 'z') {
        printf("%c", 'a' + (yytext[0] - 'a' + 3) % 26);
    } else if ('A' <= yytext[0] && yytext[0] <= 'Z') {
        printf("%c", 'A' + (yytext[0] - 'A' + 3) % 26);
    }
}
. { printf("%c", yytext[0]); }
%%

int main() {
    yylex();
    return 0;
}
