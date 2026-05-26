# ParcialBD-servilimar_bd-

Pasos para correr y desplegar la base de datos.

1. Correr el contenedor de PostgreSQL
docker run --name postgres_ulimar -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5432:5432 -d postgres:14

2. Correr el contenedor de pgAdmin
docker run --rm -p 5050:80 --link postgres_ulimar:postgres_ulimar -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar#123" -d dpage/pgadmin4

3. Entrar a pgAdmin en http://localhost:5050
- Email: usuario@servilimar.com
- Contraseña: limar#123

4. Agregar el servidor PostgreSQL
- Host: postgres_ulimar
- Port: 5432
- Usuario: ulimar
- Contraseña: ex4men_db

5. Crear la base de datos servilimar

6. Abrir el Query Tool y ejecutar ddl.sql para crear las tablas

7. Ejecutar dml.sql para insertar los datos

