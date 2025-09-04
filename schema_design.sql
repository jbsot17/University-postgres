-- creacion de la data base 

 -- CREATE DATABASE universidad_estudio;


-- NOTA: para efectos de rapidez se crea todas las primary key con serial pero una buena practica es crearla de la siguiente manera 
/*
 * create table departamentos(
 * id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- con esto podemos controlar mas parametros usar en casos reales
 * )
 * esto genera que sea incremental y segundo permite mayor control 
 * (INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE)
 * le podemos indicar como queremos que incremente, cual sera el valor minimo y maximo, y otros valores extras 			
 * 
 * */
-- tabla 1: departamentos acamedicos

CREATE TABLE departamentos(
departamento_id SERIAL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
edificio VARCHAR(50),
presupuesto NUMERIC(12,2), --indicamos que el numero tiene un maximo de 12 digitos de los cuales 2 son decimales 
fecha_fundacion DATE 
);

-- tabla 2: carreras 
CREATE TABLE carreras(
carrera_id SERIAL PRIMARY KEY,
departamento_id INTEGER REFERENCES departamentos(departamento_id),
nombre VARCHAR(100) NOT NULL,
creditos_totales INTEGER NOT NULL,
duracion_year INTEGER,
modalidad VARCHAR(50) CHECK (modalidad IN ('Presencial','Semipresencial','Virtual')) -- con el check limitamos los posibles datos a ingresar en esta columna
);

-- tabla 3: profesores 
CREATE TABLE profesores(
profesor_id SERIAL PRIMARY KEY,
departamento_id INTEGER REFERENCES departamentos(departamento_id),
cedula VARCHAR(20) UNIQUE NOT NULL,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
fecha_nacimiento DATE,
genero CHAR(1) CHECK (genero IN ('M','F','O')),
email VARCHAR(100) UNIQUE,
salario NUMERIC(10,2),
fecha_contratacion DATE,
titulo_academico VARCHAR(100)
);


-- tabla 4: estudiantes 
CREATE TABLE estudiantes(
estudiante_id SERIAL PRIMARY KEY,
carrera_id INTEGER REFERENCES carreras(carrera_id),
matricula VARCHAR(20) UNIQUE NOT NULL,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
fecha_nacimiento DATE,
genero CHAR(1) CHECK (genero IN ('M','F','O')),
email VARCHAR(100) UNIQUE,
direccion TEXT,
telefono VARCHAR(20),
fecha_ingreso DATE,
activo BOOLEAN DEFAULT TRUE
);

-- tabla 5: cursos
CREATE TABLE cursos(
curso_id SERIAL PRIMARY KEY,
departamento_id INTEGER REFERENCES departamentos(departamento_id),
codigo VARCHAR(20) UNIQUE NOT NULL, 
nombre VARCHAR(100) NOT NULL,
creditos INTEGER NOT NULL,
descripcion TEXT,
requisitos TEXT,
nivel INTEGER CHECK (nivel BETWEEN 1 AND 5)
);

-- tabla 6: secciones (instancias de cursos en semestres especificos)
CREATE TABLE secciones(
seccion_id SERIAL PRIMARY KEY,
curso_id INTEGER REFERENCES cursos(curso_id),
profesor_id INTEGER REFERENCES profesores(profesor_id),
semestre VARCHAR(20),
seccion_year INTEGER NOT NULL,
aula VARCHAR(20),
horario TEXT,
cupo_maximo INTEGER,
matriculados INTEGER DEFAULT 0
);


-- tabla 7: matriculas (estudiandtes por seccion) 
CREATE TABLE matriculas(
matricula_id SERIAL PRIMARY KEY,
estudiante_id INTEGER REFERENCES estudiantes(estudiante_id),
seccion_id INTEGER REFERENCES secciones(seccion_id),
fecha_matricula DATE DEFAULT NOW(), -- le indicamos que tome la fecha del dia por defecto 
calificacion NUMERIC(3,1) CHECK (calificacion BETWEEN 0 AND 10 OR calificacion IS NULL),
estado VARCHAR(20) DEFAULT 'Cursando' CHECK (estado IN ('Cursando', 'Aprobado','Reprobado','Retirado')), 
UNIQUE (estudiante_id,seccion_id) -- con unique undicamos que el campo no puede ser duplicado, unico 
);


