# My first code in R for the Remote sensing course here in Bologna

setwd("C:/lab/")

#install.packages("raster")
library(raster)

#inserisco la mia immagine satellitare
# utilizzo le virgolette perchè attingo dall'esterno l'informazione
#la funzione brick la fa associare al nome p224r63_2011
p224r63_2011 <- brick("p224r63_2011_masked.grd")
p224r63_2011
#ottengo il contenuto di p224r63_2011

plot(p224r63_2011)
#visualizzo l'immagine p224r63_2011

#cambio il range di colori
cl <- colorRampPalette(c("black","grey","light grey")) (100)
#colori identificati da etichette
#colori ordinati dal più scuro al più chiaro
#colori raggruppati in un vettore, diversi elementi per un solo argomento, il colore
#(100) identifica il numero di livelli dei colori, va esterno alla funzione

plot(p224r63_2011, col=cl)
#visualizzo l'immagine p224r63_2011

cl <- colorRampPalette(c("blue","green", "grey","magenta", "yellow")) (100)
#cambio range di colori all'immagine

plot(p224r63_2011, col=cl)
#visualizzo l'immagine p224r63_2011

#DAY 3

#Bande Landset
#B1: blu
#B2: verde
#B3: rosso
#B4: infrarosso vicino
#B5: infrarosso medio
#B6: infrarosso termico
#B7: infrarosso medio

# dev.off ripulirà la finestra grafica, facendo ripartire le informazioni da zerp
dev.off()

cl <- colorRampPalette(c("red","pink","orange","purple")) (200)

#$ lega due oggetti/blocchi
plot(p224r63_2011$B1_sre, col=cl)
#plot band1 con una predefinita banda di colori

#dev.off>()
#1 riga e una colonna
> par(mfrow=c(1,2))
> plot(p224r63_2011$B1_sre)
> plot(p224r63_2011$B2_sre)

# 2 righe e una colonna
> par(mfrow=c(2,1))
> plot(p224r63_2011$B1_sre)
> plot(p224r63_2011$B2_sre)
> 
#specifico prima la colonna
par(mfcol=c(1,2))
plot(p224r63_2011$B1_sre)
plot(p224r63_2011$B2_sre)

#plot delle prime 4 bande di Landsat
par(mfrow=c(4,1))
plot(p224r63_2011$B1_sre)
plot(p224r63_2011$B2_sre)
plot(p224r63_2011$B3_sre)
plot(p224r63_2011$B4_sre)

# a quadrat of bands...:
par(mfrow=c(2,2))

 

clb <- colorRampPalette(c("dark blue","blue","light blue")) (100)
plot(p224r63_2011$B1_sre, col=clb)

 

clg <- colorRampPalette(c("dark green","green","light green")) (100)
plot(p224r63_2011$B2_sre, col=clg)

 

clr <- colorRampPalette(c("dark red","red","pink")) (100)
plot(p224r63_2011$B3_sre, col=clr)

 

clnir <- colorRampPalette(c("red","orange","yellow")) (100)
plot(p224r63_2011$B4_sre, col=clnir)

#Day 4
#ricordiamoci 

#Bande Landset
#B1: blu
#B2: verde
#B3: rosso
#B4: infrarosso vicino
#B5: infrarosso medio
#B6: infrarosso termico
#B7: infrarosso medio

plotRGB(p224r63_2011, r=3, g=2, b=1, stretch="Lin")
#visualizzo su scala di colori reali
plotRGB(p224r63_2011, r=4, g=3, b=2, stretch="Lin")
plotRGB(p224r63_2011, r=3, g=4, b=2, stretch="Lin")
plotRGB(p224r63_2011, r=2, g=3, b=4, stretch="Lin")
#monto l'infrarosso su componenti diverse, rosso, verde e blu

pdf("ilmioprimopdfconR.pdf")
par(mfrow=c(2,2))

plotRGB(p224r63_2011, r=3, g=2, b=1, stretch="Lin")
plotRGB(p224r63_2011, r=4, g=3, b=2, stretch="Lin")
plotRGB(p224r63_2011, r=3, g=4, b=2, stretch="Lin")
plotRGB(p224r63_2011, r=2, g=3, b=4, stretch="Lin")
#visualizzo un 2x2 con le immagini a colori reali ed infrarossi
#funzione pdf aggiunta dopo il grafico 2x2
