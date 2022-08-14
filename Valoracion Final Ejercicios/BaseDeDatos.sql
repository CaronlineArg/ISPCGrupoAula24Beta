CREATE DATABASE Veterinaria;

CREATE TABLE DUENO
(
Dni INT  PRIMARY KEY,
Nombre VARCHAR (30),
Apellido VARCHAR(30),
Telefono INT,
Direccion VARCHAR (50)
)

CREATE TABLE Historial
(
ID_historial INT  PRIMARY KEY,
Fecha DATETIME,
Perro VARCHAR (50)  PRIMARY KEY,
Descripcion VARCHAR (60),
Monto VARCHAR (10)

CREATE TABLE Perro
(
ID_Perro INT  PRIMARY KEY,
Nombre VARCHAR (30),
Fecha_nac DATETIME,
Sexo VARCHAR(10),
DNI_dueno INT
)

 INSERT INTO Perro 
 VALUES ('Luna', 13/02/2012, 'Hembra', 345463565)

 UPDATE Perro
 SET Fecha_nac = 14/02/2012;

 SELECT * FROM Perro
 WHERE Sexo = 'Macho'
 AND Fecha_nac BETWEEN '01/01/2020' AND '31/12/2022'