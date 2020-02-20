%{ 
/* Definition section */
#include<stdio.h> 
int flag=0; 
%} 

%token NUMBER 

%left '+' '-'

%left '*' '/' '%'

%left '(' ')'

/* Rule Section */
%% 

ArithmeticExpression: E{ 

		printf("\nResult=%d\n", $$); 

		return 0; 

		}; 
E:E'+'E {$$=$1+$3;} 

|E'-'E {$$=$1-$3;} 

|E'*'E {$$=$1*$3;} 

|E'/'E {$$=$1/$3;} 

|E'%'E {$$=$1%$3;} 

|'('E')' {$$=$2;} 

| NUMBER {$$=$1;} 

; 

%% 

//driver code 
void main() 
{ 
printf("\nAddition, Subtraction, Multiplication, Divison, Modulus and Round brackets:\n"); 

yyparse(); 
if(flag==0) 
printf("\nValid\n\n"); 
} 

void yyerror() 
{ 
printf("\nInvalid\n\n"); 
flag=1; 
} 
