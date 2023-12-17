%{
    #include"y.tab.h"
%}
%%

[a-z][a-z0-9]* {return N;}
[@] { return A;}
gmail\.com {return M;}
\n {return 0;}
%%