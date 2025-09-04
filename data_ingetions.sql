/* data ingestion  */

-- scripts con los insert para nuestras tablas 

-- departamentos 
INSERT INTO departamentos (nombre, edificio, presupuesto, fecha_fundacion)VALUES --- no tomamos el departamento id ya que este se genera de manera automatica
('Ingenieria', 'Edificio A', 500000.00, '1999-01-15'),
('Ciencias', 'Edificio B', 450000.00, '1985-05-20'),
('Humanidades', 'Edificio C', 300000.00, '1980-11-10'),
('Medicina', 'Edificio D', 800000.00, '2000-03-25'),
('Arquitectura', 'Edificio E', 350000.00, '1995-07-30'),
('Economia', 'Edificio F', 280000.00, '1992-09-15'),
('Derecho', 'Edificio G', 320000.00, '1988-07-22'),
('Psicologia', 'Edificio H', 260000.00, '1998-04-10'),
('Artes', 'Edificio I', 190000.00, '2002-11-30'),
('Matematicas', 'Edificio J', 310000.00, '1985-03-18');


--  carreras 
INSERT INTO carreras (departamento_id, nombre, creditos_totales, duracion_year, modalidad) VALUES 
(1, 'Ingenieria de Software', 250, 5, 'Presencial'),
(1, 'Ingenieria Civil', 260, 5, 'Presencial'),
(2, 'Biologia', 240, 4, 'Presencial'),
(3, 'Literatura', 230, 4, 'Presencial'),
(4, 'Medicina General', 300, 6, 'Presencial'),
(5, 'Arquitectura', 270, 5, 'Presencial'),
(6, 'Economia', 240, 4, 'Presencial'),
(7, 'Derecho', 250, 5, 'Presencial'),
(8, 'Psicologia Clinica', 245, 4, 'Presencial'),
(9, 'Bellas Artes', 230, 4, 'Presencial'),
(10, 'Matematicas Puras', 255, 4, 'Presencial'),
(1, 'Ingenieria Electrica', 265, 5, 'Presencial'),
(2, 'Bioquimica', 250, 4, 'Presencial'),
(3, 'Filosofia', 235, 4, 'Semipresencial'),
(4, 'Enfermeria', 245, 4, 'Presencial'),
(5, 'Design Urbano', 260, 5, 'Presencial');


-- profesores 
INSERT INTO profesores (departamento_id, cedula, nombre, apellido, fecha_nacimiento , genero, email, salario, fecha_contratacion, titulo_academico ) VALUES 
(1, '123456789', 'Juan', 'Perez', '1970-05-15', 'M', 'juan.perez@universidad.edu', 3500.00, '2005-08-20', 'PhD en Ciencias de la Computacion'),
(1, '987654321', 'Maria', 'Gomez', '1975-11-22', 'F', 'maria.gomez@universidad.edu', 3800.00, '2008-03-10', 'PhD en Ingenieria Civil'),
(2, '456789123', 'Carlos', 'Lopez', '1968-07-30', 'M', 'carlos.lopez@universidad.edu', 3200.00, '2000-01-15', 'PhD en Biologia'),
(3, '789123456', 'Ana', 'Martinez', '1980-02-14', 'F', 'ana.martinez@universidad.edu', 3000.00, '2010-09-05', 'PhD en Literatura'),
(4, '321654987', 'Luis', 'Rodriguez', '1972-09-18', 'M', 'luis.rodriguez@universidad.edu', 4500.00, '2003-07-22', 'PhD en Medicina'),
(6, '654987321', 'Roberto', 'Jimenez', '1973-08-14', 'M', 'roberto.jimenez@universidad.edu', 3400.00, '2012-05-10', 'PhD en Economia'),
(7, '321789654', 'Patricia', 'Vargas', '1965-12-05', 'F', 'patricia.vargas@universidad.edu', 3700.00, '2007-09-18', 'PhD en Derecho'),
(8, '987321654', 'Fernando', 'Castro', '1980-04-22', 'M', 'fernando.castro@universidad.edu', 3100.00, '2015-03-15', 'PhD en Psicologia'),
(9, '654321987', 'Isabel', 'Gutierrez', '1978-07-30', 'F', 'isabel.gutierrez@universidad.edu', 2900.00, '2018-11-20', 'MFA en Artes Plasticas'),
(10, '789654123', 'Ricardo', 'Mendoza', '1971-01-15', 'M', 'ricardo.mendoza@universidad.edu', 3600.00, '2009-02-28', 'PhD en Matematicas'),
(2, '123987456', 'Lucia', 'Hernandez', '1982-06-25', 'F', 'lucia.hernandez@universidad.edu', 3300.00, '2016-08-12', 'PhD en Biologia Molecular'),
(3, '456123789', 'Jorge', 'Silva', '1969-09-08', 'M', 'jorge.silva@universidad.edu', 3500.00, '2004-04-05', 'PhD en Filosofia'),
(4, '987123456', 'Carmen', 'Diaz', '1975-03-19', 'F', 'carmen.diaz@universidad.edu', 4200.00, '2011-07-22', 'PhD en Medicina'),
(5, '321456987', 'Arturo', 'Lopez', '1977-11-11', 'M', 'arturo.lopez@universidad.edu', 3800.00, '2013-10-15', 'PhD en Arquitectura'),
(1, '654789321', 'Sara', 'Martinez', '1983-02-28', 'F', 'sara.martinez@universidad.edu', 3650.00, '2017-06-08', 'PhD en Ingenieria de Sistemas');



