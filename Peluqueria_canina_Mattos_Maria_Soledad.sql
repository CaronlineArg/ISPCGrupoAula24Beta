create database Peluqueria_canina;
use Peluqueria_canina;

create table Dueno(
DNI int(10) not null,
Nombre varchar(25)not null,
Apellido varchar(25) not null,
Telefono int(50)not null,
Dirección varchar(50) not null,
primary key (DNI)
);

-- 1. Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

Create table Perro(
ID_Perro int not null auto_increment,
Nombre varchar(25)not null,
Fecha_nac varchar(30)not null,
Sexo varchar(25) not null,
DNI_dueno int(10) not null,
primary key (ID_Perro),
foreign key (DNI_dueno) references Dueno(DNI)
);

create table Historial(
ID_Historial int not null auto_increment,
Fecha varchar(25)not null,
Perro int(25) not null,
Descripción varchar(150) not null,
Monto int(30)not null,
primary key (ID_Historial),
foreign key (Perro) references Perro(ID_Perro)
);


INSERT INTO Dueno
VALUES ('32884986', 'Soledad', 'Mattos', '3755595059', 'Av. cincuentenario 1200'),
	   ('10956834', 'Liliana', 'Scherer', '3755689756', 'Av. sarmiento 930'),
       ('30569878', 'Andres', 'Dinter', '3755692542', 'Av. libertador 1380');
       
-- 2. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.     

INSERT INTO perro
VALUES (1,'Lala', '20/11/2014', 'hembra', '32884986'),
	   (2,'Flora', '20/12/2019', 'hembra', '30569878'),
       (3,'gadafi', '20/11/2005', 'macho', '32884986'),
       (4,'Toby', '20/01/2009', 'macho', '30569878'),
       (5,'Luca', '20/01/2020', 'macho', '30569878'),
       (6,'Tom', '20/08/2021', 'macho', '10956834');
       

INSERT INTO historial
VALUES (1,'2021', '1', 'Vacunas', '2000'),
       (2,'2009', '3', 'atencion por moquillo', '500'),
       (3,'2019', '2', 'Vacunas', '3000'),
       (4,'2020', '2', 'Vacunas', '900'),
       (5,'2022', '4', 'Vacunas', '3500');
       

-- 3. Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo.

SELECT * 
FROM perro
INNER JOIN historial
ON perro.ID_Perro = historial.Perro
ORDER BY historial.Fecha

DELETE FROM historial
WHERE ID_Historial = 2

DELETE FROM perro
WHERE ID_Perro = 3

-- 9. Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123

UPDATE dueno SET Dirección = 'Libertad 123' WHERE DNI = 10956834;





