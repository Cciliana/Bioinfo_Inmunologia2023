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
``` ruby
?plot
?log
```

Para ver un ejemplo de la función:

```ruby
example (log)
example (plot)
```

Al igual que en Twitter, R hace uso del signo `#` para añadir comentarios, de forma que cualquiera que lea tu código sepa que objetivo tiene.

Por ejemplo:
```ruby
# Calcular 3 + 4
3 + 4
```
También puedes ejecutar comandos de R directamente en la consola. Esta es una buena forma de experimentar con el código R.

---
### **ARITMÉTICA EN R**
La forma más básica de usar R es como una calculadora (eso sí, de esas finas con graficador y todo).
Vamos hacer aritmética con R, para ello es importante que siempre recuerdes que usa los siguientes operadores aritméticos:

Suma: `+`

Resta: `-`

Multiplicación: `*`

División: `/`

Exponente: `^`


A la terminal:

```ruby
# Calcula 10 + 15
10 + 15

#Calcula 50 * 60
50 * 60 /564
```

---
### **VARIABLES**

R trabaja con variables, un concepto básico (estadístico) en programación. Es un elemento del lenguaje al que le podemos asignar un valor, para definir una variable en R se realiza una operación de asignación empleando el signo `<-`:
```ruby
# Asigna el 95 a x
x <- 95
```
Aquí se guardó el valor 95 a x, pero no le ordenamos que lo mostrara (recuerden, así como en sus relaciones sociales, la comunicación clara con R es esencial para que nos muestre lo que necesitamos hacer):
```ruby
# Muestra la variable x
x
```
En R no solo puedes almacenar números, existen distintos tipos de datos con los que puedes trabajar, algunos de los más populares son:

*Numerics*: valores con números decimales

*Integers*: números enteros (Aún que también forman parte de los numéricos)

*Logical*: emplea valores Booleanos (TRUE or FALSE)

*Characters*: texto (or String)

Vamos hacer unas pruebitas, van a asignar los siguientes valores a tres variables diferentes: `54`, `ATCGATUGAAATTAAGCAT`, `TRUE`:
```ruby
#Asigna los valos datos a tres variables y comprueba la asignación
numerics <- 54
numerics

characters <- ATCGATUGAAATTAAGCAT
characters

logical <- TRUE
logical
```

Vamos a usar el siguiente comando `class()` para saber que tipo de dato es:
```ruby
#Corrobora el tipo de dato asignado a tus variables
class(numerics)
```
Saber con que tipo de datos estamos trabajando es muy importante a la hora de organizar tablas muy grandes, o incluso en seleccionar que tipo de operación vamos a usar para cada tipo de datos.

#### **¿Subimos la complejidad?**

Estamos haciendo un experimento que va a salvar nuestra tesis, vamos a guardar el número de ratones que tenemos para cada condición:
```ruby
#Asigna un valor a cada condición
wild_type <- 6
knockout_csf <- 6

#¿Cuál es el resultado de sumar todas las variables?
wild_type + knockout_csf

#Crea una variable que tenga todas tus variables:
best_experiment <- wild_type + knockout_csf
```
---
#### **VECTORES**

El siguiente paso es conocer otros elementos que se pueden asignar a una variable, vamos a ver qué es un vector. Un vector en R es un arreglo unidimensional que puede contener datos numéricos, caracteres o datos lógicos. En términos prácticos diríamos que un vector es otra herramienta para guardar varios datos en un solo espacio. Para crear un vector en R se coloca la función `c()`, dentro de los paréntesis van a ir los elementos que tu desees, estos siempre deben ir separados por una coma.

Regresemos a los ratones:
Los ratoncitos fueron inoculados con una línea que forma tumores mamarios, el peso de cada ratón fue registrado cada 3 días durante 24 días, aquí mostramos el ejemplo de uno de ellos:
```ruby
wild_weight <- c(0, 10, 20, 60, 78, 80, 75, 90, 95)
knockout_weight <- c(0, 10, 20, 40, -10, -15, -30, -20, -15)
```
Ahora vamos a nombrar un vector, como los grandes analistas de datos que serán. Recuerden que es importante siempre tener una visión clara de los datos que están usando, y entender a que se refiere cada elemento es esencial para lograrlo.

```ruby
days_vector <- c(“0d”, “3d”, “6d”, “9d”, “12d”, “15d”, “18d”, “21d”, “24d” )
names(wild_weight) <- days_vector
names(knockout_weight) <- days_vector

#No olvides decirle a R que te muestre el resultado:
wild_weight
knockout_weight
```
Vamos a realizar operaciones que nos ayuden a conocer a nuestros datos:
```ruby
#Calcular cuánto peso gano cada uno de los ratoncitos

total_wild <- sum(wild_weight)
total_knockout <- sum(knockout_weight)

#¿El ratón knockout tiene mayor o menor peso que el control?:
total_wild>total_knockout
total_wild<total_knockout
```
Ustedes pueden realizar casi cualquier comparación que se les venga a mente, aquí les dejamos los operadores lógicos más usados en R:

`<`Menor que

`>`Mayor que

`<=`Menor o igual a

`>=`Mayor o igual a

`==`Iguales entre sí

`¡=`Diferentes entre si

Vamos a aprender a como crear una nueva variable basada en una selección:
```ruby
#Solo quiero ver los datos del día 6 al 24
wild_selection <- wild_weight [3:9]

#Hacer una nueva variable basada en una comparación
#Queremos saber en qué días el ratón knockdown perdió peso
comparison_vector<- knockout_weight<0

#Hay que colocar en un vector esos datos:
weight_loss<- knockout_weight [comparison_vector]
weight_loss
```
---
### **MATRICES**

