%{
#include <stdio.h>
void yyerror(char *s);
int yylex();
%}

%token DO WHILE LPAREN RPAREN LBRACE RBRACE NUM ID LE ADD ASSIGN SEMI
%start stmt

%%
stmt : DO block WHILE LPAREN condition RPAREN SEMI ;

condition: ID LE NUM ;

expr : ID ASSIGN ID ADD NUM SEMI ;

block : LBRACE expr RBRACE ;

%%

void yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    yyparse();
    printf("Parsing Finished\n");
    return 0;
}