-- estudiantes 
INSERT INTO estudiantes (carrera_id, matricula, nombre, apellido, fecha_nacimiento, genero, email, direccion, telefono, fecha_ingreso, activo) VALUES 
(1, '20230001', 'Pedro', 'Sanchez', '2000-03-25', 'M', 'pedro.sanchez@estudiante.edu', 'Calle 123, Ciudad', '555-1234', '2023-01-10', TRUE),
(1, '20230002', 'Laura', 'Fernandez', '2001-07-12', 'F', 'laura.fernandez@estudiante.edu', 'Avenida 456, Ciudad', '555-5678', '2023-01-10', TRUE),
(2, '20230003', 'Miguel', 'Diaz', '1999-11-05', 'M', 'miguel.diaz@estudiante.edu', 'Boulevard 789, Ciudad', '555-9012', '2023-01-10', TRUE),
(3, '20220004', 'Sofia', 'Hernandez', '2000-05-30', 'F', 'sofia.hernandez@estudiante.edu', 'Calle 321, Ciudad', '555-3456', '2022-01-15', TRUE),
(4, '20210005', 'Alejandro', 'Garcia', '1998-09-15', 'M', 'alejandro.garcia@estudiante.edu', 'Avenida 654, Ciudad', '555-7890', '2021-08-20', TRUE),
(6, '20230006', 'Andrea', 'Ramirez', '2001-09-15', 'F', 'andrea.ramirez@estudiante.edu', 'Calle 234, Ciudad', '555-4321', '2023-01-10', TRUE),
(7, '20230007', 'Diego', 'Ortega', '2002-04-03', 'M', 'diego.ortega@estudiante.edu', 'Avenida 567, Ciudad', '555-8765', '2023-01-10', TRUE),
(8, '20230008', 'Valeria', 'Cordero', '2000-11-28', 'F', 'valeria.cordero@estudiante.edu', 'Boulevard 890, Ciudad', '555-2109', '2023-01-10', FALSE),
(9, '20230009', 'Gabriel', 'Paredes', '1999-07-17', 'M', 'gabriel.paredes@estudiante.edu', 'Calle 135, Ciudad', '555-6543', '2023-01-10', TRUE),
(10, '20230010', 'Camila', 'Vega', '2001-02-22', 'F', 'camila.vega@estudiante.edu', 'Avenida 246, Ciudad', '555-0987', '2023-01-10', TRUE),
(11, '20220011', 'Oscar', 'Molina', '2000-05-30', 'M', 'oscar.molina@estudiante.edu', 'Boulevard 357, Ciudad', '555-5432', '2022-01-15', TRUE),
(12, '20220012', 'Mariana', 'Rojas', '1999-12-12', 'F', 'mariana.rojas@estudiante.edu', 'Calle 468, Ciudad', '555-9876', '2022-01-15', TRUE),
(13, '20210013', 'Felipe', 'Salazar', '1998-08-08', 'M', 'felipe.salazar@estudiante.edu', 'Avenida 579, Ciudad', '555-3210', '2021-08-20', TRUE),
(14, '20210014', 'Daniela', 'Morales', '1999-03-25', 'F', 'daniela.morales@estudiante.edu', 'Boulevard 680, Ciudad', '555-7654', '2021-08-20', TRUE),
(15, '20200015', 'Javier', 'Guerrero', '1997-10-10', 'M', 'javier.guerrero@estudiante.edu', 'Calle 791, Ciudad', '555-1098', '2020-08-25', FALSE),
(1, '20230016', 'Paola', 'Navarro', '2002-06-18', 'F', 'paola.navarro@estudiante.edu', 'Avenida 802, Ciudad', '555-6543', '2023-01-10', TRUE),
(2, '20230017', 'Raúl', 'Cisneros', '2001-01-05', 'M', 'raul.cisneros@estudiante.edu', 'Boulevard 913, Ciudad', '555-0987', '2023-01-10', TRUE),
(3, '20220018', 'Adriana', 'Miranda', '2000-07-22', 'F', 'adriana.miranda@estudiante.edu', 'Calle 124, Ciudad', '555-5432', '2022-01-15', TRUE),
(4, '20210019', 'Hector', 'Delgado', '1999-04-15', 'M', 'hector.delgado@estudiante.edu', 'Avenida 235, Ciudad', '555-9876', '2021-08-20', TRUE),
(5, '20200020', 'Veronica', 'Santos', '1998-09-09', 'F', 'veronica.santos@estudiante.edu', 'Boulevard 346, Ciudad', '555-3210', '2020-08-25', FALSE);



