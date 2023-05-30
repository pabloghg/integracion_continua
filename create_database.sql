CREATE DATABASE IF NOT EXISTS integracion_continua;

USE integracion_continua;

CREATE TABLE IF NOT EXISTS usuario(
    nombre_usuario VARCHAR(50) NOT NULL PRIMARY KEY,
    nombre VARCHAR(200) NULL,
    email VARCHAR(200) NULL,
    clave VARCHAR(200) NULL
);

CREATE TABLE IF NOT EXISTS usuario_roles (
    nombre_usuario VARCHAR(50) NOT NULL,
    rol VARCHAR(50) NOT NULL,
    PRIMARY KEY (nombre_usuario, rol)
);

REPLACE INTO usuario (nombre_usuario,nombre,email,clave) 
    VALUES ('fulanito','Fulanito Pérez','fulanito@example.com','fulanito');

REPLACE INTO usuario_roles (nombre_usuario, rol) VALUES ('fulanito','Rol 1');
REPLACE INTO usuario_roles (nombre_usuario, rol) VALUES ('fulanito','Rol 2');
