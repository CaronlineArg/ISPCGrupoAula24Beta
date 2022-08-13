
CREATE DATABASE IF NOT EXISTS mascotas_peluqueria;

USE mascotas_peluqueria;

CREATE TABLE IF NOT EXISTS duenio (
    dni VARCHAR(10) PRIMARY KEY UNIQUE NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(20) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    direccion VARCHAR(30) NOT NULL
);

-- 1. Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
CREATE TABLE IF NOT EXISTS perro (
    id_perro INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    sexo VARCHAR(10) NOT NULL,
    dni_duenio VARCHAR(10) NOT NULL,
    FOREIGN KEY (dni_duenio) REFERENCES duenio(dni)
);


CREATE TABLE IF NOT EXISTS historial (
    id_historial INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE DEFAULT (CURRENT_DATE()),
    descripcion VARCHAR(100) NULL default "",
    monto DECIMAL(16,2) NOT NULL CHECK (monto >= 0),
    perro_id INT NOT NULL,
    FOREIGN KEY (perro_id) REFERENCES perro(id_perro)
);
