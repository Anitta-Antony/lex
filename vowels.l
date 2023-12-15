%{
    int v=0;
    int c=0;

%}
%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
%%
int main()
{
    yylex();
    printf("%d%d",v,c);
}