# Incluimos el procesamiento de datos
source("ITC_data_process.R")

# Se crea el directorio de salida
dir.create("output", showWarnings=F)

# Calculo de medias por indice (mas rapido que subset) AZA:esto es por reactivo
MediasH <- colMeans(ITC[ITC['sexo']=="H",c(-1,-242)])
MediasM <- colMeans(ITC[ITC['sexo']=="M",c(-1,-2)])
Medias <- colMeans(ITC[-1:-2])
capture.output(Medias,file=paste0("output/Medias_",Sys.Date(),".txt"))
capture.output(MediasH,file=paste0("output/MediasH_",Sys.Date(),".txt"))
capture.output(MediasM,file=paste0("output/MediasM_",Sys.Date(),".txt"))

#TEMPERAMENTO
#B??squeda a la novedad
NS1H <- (MediasH[paste0("R",c(1,29,52,70,99,114,144,167,191,211,238))])
NS2H <- (MediasH[paste0("R",c(13,35,61,82,108,130,148,187,203,237))])
NS3H <- (MediasH[paste0("R",c(19,41,66,109,139,155,174,192,219))])
NS4H <- (MediasH[paste0("R",c(34,53,79,91,110,141,165,183,204,212))])
NSH <- sum (NS1H,NS2H,NS3H,NS4H)
SDNSH <- sd(c(NS1H,NS2H,NS3H,NS4H))

#Evitaci??n al da??o
HA1H <-(MediasH[paste0("R",c(2,20,42,65,81,112,119,149,164,188,225))])
HA2H <-(MediasH[paste0("R",c(12,26,67,129,154,189,217))])
HA3H <-(MediasH[paste0("R",c(27,54,80,100,142,157,209,231))])
HA4H <-(MediasH[paste0("R",c(22,43,63,92,113,147,182,202,236))])
HAH <- sum (HA1H,HA2H,HA3H,HA4H)
SSHAH <- sd(c(HA1H,HA2H,HA3H,HA4H))

#Dependencia a la recompensa, RED2 no lo incluyen????
RD1H <-(MediasH[paste0("R",c(3,28,55,83,102,120,158,181,210,224))])
RD2H <-(MediasH[paste0("R",c(75,101,111,118,134,137,140,170,176,190,213,230,239,240))])
RD3H <-(MediasH[paste0("R",c(21,44,68,117,143,180,201,226))])
RD4H <-(MediasH[paste0("R",c(14,46,71,131,156,193))])
RDH <-sum (RD1H,RD3H,RD4H)
SDRDH <- sd(c(RD1H,RD3H,RD4H))


#Persistencia
PEH <-(MediasH[paste0("R",c(11,37,62,103,128,166,205,218))])
SDPEH <- sd(c(PEH))

#CARACTER
#Autodireccion 
#en SD2 cambie el segundo 59 a 159
SD1H <-(MediasH[paste0("R",c(4,24,58,86,121,151,169,198))])
SD2H <-(MediasH[paste0("R",c(9,30,59,105,126,159,177,223))])
SD3H <-(MediasH[paste0("R",c(40,106,171,197,233))])
SD4H <-(MediasH[paste0("R",c(32,60,74,85,94,107,136,150,179,214,229))])
SD5H <-(MediasH[paste0("R",c(17,36,39,90,104,115,135,162,184,196,207,221))])
SDH <-sum (SD1H,SD2H,SD3H,SD4H,SD5H)
SDSDH <- sd(c(SD1H,SD2H,SD3H,SD4H,SD5H))

#Cooperatividad
CO1H <-(MediasH[paste0("R",c(5,16,48,89,122,133,172,234))])
CO2H <-(MediasH[paste0("R",c(25,49,73,37,161,185,227))])
CO3H <-(MediasH[paste0("R",c(10,47,64,87,127,153,178,216))])
CO4H <-(MediasH[paste0("R",c(7,33,57,78,98,124,146,168,199,222))])
CO5H <-(MediasH[paste0("R",c(18,50,72,93,138,160,186,206,235))])
COH <-sum (CO1H,CO2H,CO3H,CO4H,CO5H)
SDCOH <- sd(c(CO1H,CO2H,CO3H,CO4H,CO5H))

#Autotrascendencia 
ST1H <-(MediasH[paste0("R",c(8,23,45,76,96,125,152,173,195,215,228))])
ST2H <-(MediasH[paste0("R",c(15,31,51,84,95,132,163,200,232))])
ST3H <-(MediasH[paste0("R",c(6,38,56,77,88,97,116,123,145,175,194,208,220))])
STH <-sum (ST1H,ST2H,ST3H)
SDSTH <- sd(c(ST1H,ST2H,ST3H))

