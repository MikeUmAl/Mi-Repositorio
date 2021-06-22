Shreck = data.frame(Vector1,Vector2,Vector3)
View(Shreck)

results=c("A","A", "B", "B", "B", "B", "B","I","I","I","R","I","I","I","R","R",
          "R","R","R","R","R","R","R","R","R", "M", "M", "M", "M", "M", "M",
          "M", "M", "M", "M", "M", "M", "M","A","A")



#frecuencia absoluta

FrecuenciaAbsoluta = table(results)
FrecuenciaAbsoluta

#frecuencia relativa

FrecuenciaRelativa = FrecuenciaAbsoluta/length(results)
FrecuenciaRelativa


nombres = c("hugo","paco","luis","paty","maria","ruben","gaby")
edades = c(28,26,32,24,33,23,43)
sueldos = c(12.5,13.5,14.8,7.1,57.7,45.3,34.2)
genero = c("M","M","M","F","F","M","F")
pasatiempos = c("musica","musica","estudio","videojuegos","musica",
                "musica","videojuegos")

Personas= data.frame(nombres,edades,sueldos,genero,pasatiempos)
class(Personas)
View(Personas)

#Author DataFlair
int_vec <- c(1,2,3)
char_vec <- c("a", "b", "c")
bool_vec <- c(TRUE, TRUE, FALSE)
Salario <- c(5000,56700,6000)
DataFlair= data.frame(int_vec,char_vec,bool_vec,Salario)
View(DataFlair)

#salario mas el 5%
vectorComi = DataFlair$Salario+(Salario/10*0.50)
vectorComi


round (sd(mispacientes$GlucemiaBasal),2)
#caso estadistico

Genero = c("h","m","h","m","h","h","h","m","m","m")
Edad = c(20,75,25,63,37,44,53,35,22,88)
GlucemiaBasal = c(123,230,180,164,210,220,193,202,152,185)
TratconADorales = c("no","si","no","no","si","no","si","si","no","no")
mispacientes= data.frame(Genero,Edad,GlucemiaBasal,TratconADorales)
class(mispacientes)
View(mispacientes)
class(Edad)
#Max
max(GlucemiaBasal)
#min
min(Edad)
#media
mean(Edad)
#desviacion standar
sd(mispacientes$GlucemiaBasal)
#redondeo
round (sd(mispacientes$GlucemiaBasal),2)
quantile (GlucemiaBasal)

#frecuenciaAbsoluta glucemianasal
FrecuenciaAbsoluta = table(GlucemiaBasal)
FrecuenciaAbsoluta

#Frecuencia relativa de genero
FrecuenciaAbsoluta2 = table(Genero)
FrecuenciaRelativa2 = FrecuenciaAbsoluta2/length(Genero)
FrecuenciaRelativa2

#graficos
plot(Edad, type = "l", col = "magenta")
pie(FrecuenciaRelativa2)

#importar archivo de excel
Vinculacion_a_Excel
class(Vinculacion_a_Excel)
View(Vinculacion_a_Excel)
(Vinculacion_a_Excel$`Empleados x DPTO`)
hist(Vinculacion_a_Excel$`Empleados x DPTO`, col = c("Blue","Green","Grey","Purple"))
