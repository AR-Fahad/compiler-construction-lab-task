%{
#include <stdio.h>
void yyerror(char *s);
int yylex();
%}

%token IF ELSE LPAREN RPAREN LBRACE RBRACE NUM ID ASSIGN EQ SEMI
%start stmt

%%

stmt: IF LPAREN condition RPAREN block ELSE block
    | IF LPAREN condition RPAREN block
    ;

condition: ID EQ NUM ;

expr: ID ASSIGN NUM SEMI ;

block: LBRACE expr RBRACE ;

%%

void yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    yyparse();
    printf("Parsing Finished\n");
    return 0;
}
