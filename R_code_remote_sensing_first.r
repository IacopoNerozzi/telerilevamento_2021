# My first code in R for the Remote sensing course here in Bologna

setwd("C:/lab/")

#install.packages("raster")
library(raster)

p224r63_2011 <- brick("p224r63_2011_masked.grd")
p224r63_2011
#ottengo il contenuto di p224r63_2011

plot(p224r63_2011)
#visualizzo l'immagine p224r63_2011
