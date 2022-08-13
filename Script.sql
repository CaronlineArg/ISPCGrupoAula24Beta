##Creacion de Base de Datos.
CREATE database Peluqueria_Canina; 

##Verificacion de la Base de datos Creada.
show databases;

##Seleccion de la Base de datos a utilizar.
use Peluqueria_Canina;

##Tabla de los Dueños.
CREATE TABLE IF NOT EXISTS `Peluqueria_Canina`.`Dueño` (
  `DNI` INT NOT NULL,
  `Nombre` VARCHAR(205) NOT NULL,
  `Apellido` VARCHAR(205) NOT NULL,
  `Telefono` VARCHAR(205) NOT NULL,
  `Domicilio` VARCHAR(205) NOT NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE INDEX `Apellido_UNIQUE` (`Apellido` ASC) VISIBLE,
  UNIQUE INDEX `Nombre_UNIQUE` (`Nombre` ASC) VISIBLE);
  
  
##Tabla de los Perros.
CREATE TABLE IF NOT EXISTS `Peluqueria_Canina`.`Perro` (
  `ID_Perro` INT NOT NULL,
  `Nombre` VARCHAR(205) NOT NULL,
  `Fecha_nac` VARCHAR(205) NOT NULL,
  `Sexo` VARCHAR(205) NOT NULL,
  `DNI_Dueño` INT NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  UNIQUE INDEX `Nombre_UNIQUE` (`Nombre` ASC) VISIBLE,
  UNIQUE INDEX (`Fecha_nac` ASC) INVISIBLE,
  CONSTRAINT `DNI_Dueño`
    FOREIGN KEY (`DNI_Dueño`)
    REFERENCES `Peluqueria_Canina`.`Dueño` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

##Tabla de los Historiales. 
CREATE TABLE IF NOT EXISTS `Peluqueria_Canina`.`Historial` (
  `ID_Historial` INT NOT NULL,
  `Fecha` VARCHAR(205) NOT NULL,
  `Perro` INT NOT NULL,
  `Descripcion` VARCHAR(205) NOT NULL,
  `Monto` VARCHAR(205) NOT NULL,
  PRIMARY KEY (`ID_Historial`),
  UNIQUE INDEX `Perro_UNIQUE` (`Perro` ASC) VISIBLE,
  CONSTRAINT `Perro`
    FOREIGN KEY (`Perro`)
    REFERENCES `Peluqueria_Canina`.`Perro` (`ID_Perro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

## Agregado de los registros de animales , dueños e historiales.
INSERT into Dueño (DNI, Nombre, Apellido, Telefono, Domicilio)
values
 (39502201,'Daddy','Yankee','159753456','Luis Guerra 3'),
 (38950002,'Bart','Lizo','147258963','Alto Alberdi 7'),
 (40705344,'Marsh','Monzon','12365487','Juan BJusto 45'),
 (37003121,'Eskabe','Lemos','195758634','Cordova 68');
 
 INSERT into Perro (ID_Perro,Nombre, Fecha_nac, Sexo, DNI_Dueño)
 values
  (1,'Lupo','23/6/20','Macho',39502201),
  (2,'Lola','4/3/19','Hembra',38950002),
  (3,'Queen','20/3/18','Hembra',40705344),
  (4,'Nanito','4/5/20','Macho',37003121);
 
 INSERT into Historial (ID_Historial, Fecha, Perro, Descripcion, Monto)
 values
  (1,'3/7/22',1,'Corte de pelo','800'),
  (2,'8/6/22',2,'Corte de pelo y manicura','1300'),
  (3,'19/7/22',3,'Limpieza profunda de oidos','1000'),
  (4,'15/7/22',4,'Baño y corte de pelo','2000');


## Actualizar fecha de nacimiento de uno de los animales.
UPDATE Perro SET Fecha_nac = '13/4/20' WHERE ID_Perro =1;

#Actualizar Domicilio de uno de los dueños a Libertar 123.
UPDATE Dueño SET Domicilio = 'Libertad 123' WHERE DNI = 40705344;
