 #Dataframe AtaqueCardiaco

class(AtaqueCardiaco)

pairs(AtaqueCardiaco)

cor(AtaqueCardiaco)

Regresion = lm(AtaqueCardiaco~Edad, data = AtaqueCardiaco)
summary(Regresion)

#muestra, variables, que obtuvimos 