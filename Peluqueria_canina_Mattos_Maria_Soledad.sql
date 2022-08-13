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


Create table Perro(
ID_Perro int not null auto_increment,
Nombre varchar(25)not null,
Fecha_nac varchar(30)not null,
Sexo varchar(25) not null,
DNI_dueno int(10) not null,
primary key (ID_Perro),
foreign key (DNI_dueno) references Dueno(DNI)
);

create table Dueno(
DNI int(10) not null,
Nombre varchar(25)not null,
Apellido varchar(25) not null,
Telefono int(50)not null,
Dirección varchar(50) not null,
constraint pk_dni primary key (DNI)
);

Create table Perro(
ID_Perro int not null auto_increment,
Nombre varchar(25)not null,
Fecha_nac varchar(30)not null,
Sexo varchar(25) not null,
DNI_dueno int(10) not null,
constraint pk_id primary key (ID_Perro),
constraint fk_dueño foreign key (DNI_dueno) references Dueno(DNI)
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
VALUES ('32884986', 'Soledad', 'Mattos', '3755595059', 'Av. cincuentenario 1200')

INSERT INTO perro
VALUES (1,'Lala', '20/11/2014', 'hembra', '32884986')

INSERT INTO Dueno
VALUES ('10956834', 'Liliana', 'Scherer', '3755689756', 'Av. sarmiento 930')

INSERT INTO perro
VALUES (2,'Flora', '20/12/2019', 'hembra', '30569878')

INSERT INTO perro
VALUES (3,'gadafi', '20/11/2005', 'macho', '32884986')

INSERT INTO perro
VALUES (4,'Toby', '20/01/2009', 'macho', '30569878')

INSERT INTO perro
VALUES (8,'You', '12/05/2022', 'macho', '32884986')

INSERT INTO historial
VALUES (4,'05/08/2010', '2', 'Vacunas', '900')

INSERT INTO historial
VALUES (2,'15/05/2009', '3', 'atencion por moquillo', '500')

INSERT INTO historial
VALUES (5,'2011', '4', 'Vacunas', '3500')

--3-Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo.
SELECT * 
FROM perro
INNER JOIN historial
ON perro.ID_Perro = historial.Perro
ORDER BY historial.Fecha

DELETE FROM historial
WHERE ID_Historial = 2

DELETE FROM perro
WHERE ID_Perro = 3