-- cursos 
INSERT INTO cursos (departamento_id, codigo, nombre, creditos, descripcion, requisitos, nivel) VALUES 
(1, 'ISW-101', 'Introduccion a la Programacion', 4, 'Fundamentos de programacion', 'Ninguno', 1),
(1, 'ISW-201', 'Estructuras de Datos', 5, 'Estructuras basicas de datos', 'ISW-101', 2),
(1, 'ISW-301', 'Bases de Datos', 5, 'Design e implementacion de bases de datos', 'ISW-201', 3),
(2, 'BIO-101', 'Biologia General', 4, 'Introduccion a la Biologia', 'Ninguno', 1),
(3, 'LIT-201', 'Literatura Universal', 4, 'Estudio de obras literarias clasicas', 'Ninguno', 2),
(6, 'ECO-101', 'Introduccion a la Economia', 4, 'Conceptos basicos de Economia', 'Ninguno', 1),
(6, 'ECO-201', 'MicroEconomia', 5, 'Teoria del consumidor y productor', 'ECO-101', 2),
(7, 'DER-101', 'Derecho Romano', 4, 'Fundamentos del derecho romano', 'Ninguno', 1),
(7, 'DER-301', 'Derecho Penal', 5, 'Teoria del delito y la pena', 'DER-101', 3),
(8, 'PSI-101', 'Psicologia General', 4, 'Introduccion a la Psicologia', 'Ninguno', 1),
(8, 'PSI-202', 'Psicologia del Desarrollo', 5, 'Desarrollo humano a lo largo del ciclo vital', 'PSI-101', 2),
(9, 'ART-101', 'Historia del Arte', 4, 'Evolucion del arte a traves de la historia', 'Ninguno', 1),
(9, 'ART-203', 'Tecnicas de Pintura', 5, 'Taller practico de pintura', 'ART-101', 2),
(10, 'MAT-101', 'Calculo I', 5, 'Limites, derivadas e integrales', 'Ninguno', 1),
(10, 'MAT-302', 'algebra Lineal', 5, 'Espacios vectoriales y transformaciones lineales', 'MAT-101', 3),
(1, 'IEL-201', 'Circuitos Electricos', 5, 'Analisis de circuitos electricos', 'Ninguno', 2),
(2, 'BIO-301', 'Genetica', 5, 'Principios de herencia y variacion', 'BIO-101', 3),
(3, 'FIL-101', 'Logica', 4, 'Introduccion a la logica formal', 'Ninguno', 1),
(4, 'ENF-101', 'Anatomia Humana', 5, 'Estructura del cuerpo humano', 'Ninguno', 1),
(5, 'DUR-201', 'Design Urbano', 5, 'Principios de Design de espacios urbanos', 'Ninguno', 2);


