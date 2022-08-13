
USE mascotas_peluqueria;

INSERT INTO duenio       
VALUES 	("09876543","Pedro","Martinez",	"1127897654","Independencia 90"),
		("11234567","Matias","Martin","3456543212","Catamarca 90"),
		("20987654","Mariana	","Gerez","2644567876	","9 de julio 87"),
		("25678987","Marianela","Garcia","2644567890","Chacabuco 87"),
		("31345678","Candelaria","Perez","3544567898","Sanchez de Loria 456"),
		("32345678","Pedro","Moron","2645321234","Pedro Echague 400"),
		("33234567","Carlos","Moreno","3432123456","Caseros 456"),
		("35098765","Analia","Linares","3514567876","Hernandarias 663"),
		("36554321","Ana","Abregu","3514567876","Jujuy 765"),
		("37546787","Catalina","Gonzalez","2644987654","Avellaneda 32"),
		("38765432","Mario","Galvan","2645432123","Aberastain 60"),
		("39876543","Francisco","Fernandez","3532123456","25 de mayo 23");
       
-- 2. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
INSERT INTO perro (nombre, fecha_nacimiento, sexo, dni_duenio)
VALUES  ("Mancha", "2020-09-10", "hembra", "09876543"),
	    ("Puqui", "2016-09-09", "hembra", "11234567"),
        ("Flopi", "2019-09-11", "hembra", "20987654"),
	    ("Maico", "2021-10-10", "macho", "25678987"),
	    ("Felix", "2022-02-19", "macho", "31345678"),
	    ("Pancho", "2021-11-20", "macho", "32345678"),
        ("India", "2016-07-10", "hembra", "33234567"),
        ("Canela", "2016-09-01", "hembra", "35098765"),
        ("Nini", "2022-01-01", "hembra", "36554321"),
        ("Bobi", "2010-10-20", "macho", "37546787"),
        ("Pitufina", "2022-03-10", "hembra", "38765432"),
        ("Pipe", "2018-09-13", "macho", "39876543");
        
INSERT INTO historial (fecha, monto, perro_id)
VALUES  ( "2021-09-11", 3000, 1),
	    ( "2017-08-08", 2500, 2),
        ( "2020-02-20", 5000, 3),
	    ( "2022-07-18", 3000, 4),
	    ( "2022-06-17", 6000, 5),
	    ( "2021-05-20", 7000, 6),
        ( "2018-10-19", 1000, 7),
        ( "2017-07-22", 1000, 8),
        ( "2022-12-30", 3000, 9),
        ( "2013-10-10", 2900, 10),
		( "2022-08-10", 3000, 11),
        ( "2022-11-10", 3400, 12);