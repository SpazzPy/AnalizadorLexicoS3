# AnalizadorLexicoS3

Saludos, le escribe Frannie Fermin 1-16-0408 \
\
Aqui les presento mi analizador léxico para el lenguaje python. \
\
Hasta el momento puede reconocer clases, funciones, librerias, comentarios de una sola linea, variables, flotantes, integers, simbolos, y tokens desconocidos (todo lo demas).


## Instalaciones

1. Instalar minGW
1. Instala Flex
1. Asegurate que ambos esten en el PATH dentro de las variables de entorno
1. Copia de Flex el archivo libfl.a encontrado en GnuWin32/lib
1. Pega libfl.a en MinGW/lib
1. Instalar Visual Studio Code y abrelo
```
Video tutorial de los pasos 1 - 5: https://www.youtube.com/watch?v=nFGcPlW_rOw
```

## Correr el analizador Léxico

1. Abrir VS Code
1. Clona este repositorio y verifica que test.py y tambien analizador.l esten en el mismo folder
1. En VS Code abres una nueva terminal, y seleccionas cmd
1. Ejecuta el comando flex analizador.l
1. Ejecuta el comando gcc lex.yy.c -lfl
1. Ejecuta el .exe desde la terminal. Lo mas probable es que se llame a.exe por lo que solo podran ```a``` en la terminal y presionas enter
1. Ver los resultados en la terminal

