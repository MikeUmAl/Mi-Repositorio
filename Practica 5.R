 #Dataframe AtaqueCardiaco

class(AtaqueCardiaco)

pairs(AtaqueCardiaco)

cor(AtaqueCardiaco)

Regresion = lm(AtaqueCardiaco~Edad, data = AtaqueCardiaco)
summary(Regresion)

#muestra, variables, que obtuvimos 
#Edad con presión 0.27

#Edad con colesterol 0.21

#Edad con latidos -0.39 