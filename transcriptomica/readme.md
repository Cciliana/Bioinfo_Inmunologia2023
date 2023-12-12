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

Posteriormente debemos cargar la base de datos que utilizaremos: 

    setwd("D:/marval_windows/JR_MARVAL/ceci") 
    list.files()

    data <- read.table(file="expresion_normalizada_mediana_GMCSF_vs_MACcoCC.csv",sep = ",", head=T, row.names = 1)

    head(data)



