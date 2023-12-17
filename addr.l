%{
    #include"y.tab.h"
%}
%%
name: {return name;}
place: {return place;}
pin: {return pin;}
phone: {return phone;}
[a-zA-Z]+ {return N;}
[1-9][0-9]{5} {return p;}
[0-9]{4}-[0-9]{7} {return po;}
\n {return NL;}

. ;
%%