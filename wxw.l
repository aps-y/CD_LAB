%{
    #include<stdio.h>
    #include"y.tab.h"
    #include<string.h>
    //char* str;
%}

%%
a {return A;}
b {return B;}
\n { return NL ;}
. {return yytext[0];}
%%

int yywrap()
{
    return 1;
}