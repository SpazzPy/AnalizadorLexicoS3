%{
#include <stdio.h>  // Incluye la biblioteca estándar de entrada/salida para usar printf.
%}

%%  // Inicia la sección de reglas del analizador léxico.

"class "[a-zA-Z_][a-zA-Z0-9_]*      { printf("CLASE: %s\n", yytext + 5); }  // Reconoce la palabra clave "class" seguida de un identificador y lo imprime.
"def "[a-zA-Z_][a-zA-Z0-9_]*        { printf("FUNCION: %s\n", yytext + 3); }  // Reconoce la palabra clave "def" seguida de un identificador y lo imprime.
"import ".*                         { printf("LIBRERIA: %s\n", yytext + 7); }  // Reconoce la palabra clave "import" seguida de cualquier cosa y lo imprime.
"# ".*                              { printf("COMENTARIO: %s\n", yytext); }  // Reconoce un comentario (comienza con "# ") y lo imprime.
[a-zA-Z_][a-zA-Z0-9_]*              { printf("ID: %s\n", yytext); }  // Reconoce un identificador y lo imprime.
[0-9]*\.[0-9]+                      { printf("FLOAT: %s\n", yytext); }  // Reconoce un número flotante y lo imprime.
[0-9]+                              { printf("INTEGER: %s\n", yytext); }  // Reconoce un número entero y lo imprime.
[=+\-*/(){}\[\],:]                  { printf("SIMBOLO: %s\n", yytext); }  // Reconoce un símbolo y lo imprime.
[ \t\n]+                            { /* ignora espacio en blanco y salto de linea */ }
.                                   { printf("TOKEN DESCONOCIDO: %s\n", yytext); }  // Reconoce cualquier otro carácter y lo imprime como token desconocido.

%%  // Finaliza la sección de reglas y comienza la sección de código C.

int main() {  // Función principal del programa.
    yyin = fopen("test.py", "r");  // Abre el archivo "test.py" para leerlo como entrada del analizador léxico.
    yylex();  // Inicia el analizador léxico.
    return 0;  // Retorna 0 indicando que el programa finalizó correctamente.
}
