#---- Datos Generales ----
# Programador: Cecilia Suárez & Raul Valderrama
# Version de R: 4.3.1
# Fecha: Diciembre 11, 2023
# Tema: PCA & Heatmap, Bionformática ENCB-IPN

#----Llamado de librerias----
#install.packages("pheatmap")
library(pheatmap)

#----Establecer directorio de trabajo----
getwd()
setwd("D:/marval_windows/JR_MARVAL/ceci")
list.files()

#----Cargar datos----
data <- read.table(file = "gsva_top20_macs&gmcsf.csv", sep = ",", 
                   head=T)

data

#----Reestructurando datos----
#Transformar dataframe a una matriz
rownames(data) <- data[,1]
samp2 <- data[,-1]
mat_data <- data.matrix(samp2[,1:ncol(samp2)])

#----Construccion de grafico----

pheatmap(mat_data,
         #main = "Procesos Biológicos en Macrófagos entrenados",
         #color= colorRampPalette(c("blue", "white", "yellow"))(100),
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