--secciones 
INSERT INTO secciones (curso_id, profesor_id, semestre, seccion_year, aula, horario, cupo_maximo) VALUES 
(1, 1, 'Primavera', 2023, 'A-101', 'Lunes y Miercoles 8:00-10:00', 30),
(1, 1, 'Otoño', 2023, 'A-102', 'Martes y Jueves 10:00-12:00', 30),
(2, 2, 'Primavera', 2023, 'B-201', 'Lunes y Miercoles 14:00-16:00', 25),
(3, 1, 'Otoño', 2023, 'A-301', 'Viernes 8:00-12:00', 20),
(4, 3, 'Primavera', 2023, 'C-101', 'Martes y Jueves 8:00-10:00', 35),
(6, 6, 'Primavera', 2023, 'F-101', 'Lunes y Miercoles 10:00-12:00', 35),
(7, 6, 'Otoño', 2023, 'F-102', 'Martes y Jueves 14:00-16:00', 30),
(8, 7, 'Primavera', 2023, 'G-201', 'Lunes y Miercoles 16:00-18:00', 25),
(9, 7, 'Otoño', 2023, 'G-202', 'Viernes 8:00-12:00', 20),
(10, 8, 'Primavera', 2023, 'H-101', 'Martes y Jueves 8:00-10:00', 30),
(11, 8, 'Otoño', 2023, 'H-102', 'Lunes y Miercoles 10:00-12:00', 25),
(12, 9, 'Primavera', 2023, 'I-201', 'Martes y Jueves 16:00-18:00', 20),
(13, 9, 'Otoño', 2023, 'I-202', 'Viernes 14:00-18:00', 15),
(14, 10, 'Primavera', 2023, 'J-101', 'Lunes y Miercoles 8:00-10:00', 30),
(15, 10, 'Otoño', 2023, 'J-102', 'Martes y Jueves 10:00-12:00', 25),
(16, 11, 'Primavera', 2023, 'B-301', 'Lunes y Miercoles 14:00-16:00', 30),
(17, 12, 'Otoño', 2023, 'C-201', 'Viernes 8:00-12:00', 25),
(18, 13, 'Primavera', 2023, 'D-101', 'Martes y Jueves 8:00-10:00', 20),
(19, 14, 'Otoño', 2023, 'E-201', 'Lunes y Miercoles 10:00-12:00', 30),
(20, 15, 'Primavera', 2023, 'A-201', 'Martes y Jueves 14:00-16:00', 25);



--- matriculas 
INSERT INTO matriculas (estudiante_id, seccion_id, calificacion, estado) VALUES 
(21, 1, 8.5, 'Aprobado'),
(21, 3, 7.0, 'Aprobado'),
(22, 1, 9.0, 'Aprobado'),
(22, 3, NULL, 'Cursando'),
(23, 2, 6.5, 'Aprobado'),
(24, 5, 8.0, 'Aprobado'),
(25, 4, NULL, 'Cursando'),
(26, 6, 8.0, 'Aprobado'),
(26, 8, NULL, 'Cursando'),
(27, 7, 7.5, 'Aprobado'),
(27, 9, 9.0, 'Aprobado'),
(28, 8, 8.5, 'Aprobado'),
(28, 10, NULL, 'Cursando'),
(29, 9, 6.0, 'Aprobado'),
(29, 11, 7.0, 'Aprobado'),
(30, 10, 9.5, 'Aprobado'),
(30, 12, NULL, 'Cursando'),
(31, 11, 8.0, 'Aprobado'),
(31, 13, 7.5, 'Aprobado'),
(32, 12, 6.5, 'Aprobado'),
(32, 14, NULL, 'Cursando'),
(33, 13, 9.0, 'Aprobado'),
(33, 15, 8.5, 'Aprobado'),
(34, 14, 7.0, 'Aprobado'),
(34, 6, NULL, 'Cursando'),
(35, 15, 6.5, 'Aprobado'),
(36, 6, 8.0, 'Aprobado'),
(37, 7, NULL, 'Cursando'),
(38, 8, 7.5, 'Aprobado'),
(39, 9, 9.0, 'Aprobado'),
(40, 10, NULL, 'Cursando');


