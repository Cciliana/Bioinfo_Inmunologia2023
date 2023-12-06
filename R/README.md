# Introducción a la programación en R

R es un lenguaje de programación para estadística y representación gráfica de software libre. 

**Ventajas de R**

1. R tiene muchos paquetes complementarios: pero se usa en biología,tiene una colección de paquetes muy amplia.
2. Todas las paqueterías son de libre acceso (ya saben, la ciencia que no se comunica no es ciencia).

**R también tiene sus cositas**

1. No fue escrito para no programadores.
2. Es un nuevo lenguaje que aprender, así que tiene su curva de aprendizaje, como cuando aprendes hablar cualquier idioma.
3. Solo habla inglés.

Y bueno, vamos a comenzar a explorarlo. Lo primero, porqué les pedimos instalar dos Rs, les contare que RStudio en un entorno de programación, osease es un programa que nos va a ayudar a escribir programas, y es super buena onda… porque cuando somos nuevos podemos cometer muchos errores al escribir código, R pensó en eso y para ayudarnos tiene herramientas para buscar errores en los códigos, así como el autocorrector de su word. Conforme vayamos avanzando se darán cuenta de lo importante que es esto de identificar los errores.


## Primero lo primero:

Trabajar en R sigue una estructura básica de comunicación. Siempre hay un emisor y un receptor. Cada que nosotros hablemos con R, tendremos que dar un enter. Después de eso, el nos mostrara su respuesta. 

**Entonces, manos al teclado:**

Obtención de ayuda básica en R

Manual básico de R: `help.start()`

Ayuda de comandos específicos: `?nombredelcomando`
```
?plot
?log
```

Para ver un ejemplo de la función:

```
example (log)
example (plot)
```

Al igual que en Twitter, R hace uso del signo `#` para añadir comentarios, de forma que cualquiera que lea tu código sepa que objetivo tiene.

Por ejemplo:
```
# Calcular 3 + 4
3 + 4
```
También puedes ejecutar comandos de R directamente en la consola. Esta es una buena forma de experimentar con el código R.
---
### **Aritmética en R**
La forma más básica de usar R es como una calculadora (eso sí, de esas finas con graficador y todo).
Vamos hacer aritmética con R, para ello es importante que siempre recuerdes que usa los siguientes operadores aritméticos:

Suma: `+`

Resta: `-`

Multiplicación: `*`

División: `/`

Exponente: `^`


A la terminal:

```
# Calcula 10 + 15
10 + 15

#Calcula 50 * 60
50 * 60 /564
```

---
### **Variables**

R trabaja con variables, un concepto básico (estadístico) en programación. Es un elemento del lenguaje al que le podemos asignar un valor, para definir una variable en R se realiza una operación de asignación empleando el signo `<-`:
```
# Asigna el 95 a x
x <- 95
```
Aquí se guardó el valor 95 a x, pero no le ordenamos que lo mostrara (recuerden, así como en sus relaciones sociales, la comunicación clara con R es esencial para que nos muestre lo que necesitamos hacer):
```
# Muestra la variable x
x
```
En R no solo puedes almacenar números, existen distintos tipos de datos con los que puedes trabajar, algunos de los más populares son:

*Numerics*: valores con números decimales

*Integers*: números enteros (Aún que también forman parte de los numéricos)

*Logical*: emplea valores Booleanos (TRUE or FALSE)

*Characters*: texto (or String)

Vamos hacer unas pruebitas, van a asignar los siguientes valores a tres variables diferentes: `54`, `ATCGATUGAAATTAAGCAT`, `TRUE`:
```
#Asigna los valos datos a tres variables y comprueba la asignación
numerics <- 54
numerics

characters <- ATCGATUGAAATTAAGCAT
characters

logical <- TRUE
logical
```

Vamos a usar el siguiente comando `class()` para saber que tipo de dato es:
```
#Corrobora el tipo de dato asignado a tus variables
class(numerics)
```

























