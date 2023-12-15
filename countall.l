%{
    int c = 0;
    int l = 0;
    int w = 0;
    int b = 0;
%}

%%
["\n"] { l++; }
[" "]+ { b++; }
[a-zA-Z0-9]+ { w++; c += yyleng; }
"$" { return 0; }
%%


 int main()
 {
    
    yylex();
    printf("%d%d%d%d",l,b,c,w);
   
 }