-- prerrequisitos 
INSERT INTO prerrequisitos (curso_id, curso_prerrequisito_id, obligatorio) VALUES
(2, 1, TRUE),
(3, 2, TRUE),
(7, 6, TRUE),
(9, 8, TRUE),
(11, 10, TRUE),
(13, 12, TRUE),
(15, 14, TRUE),
(17, 16, FALSE),
(19, 18, TRUE),
(12, 4, TRUE),
(16, 1, TRUE),
(20, 15, FALSE);


--- proyectos 
INSERT INTO proyectos (departamento_id, titulo, descripcion, fecha_inicio, fecha_fin, presupuesto, estado ) VALUES 
(1, 'Desarrollo de Software Educativo', 'Creacion de plataforma para aprendizaje en linea', '2023-01-15', '2024-01-15', 50000.00, 'En progreso'),
(2, 'Estudio de Biodiversidad Local', 'Investigacion de especies en la region', '2022-09-01', '2023-12-31', 30000.00, 'En progreso'),
(3, 'Literatura Contemporanea', 'Analisis de tendencias literarias actuales', '2023-03-01', '2023-11-30', 15000.00, 'Planificacion'),
(6, 'Analisis de Mercados Emergentes', 'Estudio de tendencias economicas en mercados en desarrollo', '2023-02-01', '2024-02-01', 40000.00, 'En progreso'),
(7, 'Reforma Judicial', 'Investigacion sobre procesos de reforma judicial en America Latina', '2022-11-15', '2023-11-15', 35000.00, 'En progreso'),
(8, 'Salud Mental en Universitarios', 'Estudio sobre prevalencia de trastornos mentales en estudiantes', '2023-04-01', '2024-04-01', 28000.00, 'Planificacion'),
(9, 'Arte Público y Comunidad', 'Proyecto de intervencion artistica en espacios públicos', '2023-01-10', '2023-12-10', 22000.00, 'En progreso'),
(10, 'Modelos Matematicos para Cambio Climatico', 'Desarrollo de modelos predictivos para cambio climatico', '2022-10-01', '2025-10-01', 75000.00, 'En progreso');


-- profesores proyectos 
INSERT INTO profesores_proyectos (profesor_id, proyecto_id, rol, horas_semanales , fecha_inicio, fecha_fin) VALUES
(1, 1, 'Investigador Principal', 10, '2023-01-15', '2024-01-15'),
(3, 2, 'Coinvestigador', 8, '2022-09-01', '2023-12-31'),
(4, 3, 'Investigador Principal', 6, '2023-03-01', '2023-11-30'),
(6, 4, 'Investigador Principal', 12, '2023-02-01', '2024-02-01'),
(7, 5, 'Coordinador', 10, '2022-11-15', '2023-11-15'),
(8, 6, 'Asesor Metodologico', 8, '2023-04-01', '2024-04-01'),
(9, 7, 'Director Creativo', 6, '2023-01-10', '2023-12-10'),
(10, 8, 'Modelador Principal', 15, '2022-10-01', '2025-10-01'),
(11, 1, 'Consultor Tecnico', 5, '2023-01-15', '2024-01-15'),
(12, 2, 'Analista de Datos', 8, '2022-09-01', '2023-12-31'),
(13, 3, 'Revisor', 4, '2023-03-01', '2023-11-30');



