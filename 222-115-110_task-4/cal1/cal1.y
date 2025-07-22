%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token NUM ADD SUB
%start stmts

%%

stmts: stmts stmt | ;
stmt: stmt ADD term | stmt SUB term | term;
term: NUM;

%%

void yyerror(char *s)
{
    fprintf(stderr, "error: %s", s);
}

int main()
{
    yyparse();
    printf("Parsing Finished\n");
}

