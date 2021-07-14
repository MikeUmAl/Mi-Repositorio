library("DBI")
library("odbc")
library("dbplyr")

#a.Conexion a SQL DB ETL, Tabla ETL
DB_ETL<- DBI::dbConnect(odbc::odbc(),
                        Driver = "SQL Server",
                        Server = "dbtedamssql.uh.ac.cr",
                        Database = "ETL",
                        UID = rstudioapi::askForPassword("Database user"),
                        PWD = rstudioapi::askForPassword("Database password"),
                        Port = 1433)

Empleados<-dbGetQuery(DB_ETL,"select * from [BD_Empleados]")
View(Empleados)

#b plots
#plot 1 igualdad de genero
ggplot (data = Empleados, aes (Empleados$Genero,colour=Genero ))+ 
  geom_bar() + labs(x='Igualdad de Genero',y='Cantidad')

#plot 2 Empleados por departamento
ggplot (data = Empleados, aes (Empleados$Puesto,colour=Puesto))+ 
  geom_bar() + labs(x='Empleados por departamento',y='Cantidad')

#plot 3  Distribucion de empleados por ID de departamento
ggplot (data = Empleados, aes (Empleados$ID_Departamento, colour=ID_Departamento))+ 
  geom_bar()  + labs(x='Empleados por ID de departamento',y='Cantidad')
  

#plot 4  Distribucion de genero por ID de departamento
ggplot (data = Empleados, aes (Empleados$Genero,
                               Empleados$ID_Departamento, colour=Genero))+ geom_count()
                                + labs(x='Genero',y='ID de Departamento')


#c Correlacion de variables genero en ID de departamentos

ggplot (data = Empleados, aes (Empleados$Genero,Empleados$ID_Departamento, 
                               colour=Genero ))+ geom_boxplot () + labs(x='Genero',y='ID de Departamento')

#d Funciones de dplyr
#1 Select 
CorreoElectronico = select(Empleados,Nombre1,Apellido1,Email)
View(CorreoElectronico)

#2 filter
FiltroEmpleado = filter(Empleados,ID_Empleado==52128)
View(FiltroEmpleado)

#3 arrange
Organizado = arrange(Empleados,Puesto,Fecha_Ingreso,ID_Departamento)
View(Organizado)

#4 Group by
Agrupado = Empleados%>% group_by(ID_Empleado)%>% summarise((Genero))
View(Agrupado)

#e creacion de Funciones
#1 Creacion de ID global con  ID_Empleado Empleados y ID_Departamento
Numero_Global = paste(Empleados$ID_Empleado,Empleados$ID_Departamento)
View(Numero_Global)
Global_ID_Emp = mutate(Empleados, ID_Global=Numero_Global)
View(Global_ID_Emp)

#2Renombrar columna Email por Correo_Electronico
Global_ID_Emp2 = rename (Global_ID_Emp,Correo_Electronico=Email)
View(Global_ID_Emp2)

