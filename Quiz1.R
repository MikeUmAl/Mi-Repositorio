#1 1.	Realice un histograma de  Age.of.Subject, agréguele un título y explíquelo 
hist(COVID$`Age of Subject`,main="Grafico de edades")
table(COVID$`Age of Subject`)

#2


dataAgrupada2 =COVID %>%  group_by(`Region of residence`) %>% summarise(`Prefered social media platform`)
plot(as.factor(dataAgrupada2$`Prefered social media platform`))





#3
hist(COVID$`Rating of Online Class experience`)
plot(as.factor(COVID$`Rating of Online Class experience`),main="Experiencia en linea")

#4
dataAgrupada = COVID %>% group_by(`Region of residence`)%>%summarise
(`Rating of Online Class experience` = 'Excellent')
View(dataAgrupada)

#5
View(COVID)
plot(select(COVID,3:4),main = "Relacion Edad/Tiempo de clase en linea")


COVID

     
  





