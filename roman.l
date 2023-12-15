%{
#include <stdio.h>
#include <stdlib.h>
%}

%%

[0-9]+ {
    int decimalNumber = atoi(yytext);
    if (decimalNumber > 0 && decimalNumber <= 50) {
        int decimalVals[] = {50, 40, 10, 9, 5, 4, 1};
        const char *romanNums[] = {"L", "XL", "X", "IX", "V", "IV", "I"};
        int i = 0;

        while (decimalNumber > 0) {
            while (decimalNumber >= decimalVals[i]) {
                printf("%s", romanNums[i]);
                decimalNumber -= decimalVals[i];
            }
            i++;
        }
        printf("\n");
    } else {
        printf("Number out of range (1-50).\n");
    }
}

%%

int main() {
    yylex();
    return 0;
}
