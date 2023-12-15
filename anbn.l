%{
#include <stdio.h>
int count_a = 0;
int count_b = 0;
int valid = 1;
%}

%%
a {
    if (count_b == 0) {
        count_a++;
    } else {
        valid = 0;  /* 'a' comes after 'b', not valid */
    }
}

b {
    if (count_a > 0) {
        count_b++;
    } else {
        valid = 0;  /* 'b' without previous 'a', not valid */
    }
}

\n {
    if (valid && count_a == count_b) {
        printf("Input matches the pattern anbn\n");
    } else {
        printf("Input does not match the pattern anbn\n");
    }
    count_a = 0;
    count_b = 0;
    valid = 1;
}

.  { /* Ignore other characters */ }
%%

int main() {
    printf("Enter a string: ");
    yylex();
    return 0;
}
