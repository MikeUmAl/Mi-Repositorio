DB_Northwind <- DBI::dbConnect(odbc::odbc(),
                                Driver = "SQL Server",
                                Server = "dbtedamssql.uh.ac.cr",
                                Database = "Northwind",
                                UID = rstudioapi::askForPassword("Database user"),
                                PWD = rstudioapi::askForPassword("Database password"),
                                Port = 1433)

Clientes<-dbGetQuery(DB_Northwind,"select * from [Customers]")
View(Clientes)


ggplot (data = Clientes, aes (Clientes$CustomerID, Clientes$Country)) + geom_point()