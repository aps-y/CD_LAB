%{ 
    #include<stdio.h>
    %}

%token A NL B

%%

stmt: C NL { printf("valid string\n"); exit(0);};

C: A C| B C| ;

%%

int yyerror(char *msg) 
{ 
printf("invalid string\n"); 
exit(0); 
} 

//driver code 
main() 
{ 
printf("enter the string\n"); 
yyparse(); 
} 