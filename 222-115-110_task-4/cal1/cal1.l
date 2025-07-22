%option noyywrap

%{
    #include "cal1.tab.h"
%}

digit [0-9]
number ({digit}+)
delim [ \t\n]
ws {delim}+
alpha [A-Za-z]
undr [_]

%%
{ws} {}
{number} {yylval = atoi(yytext); return(NUM);}
"+" {return(ADD);}
"-" {return(SUB);}
%%
