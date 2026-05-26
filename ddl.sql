CREATE TABLE ciudad (
    ciudad_id SERIAL PRIMARY KEY,
    nombre_ciudad VARCHAR(100),
    codigo_postal VARCHAR(20)
);

CREATE TABLE tipo_usuario (
    tipo_usuario_id SERIAL PRIMARY KEY,
    nombre_tipo VARCHAR(50)
);

CREATE TABLE usuario (
    usuario_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    tipo_usuario_id INT,
    condicion_especial VARCHAR(100),
    ciudad_id INT,
    FOREIGN KEY (tipo_usuario_id) REFERENCES tipo_usuario(tipo_usuario_id),
    FOREIGN KEY (ciudad_id) REFERENCES ciudad(ciudad_id)
);

CREATE TABLE empleado (
    empleado_id SERIAL PRIMARY KEY,
    usuario_id INT,
    cargo VARCHAR(100),
    departamento VARCHAR(100),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
);

CREATE TABLE servicio (
    servicio_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    description TEXT,
    estado VARCHAR(50)
);

CREATE TABLE turno (
    turno_id SERIAL PRIMARY KEY,
    usuario_id INT,
    servicio_id INT,
    empleado_id INT,
    fecha DATE,
    hora_inicio TIME,
    hora_fin TIME,
    estado VARCHAR(50),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (servicio_id) REFERENCES servicio(servicio_id),
    FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id)
);
