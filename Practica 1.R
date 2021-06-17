#If
Nota = 70

if(Nota >=70) {
  
  print ("Aprobado") 
  
}else{
  ("Reprobado")
}

#for
Final=7

for (i in 1:Final) {
  if (i>=7) {
    print("Estoy aprobado")
  }
}

Var1=2L
Var2=2
Var3="Caracter"

#integer
auto=1000
Casa=2000
auto+Casa

#double
M=700000
N=300000
O=sqrt(M+N)
paste("Valor de O es:",O)

#caracter
print("Ciencias de datos es solo para gatos")

#vectorenteros

V=c(1L,2L,3L,4L,5L)
class(V)
V

#vectormeses
VectorMes = c ("enero","febrero", "marzo", "Abril","Mayo","Junio","Julio","Agosto", "Septiembre","Octubre","Noviembre","Diciembre")
VectorMes
class(VectorMes)

#vectorpersonas
VPersona = c("Emma","Jennifer","Gal","Fran")
VPersona
class(VPersona)

View(data.frame(Vector1))

#vectorpeliculas
Vector1 = c ("Shreck","Shreck 2","Shreck tercero","Shreck:Felices para siempre")
Vector1

#vectorpuntuacion
Vector2 = c(7.9,7.2,6.1,6.3)
Vector2 

Vector3 = c(TRUE, TRUE, FALSE, FALSE)
Vector3

#vector(true/false)
a <- c(2001,2004,2007,2010)
a[c(TRUE, TRUE, FALSE, FALSE)]

#cantidad de valores
length(Vector3)

#valor min y max
min(Vector2);max(Vector2)

#suma de valores
sum(Vector2)

#valor medio y 
mean(Vector3);median(Vector3)

#filtro
sort(Vector1)
sort(VPersona)

#grafico de trazado
plot(Vector3)

#elemento unico
unique(Vector1)

#donde esta el valor x, cual es el valormin/mx,

VectorW = c(2,3,24,5,99,8,1,6,7,0)
VectorW
which(VectorW==24)
which.min(VectorW)
which.max(VectorW)

#Raiz cuadrada
A=sum(Vector2)
sqrt(A)

#vector 1 al 100
VA=c(1:100)
class(VA)
VA

# 1 al 100 de 10 en 10
VAC = seq(0,100, by=10)
VAC
hist(VAC)