#TEMPERAMENTO MUJERES
#B??squeda a la novedad
NS1M <- (MediasM[paste0("R",c(1,29,52,70,99,114,144,167,191,211,238))])
NS2M <- (MediasM[paste0("R",c(13,35,61,82,108,130,148,187,203,237))])
NS3M <- (MediasM[paste0("R",c(19,41,66,109,139,155,174,192,219))])
NS4M <- (MediasM[paste0("R",c(34,53,79,91,110,141,165,183,204,212))])
NSM <- sum (NS1M,NS2M,NS3M,NS4M)
SDNSM <- sd(c(NS1M,NS2M,NS3M,NS4M))

#Evitaci??n al da??o
HA1M <-(MediasM[paste0("R",c(2,20,42,65,81,112,119,149,164,188,225))])
HA2M <-(MediasM[paste0("R",c(12,26,67,129,154,189,217))])
HA3M <-(MediasM[paste0("R",c(27,54,80,100,142,157,209,231))])
HA4M <-(MediasM[paste0("R",c(22,43,63,92,113,147,182,202,236))])
HAM <- sum (HA1M,HA2M,HA3M,HA4M)
SDHAM <- sd(c(HA1M,HA2M,HA3M,HA4M))

#Dependencia a la recompensa RD2 no lo incluyen?
RD1M <-(MediasM[paste0("R",c(3,28,55,83,102,120,158,181,210,224))])
RD2M <-(MediasH[paste0("R",c(75,101,111,118,134,137,140,170,176,190,213,230,239,240))])
RD3M <-(MediasM[paste0("R",c(21,44,68,117,143,180,201,226))])
RD4M <-(MediasM[paste0("R",c(14,46,71,131,156,193))])
RDM <-sum (RD1M,RD3M,RD4M)
SDRDM <- sd(c(RD1M,RD3M,RD4M))

#Persistencia
PEM <-(MediasM[paste0("R",c(11,37,62,103,128,166,205,218))])
SDPEM <- sd(c(PEM))

#CARACTER
#Autodireccion al segundo 59 le puse un uno, 159
SD1M <-(MediasM[paste0("R",c(4,24,58,86,121,151,169,198))])
SD2M <-(MediasM[paste0("R",c(9,30,59,105,126,159,177,223))])
SD3M <-(MediasM[paste0("R",c(40,106,171,197,233))])
SD4M <-(MediasM[paste0("R",c(32,60,74,85,94,107,136,150,179,214,229))])
SD5M <-(MediasM[paste0("R",c(17,36,39,90,104,115,135,162,184,196,207,221))])
SDM <-sum (SD1M,SD2M,SD3M,SD4M,SD5M)
SDSDM <- sd(c(SD1M,SD2M,SD3M,SD4M,SD5M))

#Cooperatividad
CO1M <-(MediasM[paste0("R",c(5,16,48,89,122,133,172,234))])
CO2M <-(MediasM[paste0("R",c(25,49,73,37,161,185,227))])
CO3M <-(MediasM[paste0("R",c(10,47,64,87,127,153,178,216))])
CO4M <-(MediasM[paste0("R",c(7,33,57,78,98,124,146,168,199,222))])
CO5M <-(MediasM[paste0("R",c(18,50,72,93,138,160,186,206,235))])
COM <-sum (CO1M,CO2M,CO3M,CO4M,CO5M)
SDCOM <- sd(c(CO1M,CO2M,CO3M,CO4M,CO5M))

#Autotrascendencia 
ST1M <-(MediasM[paste0("R",c(8,23,45,76,96,125,152,173,195,215,228))])
ST2M <-(MediasM[paste0("R",c(15,31,51,84,95,132,163,200,232))])
ST3M <-(MediasM[paste0("R",c(6,38,56,77,88,97,116,123,145,175,194,208,220))])
STM <-sum(ST1M,ST2M,ST3M)
SDSTM <- sd(c(ST1M,ST2M,ST3M))

#Esto es para hacer las t de los 4 dominios de temperamento y los tres de caracter

NSM <- (MediasM[paste0("R",c(1,29,52,70,99,114,144,167,191,211,238,13,35,61,82,108,130,148,187,203,237,19,41,66,109,139,155,174,192,219,34,53,79,91,110,141,165,183,204,212))])
NSH <- (MediasH[paste0("R",c(1,29,52,70,99,114,144,167,191,211,238,13,35,61,82,108,130,148,187,203,237,19,41,66,109,139,155,174,192,219,34,53,79,91,110,141,165,183,204,212))])
tNS <- t.test(NSM,NSH)
wNS <- wilcox.test(NSM,NSH,conf.int=TRUE)
dNS <- (mean(NSM)-mean(NSH))/sqrt((sd(NSM)^2+sd(NSH)^2)/2)

HAM <- (MediasM[paste0("R",c(2,20,42,65,81,112,119,149,164,188,225,12,26,67,129,154,189,217,27,54,80,100,142,157,209,231,22,43,63,92,113,147,182,202,236))])
HAH <- (MediasH[paste0("R",c(2,20,42,65,81,112,119,149,164,188,225,12,26,67,129,154,189,217,27,54,80,100,142,157,209,231,22,43,63,92,113,147,182,202,236))])
tHA <- t.test(HAM,HAH)
wHA <- wilcox.test(HAM,HAH,conf.int=TRUE)
dHA <- (mean(HAM)-mean(HAH))/sqrt((sd(HAM)^2+sd(HAH)^2)/2)

