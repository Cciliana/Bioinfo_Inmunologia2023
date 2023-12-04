# Anaconda/Conda

Conda es un sotfware enfocado en la gestión de paquetes para evitar incompatibilidades, crea una especie de burbuja para instalar una serie de programas sin causar problemas (eso es lo ideal). Esto muy útil porque los programas se valen de *dependencias* para trabajar, es decir, necesitan de otros programas para podoer funcionar y en ocasiones hay algunos que no se llevan bien, o que las versiones  ya no son comptibles... todo este tipo de problemas lo soluciona Anaconda en la mayoría de los casos.

Resulta una herramineta de gran valor en la bionformática, nos permite trabajar con versiones especificas de manera aislada al equipo global. Imaginemos que todos nostros nos conectamos al mismo cluster para trabajar, gestionar todas los programas necesarios resultaría en un caos, en cambio si cada uno puede tener su propio espacio de trabajo sin influir en el sistema de los demás representa una enorme ventaja.

Instalación:

1. Descarga el instalor adecuado para tu SO de [Miniconda](https://docs.conda.io/projects/miniconda/en/latest/), para ello da click derecho sobre el instlador y copia el enlace.
2. Abre tu terminal Linux, escribe wget, pega el enlace que copiaste y ejecuta:
    
        $ wget enlace_conda

3. Cuando términe verás que se descargo un archico con extensión *.sh*. Deberás ejecutarlo:

        $ sh fileconda.sh
    
    Confirma lo que te sea requerido siguiendo Al finaliza cierra tu terminal y abrela de nuevo (esto e spara reiniciar el Shell).

[Vídeo de apoyo](https://youtu.be/P6eGTN9QN2Q?si=UtVllFqq7E03tt9B)

Para este punto ya tenemos instalado Conda ¿Notas algo distinto? Ahora vamos a usar Conda. 

+ Para crear un ambiente conda:
            
        $ conda create --name nombredelambiente biopython --y

+ Para activar el ambiente:

      $ conda activate nombredelambiente

+ Para desactivarlo: 
  
        $ conda deactivate

+ Para instalar un herramienta debemos situarnos dentro de nuestro ambiente activo. Después buscamos el link de intalación de nuestra herramienta en la página de conda, lo pegamos en la terminal, ejecutamos y listo. Por ejmplo: voy a instalar un programa llmado [FastQC](https://anaconda.org/bioconda/fastqc).

        $ conda install -c bioconda fastqc

### **Tarea:**
+ Instala FastQC y MultiQC en un ambiente conda.