-- tabla 8: prerrequisitos 
CREATE TABLE prerrequisitos(
prerrequisito_id SERIAL PRIMARY KEY,
curso_id INTEGER REFERENCES cursos(curso_id),
curso_prerrequisito_id INTEGER REFERENCES cursos(curso_id),
obligatorio BOOLEAN	DEFAULT TRUE,
UNIQUE (curso_id,curso_prerrequisito_id)
);


-- tabla 9: proyectos de investigacion 
CREATE TABLE proyectos(
proyecto_id SERIAL PRIMARY KEY,
departamento_id INTEGER	REFERENCES departamentos (departamento_id),
titulo VARCHAR(200) NOT NULL,
descripcion TEXT,
fecha_inicio DATE,
fecha_fin DATE,
presupuesto NUMERIC(12,2),
estado VARCHAR(50) CHECK (estado IN ('Planificacion','En progreso', 'Finalizado','Cancelado'))
);

--tabla 10: participaciones de profesores en proyectos 
CREATE TABLE profesores_proyectos(
participacion_id SERIAL PRIMARY KEY,
profesor_id INTEGER REFERENCES profesores (profesor_id),
proyecto_id INTEGER REFERENCES proyectos(proyecto_id),
rol VARCHAR(100),
horas_semanales INTEGER,
fecha_inicio DATE,
fecha_fin DATE,
UNIQUE(profesor_id,proyecto_id)
);

-- tabla 11: biblioteca - libros 
CREATE TABLE libros(
libro_id SERIAL PRIMARY KEY,
isbn VARCHAR(20) UNIQUE,
titulo VARCHAR(200) NOT NULL,
autor VARCHAR(100),
editorial VARCHAR(100),
year_publicacion INTEGER,
edicion VARCHAR(20),
categoria VARCHAR(100),
ejemplares_disponibles INTEGER DEFAULT 0
);


-- tabla 12: prestamos de libros 
CREATE TABLE prestamos(
prestamos_id SERIAL PRIMARY KEY,
libros_id INTEGER REFERENCES libros (libro_id),
estudiante_id INTEGER REFERENCES estudiantes (estudiante_id),
fecha_prestamos DATE DEFAULT NOW(),
fecha_devolucion_esperada DATE,
fecha_devolucion_real DATE,
estado VARCHAR(20) DEFAULT 'Prestado' CHECK (estado IN ('Prestado','Devuelto','Atrasado','Perdido'))
);


-- tabla 13: becas
CREATE TABLE becas(
beca_id SERIAL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
descripcion TEXT,
monto NUMERIC(8,2),
requisitos TEXT,
disponibles BOOLEAN DEFAULT TRUE 
);

-- tabla 14 becas asignadas a estudiantes 
CREATE TABLE becas_estudiantes(
asignacion_id SERIAL PRIMARY KEY,
beca_id INTEGER REFERENCES becas(beca_id),
estudiante_id INTEGER REFERENCES estudiantes(estudiante_id),
fecha_asignacion DATE DEFAULT NOW(),
fecha_vencimiento DATE,
monto_asignado NUMERIC(8,2),
estado VARCHAR(20) DEFAULT 'Activa' CHECK (estado IN ('Activa','Finalizada','Cancelada','Suspendida')),
UNIQUE (beca_id,estudiante_id)
);


-- tabla 15 eventos universitarios 
CREATE TABLE eventos(
evento_id SERIAL PRIMARY KEY,
departamento_id INTEGER REFERENCES departamentos (departamento_id),
nombre VARCHAR(200) NOT NULL,
descripcion TEXT,
fecha_inicio TIMESTAMP,
fecha_fin TIMESTAMP,
ubicacion VARCHAR(100),
capacidad INTEGER,
costo NUMERIC(6,2),
tipo VARCHAR(50) CHECK (tipo IN ('Academico','Cultural','Deportivo','Social'))
);

-- tabla 16: asistencia a eventos (relacion muchos a muchos)
CREATE TABLE asistentes_eventos(
asistencia_id SERIAL PRIMARY KEY,
evento_id INTEGER REFERENCES eventos (evento_id),
estudiante_id INTEGER REFERENCES estudiantes(estudiante_id),
profesor_id INTEGER REFERENCES profesores (profesor_id),
fecha_registro TIMESTAMP DEFAULT NOW(),
asistio BOOLEAN DEFAULT FALSE,
CHECK (estudiante_id  IS NOT NULL OR profesor_id IS NOT NULL),
UNIQUE (evento_id, estudiante_id, profesor_id)
);





