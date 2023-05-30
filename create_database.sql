CREATE DATABASE integracion_continua;

USE integracion_continua;

CREATE TABLE usuario(
    nombre_usuario VARCHAR(50) NOT NULL PRIMARY KEY,
    nombre VARCHAR(200) NULL,
    email VARCHAR(200) NULL,
    clave VARCHAR(200) NULL
);

CREATE TABLE usuario_roles (
    nombre_usuario VARCHAR(50) NOT NULL,
    rol VARCHAR(50) NOT NULL,
    PRIMARY KEY (nombre_usuario, rol)
);

INSERT INTO usuario (nombre_usuario,nombre,email,clave) 
    VALUES ('fulanito','Fulanito Pérez','fulanito@example.com','fulanito');

INSERT INTO usuario_roles (nombre_usuario, rol) VALUES ('fulanito','Rol 1');
INSERT INTO usuario_roles (nombre_usuario, rol) VALUES ('fulanito','Rol 2');
