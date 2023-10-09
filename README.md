# AnalizadorLexicoS3

Saludos, le escribe Frannie Fermín 1-16-0408 \
\
Aquí les presento mi analizador léxico para el lenguaje python. \
\
Hasta el momento puede reconocer clases, funciones, librerías, comentarios de una sola línea, variables, flotantes, integers, símbolos, y tokens desconocidos (todo lo demás).


## Instalaciones

1. Instalar minGW
1. Instala Flex
1. Asegúrate que ambos estén en el PATH dentro de las variables de entorno
1. Copia de Flex el archivo libfl.a encontrado en GnuWin32/lib
1. Pega libfl.a en MinGW/lib
1. Instalar Visual Studio Code y ábrelo

Video tutorial de los pasos 1 - 5: [Youtube](https://www.youtube.com/watch?v=nFGcPlW_rOw)


## Correr el analizador léxico

1. Con VS Code abierto
1. Clona este repositorio y verifica que test.py y también analizador.l estén en el mismo folder
1. En VS Code abres una nueva terminal, y seleccionas cmd
1. Ejecuta el comando ```flex analizador.l```
1. Ejecuta el comando ```gcc lex.yy.c -lfl``` (esto creará un lex.yy.c en tu folder)
1. Ejecuta el .exe desde la terminal. Creará un ejecutable que lo más probable se llame a.exe por lo que solo escriben ```a``` en la terminal y presionas enter
1. Ver los resultados en la terminal

## Resultados Esperados
Una serie de textos en la terminal indicando lo que el analizador léxico reconoció del código, seguido por el token reconocido.\
\
La terminal se debería ver como lo siguiente:

```
COMENTARIO: # Importa la biblioteca math
LIBRERIA: math
COMENTARIO: # Define una clase
CLASE:  MiClase
SIMBOLO: :
COMENTARIO: # Define una funcion dentro de la clase
FUNCION:  mi_funcion
SIMBOLO: (
ID: self
SIMBOLO: ,
ID: x
SIMBOLO: )
SIMBOLO: :
COMENTARIO: # Utiliza una funcion de la biblioteca math
ID: return
ID: math
TOKEN DESCONOCIDO: .
ID: sqrt
SIMBOLO: (
ID: x
SIMBOLO: )
COMENTARIO: # Crea una instancia de la clase
ID: mi_objeto
SIMBOLO: =
ID: MiClase
SIMBOLO: (
SIMBOLO: )
COMENTARIO: # Utiliza la funcion de la instancia de la clase
ID: print
SIMBOLO: (
ID: mi_objeto
TOKEN DESCONOCIDO: .
ID: mi_funcion
SIMBOLO: (
INTEGER: 16
SIMBOLO: )
SIMBOLO: )
```
