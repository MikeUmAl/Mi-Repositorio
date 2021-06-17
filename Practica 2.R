nombres = c("hugo","paco","luis","paty","maria","ruben","gaby")
edades = c(28,26,32,24,33,23,43)
sueldos = c(12.5,13.5,14.8,7.1,57.7,45.3,34.2)
genero = c("M","M","M","F","F","M","F")
pasatiempos = c("musica","musica","estudio","videojuegos","musica",
                "musica","videojuegos")

Personas= data.frame(nombres,edades,sueldos,genero,pasatiempos)
class(Personas)
View(Personas)