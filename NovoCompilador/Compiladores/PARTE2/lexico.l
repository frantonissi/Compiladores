%{
#include "sintatico.h"
void erro_lexico(char *);
int nlinha = 1;
%}

identificador [a-zA-Z]([a-zA-Z]|[0-9])*
numero [0-9]+
espaco [ \t]+
novalinha [\n]

%%
programa          { return T_PROG; }
inicio            { return T_INICIO; }
fimprograma       { return T_FIM; }
leia              { return T_LEIA; }
escreva           { return T_ESCREVA; }
se                { return T_SE; }
entao             { return T_ENTAO; }
senao             { return T_SENAO; }
fimse             { return T_FIMSE; }
enquanto          { return T_ENQTO; }
faca              { return T_FACA; }
fimenquanto       { return T_FIMENQTO; }

inteiro           { return T_INTEIRO; }
logico            { return T_LOGICO; }

V                 { return T_V; }
F                 { return T_F; }

"+"               { return T_MAIS; }
"-"               { return T_MENOS; }
"*"               { return T_VEZES; }
div               { return T_DIV; }
">"               { return T_MAIOR; }
"<"               { return T_MENOR; }
"="               { return T_IGUAL; }
E                 { return T_E; }
OU                { return T_OU; }
NAO               { return T_NAO; }
"<-"              { return T_ATRIB; }

{identificador}   { return T_IDENTIF; }
{numero}          { return T_NUMERO; }
{espaco}          {  }
{novalinha}       { nlinha++; }

.                 { erro_lexico (yytext); }
%%


void erro_lexico(char *s) {
    fprintf(stderr, "Erro Léxico na linha %d.\n", nlinha);
    fprintf(stderr, "  símbolo %s desconhecido\n\n", s);
    exit(10);
}

int yywrap() {
  return 1;
}