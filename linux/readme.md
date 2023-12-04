# Terminal Linux

### **Introducción**

Hola, Mundo.

Hoy hablaremos un poquito sobre **Linux** pero de una forma simple porque somos de ciencias biológicas :S

Linux es un *Kernel*, es decir, es el "núcleo" de un sistema operativo (SO) y es quien regula los recursos de una compoutadora, la interraccion Software-Hardaware. El kernel de Linux es de código abierto, lo que significa que su código fuente está disponible para ser modificado, mejorado y adaptado a diferentes dispositivos y necesidades.

Si bien estrictamente el verdadero sistema operativo es GNU/Linux, se entiende que **Linux** es un sistema operativo.La acotación importante deberá ser ¿De cuál distribución de Linux estamos hablando?  Porque Linux existe en distitnas versiones diseñadas para fines diferentes y por ende su funcionamiento puede variar entre distribuciones pese a tener una base común. Este punto común es el sistema operativo UNIX de ATT&T, el mismo de Mac OS. Por ende mucho de lo que se hace en Linux se puede hacer con Mac, lo feo viene cuando quremos trabajar con en Windows :(

Si bien Windows es el SO más popular en el mundo, especialmente en equipos personales de compúto, la realidad es que nivel industria Linux tiene mayor representatividad. La mayoría de los servidores en el mundo usan Linux, como los de Google, Amazon, Facebook, NASA e incluso Netflix. 

Para nostros resulta importante conocer y manejar aunque sea de una forma básica este sistema... si en algún momento trabajamos con datos de secuenciación masiva, simulación de sistemas complejos, modelado 3D o cualquier tarea que requeira grandes recursos computacionales nuestra computadora personal seguramente quedará corta. En este escenario necesitaremos conectarnos a un *cluster* o a una *worksatiton* y los más seguro es que su SO sea Linux. Además, muchas de las herramientas computacionales que se usan en las ciencias omicas están desarrolladas en Linux. 

Una de las características de Linux es el uso de la terminal, aunque el SO  tiene un interfaza gráfica como cualquier otro, realmente Linux se trabaja a través de línea de comandos, en especial porque cuando nos conectamos a un servidor o computadora Linux no tenemos acceso o no existe la interfaz gráfica. Una de las ventajas de la terminal es que consume mucho menos recursos que la interfaz gráfica, lo cual optimiza los procesos. 

----

### **Trabajando en la terminal:**

Nota: las salidas que verán son un ejemplo, corresponden a mi equipo y por ende tu tendrás una distinta en comandos que dependen del contexto de la computadora. Los comandos a ejecutar se encuentrean después del signo "$" y la salida se representa después del signo ">".

Lo que nos importa es que cuando se enfrenten a un sistema Linux se sientan confiados. Para ello veremos como movernos en la terminal, generar archivos, ejecutar script's y algunos otros tips que les podamos brindar. La terminal funciona a base de comandos, la estructura básica de un comando es la siguiente: 

    comando [opciones] [argumentos]


Cuando abrimos la terminal entramos a un direcorio pero no sabemos a cual. Entonces, para saber en que directorio nos situamos podemos ejecutar el comando *pwd* el cual **va imprimir el direcorio actual de trabajo:**
    
    $ pwd
    > /home/jrmarval 

Esto también es útil para especificar rutas en nuestros comandos o script´s.

Para tener un orden en nuestra computadora y en este curso vamos a crear una carpeta para almacenar todo los archivos que vayamos generando. Para hacer esto usaremos el comando *mkdir*:

    $ mkdir curso_bioinfo_inm_encb

Cuando corran este comando no verán alguna salida pero el directorio ya fue generado. Si queremos ver los elementos que están en un directorio usamos el comando *ls*

    $ ls
    > [Elementos presentes en el directorio]

    $ ls -lh
    > total 12K
    drwxr-xr-x 9 jrmarval jrmarval 4.0K Nov  9 15:19 RNAseq_uivc

    drwxr-xr-x 4 jrmarval jrmarval 4.0K Dec  2 02:49 bioinf_inm_encb_ipn

    drwxr-xr-x 2 jrmarval jrmarval 4.0K Dec  2 02:49 curso_bioinfo_inm_encb

    -rw-r--r-- 1 jrmarval jrmarval   16 Dec  2 03:00 test.txt

Como vemos nuestro directorio **curso_bioinfo_inm_encb** fue creado. Ahora para movernos entre directorios usamos el comando *cd*. Veremos que el prompt muestra el nombre del directorio actual de trabajo.

    $ cd curso_bioinfo_inm_encb
    > [jrmarval@LAPTOP-8SI0DC1R:~/marval/curso_bioinfo_inm_encb$]

Si queremos regresar al directorio anterior ejecutamos:

    $ cd ..
    > [Directorio anterior de trabajo]

Si quisieramos movernos a una ruta en especial podemos indicar la ruta destino en un solo comando:

    $ cd /rutadestino

¿Qué pasa cuándo se ejecuta?

    $ cd -
    $cd --

Ahora que estamos dentro de nuestro directorio de trabajo sería bueno crear un archivo. Para ello usaremos un editor de texto plano, algo así como un Word-Office pero versión sencilla para la terminal. Existen varias herramientas pero nostros usaremos *nano*. Vamos a generar dos archivos para seguir con los ejercicios.  

    $ nano file1.txt
    $ nano file2.txt

Lo anterior abre una ventana en la que podemos escribir todo lo que nos podamos imaginar. Los podemos visualizar de una forma sencilla con el comando *less*.

Es importante cuidar la extensión del archivo, pues esto determina las características del archivo. Podemos tener un archivo de texto (txt), algún script ejecutable para Bash (.sh) o Python (.py). Muchas veces no es necesario indicar la extensión pero hacerlo es una buena práctica para identificar el tipo de archivos con mayor facilidad, así que tratemos de hacerlo siempre. 

Una parte importante del crear algo es tener la capacidad de poderlo borrar y para ello tenemos el comando *rm*.

    $ rm file1.txt 

Para eliminar un directorio con los elementos que estén en el debemos hacerlo agregando una opción al comando anterio.

    $ rm -r curso_bioinfo_inm_encb

Imagina que tines 10 archivos, 5 con la terminación txt y otros 5 con csv. Y quieres eliminar los txt ¿Cómo lo harías?

Tip: wildcard *

**Ojo: en la terminal no existe la "papelera" por lo que debemos ser muy cuidadosos cuando queramos borrar algo, una vez eliminado no hay vuelta atrás.** 

Otra función importante y que nos ayudará a no proteger nuestra información es realziar copias de nuestros archivos. Para copiar un archivo usamos el comando *cp*:

    $ cp file1.txt /direcorio_destino

Debemos tener cuidado de copiar archivos con nombres identicos a algún otro archivo en el directorio destino pues esto sobreescribira la informacíon del archivo residente y podríamos perder su informacíon. 

Pero si lo que queremos es solo cambiar la ubicación de un archivo empleamos el comando *mv*:

    $ mv file1.txt curso_bioinfo_inm_encb

Este comando también sirve para cambiar el nombre de un archivo, en este caso en lugar de indicar la ruta destino deberemos indicar el nuevo nombre del archivo:

    $ mv file1.txt new_file1.txt

Para tener más claro la idea de sobreescribir un archivo en Linux hagamos lo siguiente. Escribe "Hola" en un archivo test.txt.

    $ nano test.txt

Ahora pongamos:

    $ echo "adios" > test.txt

+ ¿Qué sucedió? ¿Qué hace el comando *echo*?
+ Ahora escribe:

        $ echo "Hola, de nuevo" >> test.txt

+ ¿Ahora qué sucede?

---
#### **Script**

Como habrás notado puedes hacer tareas directamente en la terminal pero cuando tengas una tarea mayor y  repetitiva frente a ti no suena tan buena idea introducir el comando *n* cantidad de veces, esperando a que termine un proceso para ingresar para el sigueinte comando. Podemos hacer que la computadora trabaje para nosotros, unificar la secuencia de comandos, lanzarlos e irnos a casa o donde tengamos que ir.  

Lo anterior es posible gracias a los **script's**, un archivo ejecutable por un lenguaje de programación como R, Python o Bash. En el caso de Linux el empleado por el SO es Bash pero si quieres saber que interprete de Shell (comandos por terminal) tiene tu equipo simplemente ejecuta:

    $ echo $SHELL

Para crear un script de bash usamos el editor de textos *nano* y lo guardamos con la extensión sh.

    $ nano mi_primer_script.sh

Una vez dentro del editor escribimos:

    #!/bin/bash
    echo "Hola, $USER"

Para ejecutar el el script:

    $ ./my_primer_script.sh


¿Cuál es el resultado? ¿El script funcinó? ¿Tiene idea de que pasó? ¿Comó defines $USER?

Recordemos que Linux es un sistema multiusario, es decir, varias personas pueden estar trabajando en él al mismo tiempo por lo que la gestión de recursosy de archivos es un aspecto clave. Para resolver esto hay todo un sistema de permisos que te permiten realizar ciertas tareas. Veamos esto de forma práctica ejecutando:

    $ ls -lh
    drwxr-xr-x  4 jrmarval jrmarval 4.0K Nov  7 21:28 evo_helena

    drwxr-xr-x  5 jrmarval jrmarval 4.0K Dec  2 03:53 marval

    -rwx------  1 jrmarval jrmarval   33 Dec  2 13:30 mi_primer_scrip.sh

    drwxr-xr-x 19 jrmarval jrmarval 4.0K Oct 23 01:59 miniconda3

    drwx------  3 jrmarval jrmarval 4.0K Oct 26 11:09 snap

    drwxr-xr-x  2 jrmarval jrmarval 4.0K Oct 23 01:58 software

    ----------  1 jrmarval jrmarval   67 Nov 15 11:32 time.sh

Este comando nos lista los elementos del directorio actual de trabajo pero también nos indica si se trata de un directorio o de un archivo. Además, nos indica los permisos que tiene cada uno de los elementos. Esto esta codificado en tercias que corresponden a la actividad a realziar; **x:ejecutar | r:leer | w:escribir**. Y son aplicables para tres tipos de usarios: Propietario, Grupos y Otros.

Para dar los permisos de ejecución a un archivo se usa un código númerico.

    Leer        | 4
    Escribir    | 2
    Ejecutar    | 1


Por ejemplo si queremos que un script tenga todos los permisos para todos los usuarios ejecutamos:

    $ chmod 777 time.sh
    $ ls -lh
    -rwxrwxrwx  1 jrmarval jrmarval   67 Nov 15 11:32 time.sh

Ahora tu modifica los permisos necesarios para ejecutar el archivo mi_primer_script.sh y verifica que los permisos hayan cambiado. Una vez esto hecho ejecuta el script.

    $ ./my_primer_script.sh

¿Qué será $USER? 
Se trata de una variable de entorno GLOBAL que contiene el usuario del sistema. El puunto importante aquí es que podemos declarar variables (contenedor de información) en Linux para mejorar nuestros programas. Por ejemplo:

    $ nano mi_primer_script.sh

    #!/bin/bash
    echo "Hola, $1"

¿Cuál será la salida? Pues en efecto será un saludo con el contenido de la variable $1, la cual se define en la línea de comandos:

    $ ./mi_primer_script.sh tu_nombre
    Hola, tu_nombre

Ahora si quieres saber cuando tiempo tarda en ejecutarse su script puedes correr:

    $ time ./mi_primer_script.sh 

Con este ejemplo no verás muchas diferencia porque el proceso es muy rápido pero en tareas que toman mucho tiempo saber cuanto tarda en ejecutarse un proceso es muy útil para optimizar nuestro trabajo. Veamos el siguiente script:

    #!/bin/bash
    # Obtener la fecha actual
    DATE=$(date)
    echo "El script inicia $DATE"
    echo  Hola, $1
    sleep 10
    # Obtener la fecha nuevamente
    DATE=$(date)
    echo Oye $1, el proceso ha terminado $DATE

¿Qué hace y como se comporta este script?
Cuando lanzamos un proceso que toma tiempo la terminal queda "secuestrada" lo cual es un impedimento para seguir trabajando. Para ello podemos lanzar el script en segundo plano:

    $ nohup ./mi_primer_scrip.sh Raul &

    $ nohup ./mi_primer_scrip.sh Raul  > salida.txt 2> errores.txt &

¿Cuál es la diferencia entre estos dos maneras de ejecutar el scrip?

 Cada procesos genera un PID (Identificador de Procesos) y este puede ser rastreado para saber si mi proceso sigue en ejecución.
    
    $ ps -p <PID>
    $ ps aux | grep <PID>

Para ver todos los procesos de la computadora usamos el comando *top*.

Finalmente, veremos los *loops/ciclos/bucles* una manera de optimizar nuestros procesos, son una declaración de iteración lo cual esto es realmente útil para tareas repetitivas. 

El primero ciclo que veremos será el *for* el cual realiza una tarea para una variable en un un conjunto de elementos. 

    #!/bin/bash
    for i in 1 2 3 4 5 do
    echo "Hello $i"
    done  
 
     #!/bin/bash
    # Ciclo for que imprime los números del 1 al $1
    for ((i = 1; i <= $1; i++)); do
        echo "Número: $i"
    done
    echo Ciclo finalizado. 

    #!/bin/bash
    for i in * ; do
        echo He trabajado con el archivo = $i
    done

También existen ciclos condiconales, es decir, el que se realicen depende una que se cumpla alguna condición y encaso de no hacerlo se realiza otra tarea. Por ejemplo: 

    #!/bin/bash

    # Ejemplo para emitir un mensaje con base en una condición

    edad=$1
    if [ $edad -ge 18 ]; then
        echo "Eres mayor de edad."
    else
        echo "Eres menor de edad."
    fi


[Material sobre Operadores](https://medium.com/enredando-con-linux/linux-shell-operadores-8f385713e8ad) 

Otro tipo de ciclo importante es el *while*, el cual ejecuta una función minetras se una condición sea verdadera:

    #!/bin/bash
    # Inicializar un contador
    contador=1
    # Ciclo while que cuenta hasta $1
    while [ $contador -le $1 ]; do
        echo "Contador: $contador"
        ((contador++))
    done

---

### **Ejercicio:** 

1. Crea una carpeta llamada loop_for; coloca una imagen en ella y ponle el nombre que tu quieras. Ahora deberás generar esa imagen 5 veces usando el nombre que le diste como prefijo seguida de un número (1-5) para distinguir cada imagen. Después deberás ponerlas en un fichero llamado new_name pero ahora las imagenes llevaran el prefijo "figura" seguido del número que le corresponde. Realiza un script para esto y entre más automatizado se encunetre muchísimo mejor. 

2. Escribe una script que realice la tarea que tu quieras pero deberás emplear un ciclo *if* y/o *while*.

**Nota:** la computadora no piensa, solo hace cosas y a veces esas cosas no son las que queremos. 


---

### **Tips:**

+ Es importante cuidar el nombre de variables, archivos y directorios. Procura que sean breves, descriptivas, que no inicien con mayúsculas ni con números. Pero sobre todo que no contengan espacios, si consideras necesario poner un espacio puedes indicarlo con un guión bajo "_".

+ Siempre realiza un respaldo de tus datos, que sea lo primero que hagas.

+ Cuida el redirigir tus salidas, podrías perder información.

+ Es muy importante conocer la computadora, saber sus características te dará un idea para saber lo que puedes hacer. ¿Qué información se obtiene al ejecutar?

        $ lscpu

+ Siempre testear nuestros scripts con datos de pruba antes de lanzarlos con los datos reales.











