### esquema para el modulo 1 ####


este archive solo contiene la estructura de como sera el modulo 1 para el curso 


1. introduccion al curso y que vas a lograr 

Este curso está diseñado para profesionales y estudiantes que nunca trabajaron con bases de datos pero necesitan adquirir rápidamente las habilidades para utilizar SQL en su trabajo.

A lo largo de más de 6 horas de contenido teórico-práctico, aprenderás a instalar PostgreSQL y DBeaver, crear bases de datos, trabajar con tablas y realizar consultas que te permitirán extraer, transformar y analizar información de manera profesional.

Cada módulo combina teoría clara con ejercicios prácticos, y culmina con un proyecto real en el que construirás tu propia base de datos de empleados y generarás reportes útiles para la toma de decisiones.

Al finalizar este curso, tendrás la confianza y las herramientas necesarias para trabajar con SQL en entornos reales y sentar las bases para un nivel avanzado.

🚀 Lo que aprenderás

Instalar y configurar PostgreSQL y DBeaver paso a paso.

Crear bases de datos y tablas con buenas prácticas.

Usar consultas SQL básicas (SELECT, WHERE, ORDER BY, LIMIT).

Trabajar con funciones de agregación y agrupación de datos.

Insertar, actualizar y eliminar registros en tablas.

Relacionar tablas con claves foráneas y diferentes tipos de JOIN.

Importar datos externos a PostgreSQL (ej. CSV).

Construir un proyecto final aplicando todo lo aprendido.


que es sql ??? crear un slide con info relevante sobre el tema


2. por que postgres es el rey del sql modernos??? 


PostgreSQL es el rey del SQL moderno porque combina lo mejor de dos mundos: la solidez del SQL clásico y la flexibilidad que exigen las aplicaciones actuales. Es gratuito, potente, extensible y usado por empresas globales… lo que lo convierte en la elección perfecta tanto para aprender como para trabajar profesionalmente.


3. instalacion rapida de postgres y dbeaver (consejos practicos para dbeaver) 

herramienta universal y gratuita de gestion de bases de datos, de codigo abierto 

manual de instalacion de postgres 


cargar el paso a paso para instalar postgres 

SGBD = sistema gestor de bases de datos (postgres es uno) 

### pasos para instalar postgres ####

1. descargar el prorama 
2. ejecutar el programa
3. cuando nos indique una password debe esta sera para el super usuario de postgres 
4. por defect el Puerto es 5432 lo dejamos asi 
5. seleccionar la configuracion regional (preferiblemente ingles, o cualquiera de su eleccion) 
6. luego siguiente hasta que inicie la instalacion 

7. luego revisamos que este instalado correctamente 
	por via cmd con el commando postgres --version nos indica en pantalla la version 

8. dar una muestra de que pgadmin se puede usar como gestor de base de datos pero vamos a usar dbeaver. 


manual de instalacion de dbeaver
herramienta gratuita para gestion de bases de datos de codigo abierto, existen unas mejores pero son de pago como navicat. ventajas de dbeaver es free y Podemos conectarnos a todo tipos de sgbd (MySQL - postgres - sql server - mongodb) 



cargar el paso a paso para instalar la aplicacion 

1. descargar el programa 
2. seleccionamos el idioma que deseamos 
3. cuando nos pida para que usuarios indicar todos lo usuarios. 
4. seleccionamos reset setting - associate sql file - associate sql lite database 
5. ejecutamo dbeaver 
6. Podemos indicar que no cree una base de datos de muestra no es necesaria 
7. si nos sale un cartel de excluir dbeaver de windows security le indicamos que si mejora el performance de la app en windows 


consejos para mejorar dbeaver 
1. para no tener problemas de visualizacion con las bases de datos que se creen posterior a la conexion con postgres debemos tildar la opcion show all databases en el menu de opciones de la conexion. 

2. para mejorar un poco el gestor dbeaver Podemos indicarle que transforme todas las sentencias como select a mayusculas de la siguiente forma
entramos al menu windows / preferencias / editor /sql editor / formatting / buscamos la opcion de keyword case y le indicamos upper 







