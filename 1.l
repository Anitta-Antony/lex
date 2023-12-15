

%%
([Ss][Uu][Nn]|[Mm][Oo][Nn]|[Tt][Uu][Ee][Ss]|[Ww][Ee][Dd][Nn][Ee][Ss]|[Tt][Hh][Uu][Rr][Ss]|[Ff][Rr][Ii]|[Ss][Aa][Tt][Uu][Rr])[Dd][Aa][Yy] {
printf("%s is a day\n",yytext); }
.+ { printf("%s is not a day\n",yytext); }
%%

int main(){
printf("Enter week day : \n");
yylex();
}