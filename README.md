# integracion_continua

Requisitos para arrancar el proyecto:

- Windows o Linux.
- Docker instalado.
- Nodejs instalado.
- Servicios de Apache y MySQL locales apagados.

Instrucciones para arrancar el proyecto:

1. Abrir una consola en la raíz de la carpeta
2. Ejecutar: npm install
3. Ejecutar: docker compose up
4. En el navegador, abrir http://localhost:8888/

Debería cargar un JSON con usuario. 

La base de datos se iniciará automáticamente, creando tablas y datos contenidos en el archivo create_database.sql.

Para manipular los datos de la base de datos, se puede usar el administrador que trae por defecto, abriendo en el navegador http://localhost:8080/ . O con otro programa como HeidiSQL, conectándose a localhost por el puerto 3306.

Para apagar los contenedores precione Ctrl+C o también lo puede hacer desde Docker Desktop.

Para cerrar y borrar los contenedores, ejecute: docker compose down