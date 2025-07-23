%{
#include <stdio.h>
void yyerror(char *s);
int yylex();
%}

%token WHILE LPAREN RPAREN LBRACE RBRACE NUM ID EQ SEMI ASSIGN DIV
%start stmt

%%
stmt : WHILE LPAREN condition RPAREN block ;

condition : ID EQ NUM ;

expr : ID ASSIGN ID DIV NUM SEMI;

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
