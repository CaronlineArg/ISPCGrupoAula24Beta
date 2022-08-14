--------------EJERCICIOS

---------PASOS POR CADA ESTUDIANTE: 

---------A. Crear Base de Datos y Tablas según Modelo Relacional.

---------B. Realizar puntos 1 y 2 
---1 Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
---2 Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

---------C. Elegir algunos de los puntos 3 al 12 y agregarlo al script  (diferentes entre cada uno de los integrantes)
---10 Vaciar la tabla historial y resetear el contador del campo ID.
---11 Obtener todos los dueños que tengan perros de menos de 5 años de edad que no hayan visitado la peluquería en el año 2022.
---12 Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.




CREATE DATABASE DbVet;
SHOW DATABASES;
use DbVet;

CREATE TABLE Dueno (
  DNI INT NOT NULL,
  Nombre VARCHAR(45) NOT NULL,
  Apellido VARCHAR(45) NOT NULL,
  Telefono VARCHAR(45) NOT NULL,
  Dirección VARCHAR(45) NOT NULL,
  PRIMARY KEY (DNI));



CREATE TABLE Perro (
  ID_Perro INT NOT NULL auto_increment,
  Nombre VARCHAR(45) NOT NULL,
  Fecha_nac DATE NOT NULL,
  Sexo VARCHAR(45) NOT NULL,
  DNI_dueno INT NOT NULL,
  PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno (DNI) 
 );


CREATE TABLE Historial (
  ID_Historial INT NOT NULL auto_increment,
  Fecha DATE NOT NULL,
  Perro INT NOT NULL,
  Descripción VARCHAR(45) NOT NULL,
  Monto FLOAT NOT NULL,
  PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro) 
 );


INSERT INTO Perro ( Nombre, Fecha_nac, Sexo, DNI_dueno)
VALUES ('Rocky', '2020-02-02', 'Masculino', 35332783);

INSERT INTO Dueno( Nombre, Apellido, Telefono, Direcciòn, DNI)
VALUES ('Carolina', 'Medina', 223666666, 'Siempre viva 666', 35332783);

INSERT INTO Historial (Fecha, Perro, Descripcion, Monto) 
VALUES ('2020-02-02','caniche','blanco', 2500);


SELECT d.Nombre, p.Fecha_nac, h.Fecha
FROM Dueno AS d, Perro AS p, Historial AS h
WHERE p.Fecha_nac>'2017-08-01' AND NOT h.Fecha=2022;


SELECT * FROM Perro WHERE  Fecha_nac BETWEEN '2020-01-01' AND '2022-01-01';


TRUNCATE TABLE Historial;  

