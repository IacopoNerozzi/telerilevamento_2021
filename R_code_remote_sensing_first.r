# My first code in R for the Remote sensing course here in Bologna

setwd("C:/lab/")

#install.packages("raster")
library(raster)

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
