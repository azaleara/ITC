# Creamos directorio output
dir.create("output", showWarnings=F)

# Usamos el archivo original de Drive con codificación Mac
ITC <- read.csv ('ITC.csv',as.is=T,fileEncoding="latin1")

#Asignamos nombres
names(ITC) <- c('ID',paste0("R",1:240))

# Extraemos el factor sexo
ITC$sexo <- substr(ITC$ID,2,2)

# Rearreglamos columnas
ITC <- ITC[c("ID","sexo",paste0("R",1:240))]

# Cambiamos todo a mayúsculas y convertimos en factores 
for (i in names(ITC)){
  ITC[i] <- toupper(ITC[,i])
  ITC[i] <- as.factor(ITC[,i])
  # Test de factores, si no son 2 o 3, y el tercero es VERDADERO ,FALSO
  # print(levels(ITC[i]))
}

# Convertimos los factores a números y los procesamos
for (i in names(ITC[-1:-2])){
  # 1=Falso 2=Verdadero 3=Verdadero,Falso y restamos 1 para obtener
  # 0=Falso 1=Verdadero y 2=Verdadero,falso
  ITC[i] <- as.numeric(ITC[,i]) - 1
  # Convertimos 3 a 0.5 con un IF
  for (j in 1:length(ITC[,i])){if(ITC[j,i]>1){ITC[j,i]<-0.5}} 
}
