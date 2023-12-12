# **Ejercicios en R**

Para cerrar esta introducción a la bioinformática vamos a generar un par de gráficos que nos permitan comenzar a explorar el comportamiento de nuestros datos. Para este ejemplo usaremos un conjunto de datos provenientes de un experimento de RNAseq. Nuestro primer gráfico será un PCA (Análisis de Componentes Principales), el cual a través de un análisis de varianza nos ayuda a disminuir las dimensiones (variables) en nuestros datos, es decir, pondera las variables que están influyendo en la variación de los datos. El segundo gráfico que veremos será un *heatmap*, los cuales son empleados para observar patrones de comportamiento con base en una escala de colores que facilita su visualización. 

---

### **PCA: Análsis de Componentes Principales**

Lo primero que debemos hacer es instalar y activar las librerías necesarias para generar nuestro gráfico:


    install.packages("corrr")
    library(corrr)

    install.packages("ggplot2")
    library(ggplot2)

    install.packages("ggcorrplot")
    library(ggcorrplot)

    install.packages("FactoMineR")
    library(FactoMineR)

    install.packages("factoextra")
    library(factoextra)

Posteriormente debemos cargar la base de datos que utilizaremos, en este caso será el archivo: expresion_normalizada_mediana_GMCSF_vs_MACcoCC.csv

    # Establecer directorio de trabajo
    setwd("D:/marval_windows/JR_MARVAL/ceci") 
    list.files()

    # Cargar datos
    data <- read.table(file="expresion_normalizada_mediana_GMCSF_vs_MACcoCC.csv",sep = ",", head=T, row.names = 1)

    head(data)

Los datos que estaremos usando responden a la abundancia de transcritos presentes en un conjunto de macrófagos entrenados por un microambiente tumoral de carácter agresivo o no agresivo. Para homogenizar un poco los datos, trabajamos con la mediana de los transcritos por condición experimental. Tras este paso es necesario eliminar aquellas filas donde el valor sea 0, pues no tiene caso evaluar un gen que no se está expresando y eventualmente traerá problemas en la manipulación de datos. 

    # Estructura de datos y busqueda de valores faltantes
    str(data)
    colSums(is.na(data))

    # Eliminar filas cuya suma sea 0 (uso de las medianas)
    data <- data[!(rowSums(data[, -1]) == 0), ]
    head(data)
    colnames(data)

Ahora, usaremos un conjunto de herramientas que nos brindan un análisis fácil de elaborar. Al finalizar este bloque de código tendremos nuestro PCA y su gráfico correspondiente.

    # Matriz de correlacion
    corr_matrix <- cor(data_mac)
    ggcorrplot(corr_matrix)

    # PCA
    pca <- princomp(corr_matrix)
    res <- summary(pca)
    res

    # Matriz de carga
    pca$loadings[,1:2]

    # Scree plot: gráfico de sedimentacion
    sed <- fviz_eig(pca, addlabels = T)
    sed

    # Graph of the variables
    fviz_pca_var(pca, col.var = "black")

    # Representacion de cada variable en los componentes: las barras mas altas indican que esas variables contribuyen más en los componenetes indicados
    cos <- fviz_cos2(pca, choice = "var", axes = 1:2)
    cos

    # Combinacion del peso de los componentes y la influencia de las varibles en ellos
    pcaf <- fviz_pca_var(pca, col.var = "cos2",
                     gradient.cols = c("blue", "black", "red"),
                     repel = T) + ggtitle("Macrófagos entrenados ")


    pcaf

    # Guardar el grafico
    path = "D:/marval_windows/JR_MARVAL/ceci/"

    png(filename =paste (path, "pcaf_mediana_MACcoCC.png", sep = ""),
    res = 1800, height = 7, width = 7, units = "in")

    pcaf

    dev.off()

---

### **Heatmap**

Ahora, para realizar nuestro heatmap, usaremos el archivo: gsva_top20_macs&gmcsf.csv. Este archivo contiene un conjunto de procesos biológicos en términos de Gen Ontology, los cuales se ven alterados en los macrófagos entrenados por un microambiente agresivo o no agresivo. Los valores que vamos a graficar corresponden al valor de enriquecimiento normalizado “NES”. La librería que necesitamos instalar es [pheatmap](https://www.rdocumentation.org/packages/pheatmap/versions/1.0.12/topics/pheatmap). 

    # Instalar y activar libreria 
    install.packages("pheatmap")
    library(pheatmap)

Posteriormente debemos cargar la base de datos que utilizaremos, en este caso será el archivo: gsva_top20_macs&gmcsf.csv

    # Cargar datos
    data <- read.table(file = "gsva_top20_macs&gmcsf.   csv", sep = ",", head=T)

    data

Para que la librería funcione adecuadamente debemos transformar nuestra base de datos que ahora es un DataFrame en una Matriz. Para ello haremos lo siguiente:

    # Reestructurando datos
    # Transformar dataframe a una matriz
    rownames(data) <- data[,1]
    samp2 <- data[,-1]
    mat_data <- data.matrix(samp2[,1:ncol(samp2)])

Una vez realizado lo anterior, procedemos a generar el gráfico. Aquí solo ilustramos un par de argumentos que ayudan a la construcción de la figura, pero en la [documentación](https://www.rdocumentation.org/packages/pheatmap/versions/1.0.12/topics/pheatmap) de la libería podrás encontrar más argumentos que te ayuden a explicar tus datos de la mejor forma visual posible. 

    pheatmap(mat_data,
         #main = "Procesos Biológicos en Macrófagos     entrenados",
         #color= colorRampPalette(c("blue", "black", "red"))(100),
         color = hcl.colors(50, "Broc"),
         #color = hcl.colors(50, "OrRd"),
         fontsize_col = 9,
         fontsize_row = 9,
         show_rownames = T,
         cluster_rows = T,
         cluster_cols = T,
         border_color = "black",
         scale="row", 
         cellwidth = 30,
         cellheight = 14,
         treeheight_col = 30)

**Ejercicio:**

Te pedimos que generes un PCA o Heatmap  de tus datos y nos brindes una pequeña interpretación de los mismos.  


**Nota:**

**La verdad es que estas sesiones tienen la intención de acercalos un poco a la bionformática, si bien requiere paciencia y empeño durante su aprendizaje, es una herramienta muy poderosa capaz de enriquecer sus investigaciones.**



