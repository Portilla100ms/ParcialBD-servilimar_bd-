INSERT INTO ciudad (nombre_ciudad, codigo_postal) VALUES
('Cali', '760001'),('Bogota', '110111'),('Medellin', '050001'),
('Barranquilla', '080001'),('Cartagena', '130001'),('Bucaramanga', '680001'),
('Pereira', '660001'),('Manizales', '170001'),('Cucuta', '540001'),('Ibague', '730001');

INSERT INTO tipo_usuario (nombre_tipo) VALUES
('Cliente'),('Empleado'),('Proveedor'),('Adulto Mayor'),('Embarazada'),
('Persona con discapacidad'),('Visitante'),('Contratista'),('Estudiante'),('Administrativo');

INSERT INTO usuario (nombre, apellido, tipo_usuario_id, condicion_especial, ciudad_id) VALUES
('Ana', 'Garcia', 1, NULL, 1),('Carlos', 'Perez', 2, NULL, 2),
('Laura', 'Martinez', 1, 'Embarazo', 3),('Jorge', 'Lopez', 3, NULL, 4),
('Maria', 'Rodriguez', 4, 'Adulto mayor', 1),('Pedro', 'Sanchez', 1, 'Silla de ruedas', 5),
('Sofia', 'Torres', 2, NULL, 6),('Diego', 'Ramirez', 1, NULL, 7),
('Valentina', 'Cruz', 1, NULL, 8),('Andres', 'Vargas', 2, NULL, 9);

INSERT INTO empleado (usuario_id, cargo, departamento) VALUES
(2, 'Asesor', 'Atencion al cliente'),(7, 'Coordinador', 'Operaciones'),
(10, 'Supervisor', 'Logistica'),(2, 'Auxiliar', 'Despachos'),
(7, 'Analista', 'Consultoria'),(10, 'Gestor', 'Recepcion'),
(2, 'Tecnico', 'Soporte'),(7, 'Operario', 'Almacen'),
(10, 'Jefe', 'Administracion'),(2, 'Asistente', 'Finanzas');

INSERT INTO servicio (nombre, description, estado) VALUES
('Atencion al cliente', 'Resolucion de dudas y quejas', 'Activo'),
('Despacho', 'Envio de articulos al cliente', 'Activo'),
('Entrega de articulos', 'Entrega fisica de productos', 'Activo'),
('Recepcion de articulos', 'Recepcion de devoluciones', 'Activo'),
('Consultoria', 'Asesoria especializada', 'Activo'),
('Facturacion', 'Tramites de pago y factura', 'Activo'),
('Soporte tecnico', 'Asistencia tecnica', 'Activo'),
('Informacion general', 'Orientacion al usuario', 'Activo'),
('Tramites administrativos', 'Gestion de documentos', 'Inactivo'),
('Certificaciones', 'Emision de certificados', 'Activo');

INSERT INTO turno (usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado) VALUES
(1, 1, 1, '2026-05-20', '08:00', '08:30', 'Atendido'),
(3, 2, 2, '2026-05-20', '08:30', '09:00', 'Atendido'),
(4, 3, 3, '2026-05-21', '09:00', '09:30', 'Pendiente'),
(5, 4, 4, '2026-05-21', '09:30', '10:00', 'Atendido'),
(6, 5, 5, '2026-05-22', '10:00', '10:30', 'Cancelado'),
(8, 6, 6, '2026-05-22', '10:30', '11:00', 'Pendiente'),
(9, 7, 7, '2026-05-23', '11:00', '11:30', 'Atendido'),
(1, 8, 8, '2026-05-23', '11:30', '12:00', 'Pendiente'),
(3, 9, 9, '2026-05-24', '14:00', '14:30', 'Cancelado'),
(4, 10, 10, '2026-05-24', '14:30', '15:00', 'Atendido');
