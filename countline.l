%{
    int c=0;
%}

%%
"\n" {c++;}
"$" {return 0;}
. ;  

%%

int main()
{
    printf("enter  $ to end\n");
    yylex();
    printf("\n no of lines is %d\n",c);
}