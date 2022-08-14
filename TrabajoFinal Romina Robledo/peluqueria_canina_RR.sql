CREATE DATABASE peluqueria_canina_RR;
use peluqueria_canina_RR;

-- Creando tablas
CREATE TABLE Dueno(
DNI int not null,
Nombre varchar (30),
Apellido varchar (30),
Telefono int,
Direccion varchar (50),
CONSTRAINT pk_dueno PRIMARY KEY (DNI));


CREATE TABLE Perro (
ID_Perro int AUTO_INCREMENT NOT NULL,
Nombre varchar (30),
Fecha_nac date,
Sexo varchar (10),
DNI_dueno int not null,
CONSTRAINT pk_id_perr PRIMARY KEY (ID_Perro),
CONSTRAINT fk_dni_dueno FOREIGN KEY (DNI_dueno)	
	REFERENCES dueno(DNI));


CREATE TABLE Historial (
ID_Historial int AUTO_INCREMENT NOT NULL,
Fecha date,
Perro int not null,
Descipcion varchar (200),
Monto int ,
CONSTRAINT pk_id_historail PRIMARY KEY (ID_Historial),
CONSTRAINT fk_id_perro_perro FOREIGN KEY (Perro)	
	REFERENCES perro(ID_Perro));
    
-- Ingresando registros en la tabla Dueno

INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (28957346, "Juan", "Perez", 4789689, "Belgrano 101");
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (23546987, "Maria", "Perez", 4789689, "Pueyrredon 811");
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (20752675, "Ariel", "Nieto", 4422640, "Tomas Guido 246");
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (30111035, "Josefina", "Gomez", 4402278, "San Lorenzo 1234");
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (10752681, "Marianella", "Navarro", 488454, "Zelaya 876");

-- Ingresando registros en la tabla Perro

INSERT INTO Perro( Nombre, Fecha_nac, Sexo, DNI_dueno ) VALUES	("Puppy", "2012-12-12", "Macho", 20752675);
INSERT INTO Perro( Nombre, Fecha_nac, Sexo, DNI_dueno ) VALUES	("Fido", "2012-12-12", "Macho", 23546987);
INSERT INTO Perro( Nombre, Fecha_nac, Sexo, DNI_dueno ) VALUES	("Frida", "2020-05-29", "Hembra", 28957346);
INSERT INTO Perro( Nombre, Fecha_nac, Sexo, DNI_dueno ) VALUES	("Lennon", "2021-07-01", "Macho", 30111035);
INSERT INTO Perro( Nombre, Fecha_nac, Sexo, DNI_dueno ) VALUES	("Olivia", "2018-01-15", "Hembra", 10752681);

-- Ingresando registrso en la tabla Historial
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2022-07-04", 1, "Servicio", 2350);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2022-02-20", 1, "Servicio", 5960);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2021-12-08", 1, "Servicio", 23000);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2019-09-14", 1, "Consulta", 1000);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2020-10-01", 1, "Consulta", 8900);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2022-08-03", 2, "Servicio", 23500);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2022-01-10", 2, "Servicio", 5960);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2021-10-01", 2, "Servicio", 2300);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2021-03-07", 2, "Servicio", 10200);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2020-08-28", 2, "Servicio", 8900);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2022-04-29", 3, "Servicio", 9530);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2022-01-09", 3, "Servicio", 4120);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2021-08-22", 3, "Servicio", 4580);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2021-04-11", 3, "Servicio", 1500);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2021-01-01", 3, "Consulta", 890);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2020-10-15", 3, "Servicio", 7516);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2020-07-03", 3, "Consulta", 426);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2022-07-16", 4, "Servicio", 7510);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2022-02-23", 4, "Servicio", 76180);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2022-12-13", 4, "Consulta", 800);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2021-09-10", 4, "Servicio", 4100);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2021-09-10", 5, "Consulta", 8520);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2021-09-10", 5, "Servicio", 9510);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2021-09-10", 5, "Servicio", 7530);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2021-09-10", 5, "Servicio", 3570);
INSERT INTO Historial(Fecha, Perro, Descipcion, Monto) VALUES ("2021-09-10", 5, "Consulta", 1590);


-- CONSULTAS--
-- 2)Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.--

INSERT INTO Perro( Nombre_p, Fecha_nac, Sexo, DNI_dueno ) VALUES	("Sasha", "2022-08-12", "Hembra", 23546987);

-- 5)Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro
Select nombre_p "Nombre del Perro", nombre "Nombre del dueño"
from perro inner join dueno on dueno.DNI = perro.DNI_dueno
where nombre = "Pedro";