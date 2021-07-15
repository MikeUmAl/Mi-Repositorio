#1 vectores
Estudiantes =c(65,75,90,55,40,80,67,89,85,99) 
names(Estudiantes) <- c("Mike","Fran","Edwin","Carol","Roman","Alex","CR7","AAron","Maria","Jose")
print(Estudiantes)
plot(Estudiantes)

#2 base de datos - Groceries data
Groceries_data
class(Groceries_data)
View(Groceries_data)

#2a variables temporales
var_Temp1 = select(Groceries_data,Date,itemDescription)
var_Temp2 = select(Groceries_data,Member_number,day_of_week)
View(var_Temp1)

#2b operaciones aritméticas
max(Groceries_data$Member_number)
mean(Groceries_data$Date)

#2c filter
View(filter(var_Temp1,itemDescription=="whole milk"))
View(filter(var_Temp2,Member_number=="3037"))

#2d  group by 
Agrupados = Groceries_data %>%group_by(itemDescription)%>%summarise(Date) 
View(Agrupados)

#de arrange
View(arrange(Groceries_data,(Groceries_data$itemDescription)))

#2f mutate
Groceries_data = mutate(Groceries_data, InventarioGlobal=year+7)
View(Groceries_data)

#2g select
select(Groceries_data,Member_number,itemDescription)

#3 investigacion
salarios=c(432.21,239.48,249.94,373.22,233.86,366,331.11,258.86,349.20,31.60)

#3a salario promedio
mean(salarios)
round (mean(salarios),2)

#3b Desviacion standar
sd(salarios)
round (sd(salarios),2)

#3c salario maximo - minimo
max(salarios)
min(salarios)

#4  base de datos
ID_Empleado =c("UH-101","UH-202","UH-303","UH-405","UH-508","UH-609","UH-703","UH-804","UH-907","UH-990") 
Cantidad_facturas = seq(35,80, by=5) 
Nombre =c("Paul","George","Ringo","John","James","Jim","Elvis","Kirk","Robert","Bob")
Facturas_Empleado = data.frame(ID_Empleado,Cantidad_facturas,Nombre)
class(Facturas_Empleado)
View(Facturas_Empleado)

#5 Sacos de cafe
Ingreso_Unidades_SC =c(7, 6, 5, 8, 7, 7, 7, 5, 6,8)
sd(Ingreso_Unidades_SC)
round (sd(Ingreso_Unidades_SC),2)

#6 Percentil
quantile(Ingreso_Unidades_SC)

#7 investigacion - Stringr(Conjunto de funciones para trabajar con caracteres)
#Es un paquete para trabajar con un análisis de texto y manipulación de strings en casos.
#Por ejemplo donde descargamos ese montón de tweets y queremos buscar cierta información 
#o cuando queremos buscar dentro de la url de las páginas y de todo el texto del html.
#https://dominicroye.github.io/es/2020/una-muy-breve-introducci%C3%B3n-a-tidyverse/


Nota: 96
