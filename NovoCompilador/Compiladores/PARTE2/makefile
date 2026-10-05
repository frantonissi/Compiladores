simples: lexico.l sintatico.y ;\
    flex -o lexico.c lexico.l
    bison -o sintatico.c sintatico.y -v -d
    gcc lexico.c sintatico.c -o simples

limpa: ;\ 
    rm simples lexico.c sintatico.c sintatico.h sintatico.output