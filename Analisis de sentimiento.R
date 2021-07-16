#Syuzhet

# Instala los paquetes:
install.packages("syuzhet")
install.packages("RColorBrewer")
install.packages("wordcloud")
install.packages("tm")

# Carga los paquetes
library(syuzhet)
library(RColorBrewer)
library(wordcloud)
library(tm)
#Paso 1 crear texto 

texto_cadena ='Hola buenas tardes, muchas gracias 
Estoy enojado 
El servicio es muy malo 
Hola  muy amable
dependo de su servicio 
gracias por su forma de atender 
no tienen nada 
muy enojado 
fatal'


#Paso 2 tokenizar
texto_palabras <- get_tokens(texto_cadena)
head(texto_palabras)
length(texto_palabras)

#Paso 3 crear oraciones test
oraciones_vector <- get_sentences(texto_cadena)
length(oraciones_vector)

#Paso 4 Extracción de datos con el Léxico de Sentimientos NRC

sentimientos_df <- get_nrc_sentiment(texto_palabras, lang="spanish")

View(sentimientos_df)
summary(sentimientos_df)

#graficar
barplot(
  colSums(prop.table(sentimientos_df[,1:8])),
  space = 0.2,
  horiz = FALSE,
  las = 1,
  cex.names = 0.7,
  col = brewer.pal(n = 8,  name = "Set3"),
  main = "Centro de contacto",
  sun = "Analisis",
  xlab = "emociones", lab = NULL)