-- libros 
INSERT INTO libros (isbn, titulo, autor, editorial, year_publicacion, edicion, categoria, ejemplares_disponibles) VALUES 
('978-0134685991', 'Clean Code', 'Robert C. Martin', 'Prentice Hall', 2008, '1st', 'Programacion', 5),
('978-0321125217', 'Domain-Driven Design', 'Eric Evans', 'Addison-Wesley', 2003, '1st', 'Programacion', 3),
('978-0061120084', 'To Kill a Mockingbird', 'Harper Lee', 'HarperCollins', 1960, '50th', 'Literatura', 8),
('978-0307474278', 'The Origin of Species', 'Charles Darwin', 'Modern Library', 1859, '150th', 'Biologia', 4),
('978-0143105428', '1984', 'George Orwell', 'Penguin Books', 1949, 'Reprint', 'Literatura', 7),
('978-0062315007', 'El Alquimista', 'Paulo Coelho', 'HarperOne', 1988, '25th Anniversary', 'Ficcion', 6),
('978-0307476463', 'Thinking, Fast and Slow', 'Daniel Kahneman', 'Farrar, Straus and Giroux', 2011, '1st', 'Psicologia', 4),
('978-0374533557', 'Poor Economics', 'Abhijit V. Banerjee, Esther Duflo', 'PublicAffairs', 2011, '1st', 'Economia', 3),
('978-0393609394', 'Astrophysics for People in a Hurry', 'Neil deGrasse Tyson', 'W. W. Norton & Company', 2017, '1st', 'Ciencia', 5),
('978-0525563525', 'The Body Keeps the Score', 'Bessel van der Kolk', 'Penguin Books', 2014, 'Reprint', 'Psicologia', 4),
('978-0679760801', 'The Origins of Totalitarianism', 'Hannah Arendt', 'Harvest Books', 1951, '3rd', 'Filosofia', 3),
('978-0684830490', 'The Art of War', 'Sun Tzu', 'Simon & Brown', -500, 'Reprint', 'Estrategia', 6),
('978-0743273565', 'The World Is Flat', 'Thomas L. Friedman', 'Farrar, Straus and Giroux', 2005, '3rd', 'Economia', 2),
('978-1591846444', 'Zero to One', 'Peter Thiel', 'Portfolio', 2014, '1st', 'Negocios', 5);


-- prestamos 
INSERT INTO prestamos (libros_id, estudiante_id, fecha_prestamos, fecha_devolucion_esperada, fecha_devolucion_real, estado) VALUES
(1, 21, '2023-02-15', '2023-03-15', '2023-03-10', 'Devuelto'),
(2, 23, '2023-03-01', '2023-03-31', NULL, 'Prestado'),
(4, 24, '2023-01-20', '2023-02-20', '2023-03-05', 'Atrasado'),
(5, 26, '2023-03-10', '2023-04-10', '2023-04-05', 'Devuelto'),
(6, 27, '2023-03-15', '2023-04-15', NULL, 'Prestado'),
(7, 28, '2023-02-20', '2023-03-20', '2023-03-25', 'Atrasado'),
(8, 29, '2023-04-01', '2023-05-01', NULL, 'Prestado'),
(9, 30, '2023-01-15', '2023-02-15', '2023-02-10', 'Devuelto'),
(10, 31, '2023-03-05', '2023-04-05', NULL, 'Prestado'),
(5, 32, '2023-02-28', '2023-03-28', '2023-04-02', 'Atrasado'),
(6, 33, '2023-04-10', '2023-05-10', NULL, 'Prestado'),
(7, 34, '2023-03-20', '2023-04-20', NULL, 'Prestado'),
(8, 35, '2023-01-30', '2023-02-28', '2023-03-05', 'Atrasado');


-- becas 
INSERT INTO becas (nombre, descripcion , monto, requisitos, disponibles) VALUES
('Excelencia Academica', 'Para estudiantes con promedio superior a 9.0', 2000.00, 'Promedio minimo 9.0', TRUE),
('Deportiva', 'Para estudiantes destacados en deportes', 1500.00, 'Participacion en equipos universitarios', TRUE),
('Investigacion', 'Para estudiantes involucrados en proyectos de investigacion', 2500.00, 'Participacion en proyectos aprobados', TRUE),
('Ayuda Economica', 'Para estudiantes de bajos recursos', 1800.00, 'Comprobante de ingresos familiares', TRUE),
('Deportes de Alto Rendimiento', 'Para atletas destacados', 2200.00, 'Seleccion en equipo representativo', TRUE),
('Artistica', 'Para estudiantes destacados en artes', 2000.00, 'Portafolio de trabajos artisticos', TRUE),
('Investigacion Temprana', 'Para estudiantes que inician en investigacion', 2300.00, 'Propuesta de investigacion aprobada', TRUE),
('Internacionalizacion', 'Para estudiantes en programas de intercambio', 3000.00, 'Aceptacion en programa internacional', FALSE);



