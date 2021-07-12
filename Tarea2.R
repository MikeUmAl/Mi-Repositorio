library("DBI")
library("odbc")
library("dbplyr")

#a.COnexion a SQL DB ETL, Tabla ETL
DB_ETL<- DBI::dbConnect(odbc::odbc(),
                        Driver = "SQL Server",
                        Server = "dbtedamssql.uh.ac.cr",
                        Database = "ETL",
                        UID = rstudioapi::askForPassword("Database user"),
                        PWD = rstudioapi::askForPassword("Database password"),
                        Port = 1433)

Empleados<-dbGetQuery(DB_ETL,"select * from [BD_Empleados]")
View(Empleados)

#b
#plot 1 igualdad de genero
ggplot (data = Empleados, aes (Empleados$Genero,colour=Genero ))+ geom_bar() 
+ labs(x='Igualdad de Genero',y='Cantidad')

#plot 2 Empleados por departamento
ggplot (data = Empleados, aes (Empleados$Puesto,colour=Puesto))+ geom_bar() 
+ labs(x='Empleados por departamento',y='Cantidad')

#plot 3  Distribucion de empleados por ID de departamento
ggplot (data = Empleados, aes (Empleados$ID_Departamento, colour=ID_Departamento))+ geom_bar()  + labs(x='Empleados por departamento',y='Cantidad')
  

#plot 4  Distribucion de genero por ID de departamento
ggplot (data = Empleados, aes (Empleados$Genero,
                               Empleados$ID_Departamento, colour=Genero))+ geom_count()
                                + labs(x='Genero',y='ID de Departamento')


#c Correlacion de variables genero en ID de departamentos

ggplot (data = Empleados, aes (Empleados$Genero,Empleados$ID_Departamento, 
                               colour=Genero ))+ geom_boxplot () + labs(x='Genero',y='ID de Departamento')

#d Funciones
#1 Select 
Empleados %>% select(Nombre1,Apellido1,Email)

#2 filter
Empleados %>% filter(ID_Empleado==52128)

#3 arrange
Empleados %>% arrange(Puesto,Fecha_Ingreso,ID_Departamento)

#4 Group by
Empleados %>% group_by(Nombre1)%>% summarise((Genero))

