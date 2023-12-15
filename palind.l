%{
#include<stdio.h>
#include<string.h>
int i;
int flag=0;
%}
%%
[a-zA-Z]+ {
    for(i=0;i<yyleng;i++){

        if(yytext[i]==yytext[yyleng-i-1])
        {
            flag=1;
        }
        else{
            flag=0;
            break;
        }
    }
    if(flag==1){
        printf("palindrome");
    }
    else{
       printf("not a palindrome");  
    }
}

%%
int main()
{
    yylex();
}