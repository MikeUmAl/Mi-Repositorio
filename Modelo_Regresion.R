#paso 1
grasas <- read.table('http://verso.mat.uam.es/
                     ~joser.berrendero/datos/EdadPesoGrasas.txt', header = TRUE) 
View(grasas)
names(grasas)
head(grasas)
tail(grasas)

#paso 2 buscar la correlacion visual
pairs(grasas)

#paso 3 correlacion exacta
cor(grasas)

#paso 4 entrenar al modelo
Regresion = lm(grasas~edad, data = grasas)
summary(Regresion)

#paso 5 generar regresion visual
plot(grasas$edad, grasas$grasas, xlab = "Edad", ylab = "Grasas")
abline(Regresion)

#Paso 6 prediccion (test)
nuevas_edades = data.frame(edad = seq(30,50))

#paso 7 calculo de prediccion

predict(Regresion,nuevas_edades)
