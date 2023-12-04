# intregracion_continua_gr6

# Proyecto Docker con PostgreSQL, PHP, pgAdmin y Listar Registros

Este proyecto utiliza Docker para crear un entorno de desarrollo que incluye un servidor PostgreSQL, un servidor PHP con Apache, pgAdmin y un script PHP para listar registros de la base de datos.

## Instrucciones de Uso

### Requisitos

- Docker instalado en tu sistema

### Pasos para Ejecutar el Proyecto

1. Clona este repositorio a tu sistema:

   ```bash
   git clone  https://github.com/jasaenzh/intregracion_continua_gr6.git

Ve al directorio del proyecto:

cd tu-repo

Inicia los contenedores Docker usando Docker Compose:

docker-compose up -d

Esto iniciará los servicios de PostgreSQL, pgAdmin, y PHP con Apache.

Accede a pgAdmin en tu navegador web:

URL: http://localhost:80
Usuario: admin@admin.com
Contraseña: admin
Puedes utilizar pgAdmin para administrar la base de datos PostgreSQL.

Para listar los registros de la tabla HrBitPed, accede a la siguiente URL en tu navegador:

http://localhost:8080/listar.php
Puedes detener los contenedores cuando hayas terminado:

docker-compose down

Archivo de Conexión (conexion.php)
El archivo conexion.php se utiliza para establecer la conexión a la base de datos PostgreSQL. Asegúrate de que los parámetros de conexión estén configurados correctamente en este archivo.

Listar Registros (listar.php)
El archivo listar.php utiliza la conexión a la base de datos definida en conexion.php para listar todos los registros de la tabla HrBitPed. Asegúrate de que este archivo se encuentre en la carpeta src para que sea accesible a través del navegador.

# Proyecto Docker con PostgreSQL, PHP, pgAdmin y Listar Registros

Este proyecto utiliza Docker para crear un entorno de desarrollo que incluye un servidor PostgreSQL, un servidor PHP con Apache, pgAdmin y un script PHP para listar registros de la base de datos.

## Base de Datos

### Gestor de Base de Datos

La base de datos utilizada en este proyecto está gestionada por PostgreSQL, un sistema de gestión de bases de datos relacional de código abierto.

### Estructura de la Tabla

La base de datos `dbpoli` contiene una tabla llamada `HrBitPed` con la siguiente estructura:

| Campo                  | Tipo     | Descripción                                    |
|------------------------|----------|------------------------------------------------|
| PAIS                   | integer  | Identificador de país                          |
| stamp_fecha            | date     | Fecha del registro                             |
| tasa                   | float    | Tasa de cambio                                 |
| usuario                | varchar  | Nombre de usuario                              |
| Nacional_NDocumentos   | integer  | Número de documentos nacionales                |
| Nacional_Kilos         | float    | Kilos de documentos nacionales                 |
| Nacional_UnidadesE     | integer  | Unidades equivalentes nacionales               |
| Nacional_Valor         | money    | Valor en moneda nacional                       |
| Exterior_NDocumentos   | integer  | Número de documentos extranjeros               |
| Exterior_Kilos         | float    | Kilos de documentos extranjeros                |
| Exterior_UnidadesE     | integer  | Unidades equivalentes extranjeras              |
| Exterior_Valor         | money    | Valor en moneda extranjera                     |
| ProformasN_NDocumentos | integer  | Número de proformas nacionales                 |
| ProformasN_Kilos       | float    | Kilos de proformas nacionales                  |
| ProformasN_UnidadesE   | integer  | Unidades equivalentes de proformas nacionales  |
| ProformasN_Valor       | money    | Valor en moneda nacional de proformas          |
| ProformasE_NDocumentos | integer  | Número de proformas extranjeras                |
| ProformasE_Kilos       | float    | Kilos de proformas extranjeras                 |
| ProformasE_UnidadesE   | integer  | Unidades equivalentes de proformas extranjeras |
| ProformasE_Valor       | money    | Valor en moneda extranjera de proformas        |

## Instrucciones de Uso

Abra el script "bdpoli.sql" en pgAdmin,asegurandse de ejecutarlo dentro de la base de datos "dbpoli" creada especificamente para este proyecto. 
Ejecute presionando F5 y valide que no se haya generado errores en tiempo de ejecución. Este crera una tabla llamada HrBitPed con los campos antes mencionados.
El script no contiene registros de prueb, razón por la cual se recomienda la insercion de data con propositos de pruebas. 
Para ello puede hacer uso de la siguiente instruccion:

   ```sql
   INSERT INTO public."HrBitPed"(
      pais, stamp_fecha, tasa, usuario, nacional_ndocumentos, nacional_kilos, nacional_unidadese, nacional_valor, exterior_ndocumentos, exterior_kilos, exterior_unidadese, exterior_valor, proformasn_ndocumentos, proformasn_kilos, proformasn_unidadese, proformasn_valor, proformase_ndocumentos, proformase_kilos, proformase_unidadese, proformase_valor)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

-- Este proyecto te permite crear un entorno de desarrollo local con PostgreSQL, PHP y pgAdmin para administrar la base de datos y listar registros desde una aplicación web.


