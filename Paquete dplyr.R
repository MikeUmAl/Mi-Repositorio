#verificar DF
Productos = data.frame(Productos)
class(Productos)
View(Productos)
#head
head(Productos)

#tail
tail(Productos)

#resumen
summary(Productos)

#dlyr

#1 seleccionar 
select(Productos,NombreProducto,PrecioUnidad)

View(var_Productos)

View(var_Productos2)

#filter
View(filter(var_Productos,Categoría=="Bebidas"))

#arrange (data,columna)
View(arrange(Productos,(Productos$PrecioUnidad)))

#rename data, nombre=nombre antiguo
View(rename(Productos,TipoProducto = Categoría ))

#mutate

Productos = mutate(Productos, ColumnaNuena=PrecioUnidad*3)
Productos = mutate(Productos, FechaHoy=date())

View(Productos)

#group by

dataAgrupada = iris%>%group_by(Species)%>%summarise(mean(Petal.Length))
View(dataAgrupada)

#funciones anidadas
dataAgrupada = Productos %>% group_by(Categoría)%>%summarise(Cantidad = n())
View(dataAgrupada)

#Notas - %>% operador para pegar funciones en una tabla
#Cantidad - nombre dado a la columna del groupby
#groupby va con summarise

dataAgrupada2 = Productos %>% group_by(Proveedor,Categoría) %>% 
  summarise(Cantidad = n()) %>%filter(Categoría=='Carnes')
View(dataAgrupada2)

#joints para poder hacerlo las columanas deben llamarse igual
Almacen = data_frame(Almacen)
class(Almacen)
View(Almacen)

Almacen = rename(Almacen, ID_Almacen = ID)
View(rename((Almacen, ID_Almacen = ID))