--- becas asignadas 
INSERT INTO becas_estudiantes (beca_id, estudiante_id , fecha_vencimiento, monto_asignado, estado) VALUES 
(1, 21, '2023-12-31', 2000.00, 'Activa'),
(3, 24, '2024-05-31', 2500.00, 'Activa'),
(4, 22, '2023-12-31', 1800.00, 'Activa'),
(5, 23, '2024-06-30', 2200.00, 'Activa'),
(6, 25, '2023-12-31', 2000.00, 'Activa'),
(7, 27, '2024-05-31', 2300.00, 'Activa'),
(4, 29, '2023-12-31', 1800.00, 'Activa'),
(5, 31, '2024-06-30', 2200.00, 'Activa'),
(6, 33, '2023-12-31', 2000.00, 'Activa'),
(7, 35, '2024-05-31', 2300.00, 'Cancelada');



--- eventos de la universidad 
INSERT INTO eventos (departamento_id, nombre, descripcion, fecha_inicio, fecha_fin, ubicacion, capacidad, costo, tipo) VALUES 
(1, 'Conferencia de Tecnologia', 'Charlas sobre tendencias tecnologicas', '2023-04-15 09:00:00', '2023-04-15 18:00:00', 'Auditorio Principal', 200, 0.00, 'Academico'),
(3, 'Feria del Libro', 'Exposicion y venta de libros', '2023-05-20 10:00:00', '2023-05-22 20:00:00', 'Plaza Central', 500, 0.00, 'Cultural'),
(2, 'Olimpiada Cientifica', 'Competencia de conocimientos cientificos', '2023-06-10 08:00:00', '2023-06-12 17:00:00', 'Edificio B', 100, 50.00, 'Academico'),
(6, 'Foro Economico', 'Discusion sobre tendencias economicas globales', '2023-05-10 09:00:00', '2023-05-10 17:00:00', 'Auditorio de Economia', 150, 0.00, 'Academico'),
(7, 'Simulacro de Juicio', 'Simulacion de proceso judicial con estudiantes', '2023-06-05 10:00:00', '2023-06-05 14:00:00', 'Aula Magna', 100, 0.00, 'Academico'),
(8, 'Taller de Manejo de Estres', 'Tecnicas para manejo de estres academico', '2023-04-20 14:00:00', '2023-04-20 17:00:00', 'Sala de Psicologia', 30, 20.00, 'Cultural'),
(9, 'Exposicion de Arte Estudiantil', 'Muestra de trabajos artisticos de estudiantes', '2023-05-15 10:00:00', '2023-05-19 20:00:00', 'Galeria Universitaria', 200, 0.00, 'Cultural'),
(10, 'Olimpiada Matematica', 'Competencia de resolucion de problemas matematicos', '2023-07-08 08:00:00', '2023-07-08 16:00:00', 'Edificio de Matematicas', 50, 30.00, 'Academico');



--- asistencias de los eventos 
INSERT INTO asistentes_eventos (evento_id, estudiante_id, profesor_id, asistio) VALUES 
(1, 21, NULL, TRUE),
(1, NULL, 1, TRUE),
(2, 24, NULL, FALSE),
(3, 22, NULL, TRUE),
(3, NULL, 3, TRUE),
(4, 26, NULL, TRUE),
(4, NULL, 6, TRUE),
(5, 27, NULL, FALSE),
(5, NULL, 7, TRUE),
(6, 28, NULL, TRUE),
(6, NULL, 8, FALSE),
(7, 29, NULL, TRUE),
(7, NULL, 9, TRUE),
(8, 30, NULL, FALSE),
(8, NULL, 10, TRUE),
(4, 31, NULL, TRUE),
(5, 32, NULL, FALSE),
(6, 33, NULL, TRUE),
(7, 34, NULL, FALSE),
(8, 35, NULL, TRUE); 


















