






### PROYECTO SQL POSTGRES ### 

-- este archive se estara llenando con los datos necesarios para el Proyecto


esquema del Proyecto 

	schema_design.sql	# Scripts de CREATE TABLE 
	data_ingestion.sql	# Scripts de INSERT (o instrucciones)
	analysis_queries.sql	# Tus consultas de analisis 
	view_functions.sql	# Vistas, funciones, tiggers
	insights.md		# Explicacion de tus hallazgos



1. en el archive schema_design.sql debemos proceder de la siguiente forma para evitar errores 
	1. ejecutamos unicamente la sentencia de create table universidad_estudio; 
	2. luego de ejecutar cambiamos de base de datos a la creada anteriormente (esto para 	que no se creen las tablas en otra DB)
	3. luego lo major es comentar el create para evitar errores y ejecutar con las teclas 	alt + x todas las demas sentencias.


2. el archive data_ingestion.sql son los insert correspondientes a la estructura creada anteriormente solo debemos ejecutar dicho archive con las teclas alt + x, se ejecutara el insert de los datos 








