identificador [a-zA-Z]([a-zA-Z0-9])*
numero [0-9]+
espaco [ \t]+
novalinha[\n]

%%

programa (printf("%11: palavra reservada\n", yytext);)
inicio (printf("%11: palavra reservada\n", yytext);)
fimprograma (printf("%11: palavra reservada\n", yytext);)

leia (printf("%11: palavra reservada\n", yytext);)
escreva (printf("%11: palavra reservada\n", yytext);)

se (printf("%11: palavra reservada\n", yytext);)
entao (printf("%11: palavra reservada\n", yytext);)
senao (printf("%11: palavra reservada\n", yytext);)
fimse (printf("%11: palavra reservada\n", yytext);)

enquanto (printf("%11: palavra reservada\n", yytext);)
faca (printf("%11: palavra reservada\n", yytext);)
fimenquanto (printf("%11: palavra reservada\n", yytext);)

"+" (printf("%11: operador aritimetico soma\n", yytext);)
"-" (printf("%11: operador aritimetico subtracao\n", yytext);)
"*" (printf("%11: operador aritimetico multiplicacao\n", yytext);)
"/" (printf("%11: operador aritimetico divisao\n", yytext);)

"<-" (printf("%11s: operador atribuicao\n", yytext);)
"(" (printf("%11s: operador abre parenteses\n", yytext);)
")" (printf("%11s: operador fecha parenteses\n", yytext);)

inteiro (printf("%11: palavra reservada\n", yytext);)
logico (printf("%11: palavra reservada\n", yytext);)
V (printf("%11: constante logica de verdade\n", yytext);)
F (printf("%11: constante logica de falsidade\n", yytext);)

(identificador)  (printf("%11: identificador\n", yytext);)
(numero)  (printf("%11: numero\n", yytext);)
(espaco)  /* ignora espacos em branco */
(novalinha)  /* ignora nova linha */
.        (printf("%11: simbolo nao reconhecido\n", yytext);)

%%

int yywarp(void){
    return 1;
}


int main(void){
    yylex();
    return 0 ;
}