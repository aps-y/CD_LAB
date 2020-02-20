%{ 
/* Definition section */
#include "y.tab.h" 
%} 

/* Rule Section */
%% 
 
\n {return NL;} 
. {return yytext[0];} 
%% 

int yywrap() 
{ 
return 1; 
} 