RDM <- (MediasM[paste0("R",c(3,28,55,83,102,120,158,181,210,224,75,101,111,118,134,137,140,170,176,190,213,230,239,240,21,44,68,117,143,180,201,226,14,46,71,131,156,193))])
RDH <- (MediasH[paste0("R",c(3,28,55,83,102,120,158,181,210,224,75,101,111,118,134,137,140,170,176,190,213,230,239,240,21,44,68,117,143,180,201,226,14,46,71,131,156,193))])
tRD <- t.test(RDM,RDH)
wRD <- wilcox.test(RDM,RDH,conf.int=TRUE)
dRD <- (mean(RDM)-mean(RDH))/sqrt((sd(RDM)^2+sd(RDH)^2)/2)

PEM <-(MediasM[paste0("R",c(11,37,62,103,128,166,205,218))])
PEH <-(MediasH[paste0("R",c(11,37,62,103,128,166,205,218))])
tPE <- t.test(PEM,PEH)
wPE <- wilcox.test(PEM,PEH,conf.int=TRUE)
dPE <- (mean(PEM)-mean(PEH))/sqrt((sd(PEM)^2+sd(PEH)^2)/2)

SDM <-(MediasM[paste0("R",c(4,24,58,86,121,151,169,198,9,30,59,105,126,159,177,223,40,106,171,197,233,32,60,74,85,94,107,136,150,179,214,229,17,36,39,90,104,115,135,162,184,196,207,221))])
SDH <-(MediasH[paste0("R",c(4,24,58,86,121,151,169,198,9,30,59,105,126,159,177,223,40,106,171,197,233,32,60,74,85,94,107,136,150,179,214,229,17,36,39,90,104,115,135,162,184,196,207,221))])
tSD <- t.test(SDM,SDH)
wSD <- wilcox.test(SDM,SDH,conf.int=TRUE)
dSD <- (mean(SDM)-mean(SDH))/sqrt((sd(SDM)^2+sd(SDH)^2)/2)

COM <- (MediasM[paste0("R",c(5,16,48,89,122,133,172,234,25,49,73,37,161,185,227,10,47,64,87,127,153,178,216,7,33,57,78,98,124,146,168,199,222,18,50,72,93,138,160,186,206,235))])
COH <- (MediasH[paste0("R",c(5,16,48,89,122,133,172,234,25,49,73,37,161,185,227,10,47,64,87,127,153,178,216,7,33,57,78,98,124,146,168,199,222,18,50,72,93,138,160,186,206,235))])
tCO <- t.test(COM,COH)
wCO <- wilcox.test(COM,COH,conf.int=TRUE)
dCO <- (mean(COM)-mean(COH))/sqrt((sd(COM)^2+sd(COH)^2)/2)

STM <-(MediasM[paste0("R",c(8,23,45,76,96,125,152,173,195,215,228,15,31,51,84,95,132,163,200,232,6,38,56,77,88,97,116,123,145,175,194,208,220))])
STH <-(MediasH[paste0("R",c(8,23,45,76,96,125,152,173,195,215,228,15,31,51,84,95,132,163,200,232,6,38,56,77,88,97,116,123,145,175,194,208,220))])
tST <- t.test(STM,STH)
wST <- wilcox.test(STM,STH,conf.int=TRUE)
dST <- (mean(STM)-mean(STH))/sqrt((sd(STM)^2+sd(STH)^2)/2)

capture.output(tNS,file=paste0("output/ITCttest_",Sys.Date(),".txt"))
capture.output(tHA,file=paste0("output/ITCttest_",Sys.Date(),".txt"),append=T)
capture.output(tRD,file=paste0("output/ITCttest_",Sys.Date(),".txt"),append=T)
capture.output(tPE,file=paste0("output/ITCttest_",Sys.Date(),".txt"),append=T)
capture.output(tSD,file=paste0("output/ITCttest_",Sys.Date(),".txt"),append=T)
capture.output(tCO,file=paste0("output/ITCttest_",Sys.Date(),".txt"),append=T)
capture.output(tST,file=paste0("output/ITCttest_",Sys.Date(),".txt"),append=T)

capture.output(wNS,file=paste0("output/ITCwtest",Sys.Date(),".txt"))
capture.output(wHA,file=paste0("output/ITCwtest",Sys.Date(),".txt"),append=T)
capture.output(wRD,file=paste0("output/ITCwtest",Sys.Date(),".txt"),append=T)
capture.output(wPE,file=paste0("output/ITCwtest",Sys.Date(),".txt"),append=T)
capture.output(wSD,file=paste0("output/ITCwtest",Sys.Date(),".txt"),append=T)
capture.output(wCO,file=paste0("output/ITCwtest",Sys.Date(),".txt"),append=T)
capture.output(wST,file=paste0("output/ITCwtest",Sys.Date(),".txt"),append=T)

