%{
#include <stdio.h>
int scanfCount = 0;
int printfCount = 0;
%}

%%

"scanf" { scanfCount++; fprintf(yyout,"readf");  }
"printf" { printfCount++; fprintf(yyout,"writef");  }

%%

int main() {
    extern FILE *yyin,*yyout;
    yyin=fopen("input.txt","r");
    yyout=fopen("output.txt","w");
    yylex();
    printf("\nTotal 'scanf' statements replaced: %d\n", scanfCount);
    printf("Total 'printf' statements replaced: %d\n", printfCount);
    return 0;
}
