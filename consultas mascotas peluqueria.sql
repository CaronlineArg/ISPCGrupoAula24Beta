
USE  mascotas_peluqueria;

SELECT * FROM duenio;
SELECT * FROM perro;
SELECT * FROM historial;

-- 6. Obtener todos los perros que asistieron a la peluqueria en el año 2022
SELECT id_perro, nombre, fecha_nacimiento, sexo, dni_duenio, fecha
FROM perro
INNER JOIN historial
ON perro.id_perro = historial.perro_id
WHERE YEAR(fecha)=2022;