Hasta este momento ya hemos conocido como trabajar con elementos unidimensionales en R, pero no es todo lo que podemos hacer, comenzaremos a trabajar con matrices. Una matriz en R se refiere a una colección de elementos con el mismo tipo de datos, arreglados en un determinado número de filas y columnas.
Tu puedes construir una matriz en R con la función `matrix()`. 

```ruby
#Construye tu primera matriz
matrix (1:9, byrow = TRUE, nrow = 3)

#Regresemos a los ratones, vamos a poner en una matriz los siguientes datos
initial_weight <- c(20.2, 21.3)
final_weight <- c(24.3, 21.1)
tumor_volume <- c(50, 450)

#Queremos poner todos esos datos en la matriz, primero lo pondremos dentro de una variable
parameters <- c(initial_weight, final_weight, tumor_volume)
matrix_parameters <- matrix(parameters, byrow = TRUE, nrow = 3)
```
Así como es importante nombrar las variables, hay que nombrar las matrices:
```ruby
#Coloca en un vector los nombres de las distintas condiciones que se encontraran en las filas y columnas
name_parameters <- c(“Initial weight (g)”, “Final weight (g)”, “Tumor volume (mm3)”)
condition <- c("Wild_type", “Knockout_CSF1”)

#Nombra las columnas con la condición
colnames(matrix_parameters) <- condition

#Nombra las filas con los parámetros que medimos
rownames(matrix_parameters) <- name_parameters

#Muestra como quedo la matriz:
matrix_parameters
````
Días después de sacar el experimento ustedes terminan de cuantificar los valores de la proteína CSF1 por citometría de flujo y WB en los ratónes, ¿Se puede agregar una nueva fila que contenga estos datos en nuestra matriz?, la respuesta es SI, con la función `rbind()`, si quieren agregar columnas es con la función `cbind()`:

Lo primero es hacer la matriz con esos nuevos datos:
```ruby
expression_flow <- c(50.5, 10.1)
expression_wb <- c(120, 23)
expression_csf <- c(expression_flow, expression_wb)
matrix_expression <- matrix(expression_csf, nrow =2, byrow =TRUE,
                                         dimnames = list (c(“IMF_CSF1”, “WB_CSF1” ), 
                                                          c((“Wild_type”, “Knockdout_CSF1”))
matrix_protein <- rbind (matrix_parameters, matrix_expression)
matrix_protein
```
Ahora, cómo podemos seleccionar elementos en nuestra matriz, no siempre queremos hacer operaciones con todos datos. Para marcarle una selección a R siempre usamos `[]`, las matrices son bidimensionales, entonces necesitamos saber como decirle que nos seleccione una fila o una columna:

`my_first_matrix[1,]` selecciona todos los elementos de la primera fila

`my_first_matrix[,1]` selecciona todos los elementos de la primera columna

También podemos seleccionar más variables:

`my_first_matrix[1,2]` selecciona los elementos del primer renglón de la segunda columna

`my_first_matrix[5:8, 90:115]` selecciona  los datos de los renglones 5 al 8 y las columnas de la 90 a la 115

A practicar:
```ruby
#Selecciona los datos del knockout y colócalo en una variable:
parameters_knockdown <- matrix_protein [,2]

#Selecciona solo los valores de peso
parameters_weight <- matrix_protein [1:2]

#¿Cuál es la media de los pesos obtenidos?
mean(parameters_weight)
```
`mean()` no es el único parámetro que puedes analizar, también se pueden sumas columnas o filas con las funciones `colSums()` y `rowSums()`, respectivamente.

---
### **DATA FRAME**

Como vieron, todos los elementos que tenia nuestra matriz eran del mismo tipo (númerico), pero que pasa si nosotros queremos poner elementos lógicos o caracteres. Por ejemplo:

Subtipo de cancer, “luminal o basal” (caracteres)

Tratamiento , “SI” o “NO” (lógicos)

Lo primero que harémos es crear nuestro primer data frame usando la función `data.frame()`

```ruby
#Pon toda la información en vectores
condition_df <- c("Wild_type", "Wild_type_tumor", "Knockout_CSF1", "Knockout_CSF1_tumor")
ini_weight <- c(20.2, 20.5, 21.3, 22.5)
fin_weight <- c(24.3, 23.5, 22.3, 21.1)
tumor_injection<- c(FALSE, TRUE, FALSE, TRUE)

#Crea un data frame a partir de tus vectores
expe_mouse <- data.frame(condition_df, ini_weight, fin_weight, tumor_injection)
expe_mouse

#Revisa la estructura del data frame
str(expe_mouse)
```

Vamos a trabajar con un data frame un tanto más grande, pero al que nos vamos a enfrentar comunmente en los análisis OMICOS, lo primero es colocar el data frame en la carpeta en la que han estado trabajando.

El siguente paso es cargarlo en nuestro espacio de trabajo:
```ruby
#Leer data frame de datos de expresión de RNASeq
expression_data <- read.csv("expression_RNASeq.csv")
```

Para comenzar a explorar los datos que tiene nuestro data frame podemos emplear las siguientes funciones; 

`head()`, nos muestra los primeros 6-10 renglones del data frame

`tail()`, nos muestra los últimos 6-10 renglones del data frame

`str()`, nos dice que tipo de archivo, cuan grande es y el tipo de datos que tiene cada columna.

`summary()`, también nos dice que tipo de archivo es, su tamaño, el tipo de datos, así como un análisis básico de aquellos datos que sean de tipo númericos
```ruby
head(expression_data)
tail(expression_data)
str(expression_data)
summary(expression_data)
```






































