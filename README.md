# CD_LAB

Steps to run Any Parser Program:
1. lex filename.l
2. yacc -d filename.y
3. gcc lex.yy.c y.tab.c -w
4. ./a.out
