USE LuxuryRest;
GO
-- ---------------------------- User -------------------------------------------------
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 1', 'user1@example.com', 'password1', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 2', 'user2@example.com', 'password2', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 3', 'user3@example.com', 'password3', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 4', 'user4@example.com', 'password4', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 5', 'user5@example.com', 'password5', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 6', 'user6@example.com', 'password6', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 7', 'user7@example.com', 'password7', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 8', 'user8@example.com', 'password8', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 9', 'user9@example.com', 'password9', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 10', 'user10@example.com', 'password10', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 11', 'user11@example.com', 'password11', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 12', 'user12@example.com', 'password12', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 13', 'user13@example.com', 'password13', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 14', 'user14@example.com', 'password14', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 15', 'user15@example.com', 'password15', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 16', 'user16@example.com', 'password16', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 17', 'user17@example.com', 'password17', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 18', 'user18@example.com', 'password18', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 19', 'user19@example.com', 'password19', 1, GETDATE());
INSERT INTO [user] (name, email, [password], active, confirmed_at)
VALUES ('User 20', 'user20@example.com', 'password20', 1, GETDATE());
-- ------------------------------------ Roles -------------------------------------------------------------------------------
SET IDENTITY_INSERT role ON;
INSERT INTO role ( name, description) VALUES ( 'Administrador', 'Todo permiso');
INSERT INTO role ( name, description) VALUES ( 'Usuario', 'Permisos restringidos');
INSERT INTO role ( name, description) VALUES ( 'Empleado', 'Permisos restringidos 1');
SET IDENTITY_INSERT role OFF;
GO
-- ---------------------------- User_roles -------------------------------------------------
INSERT INTO user_roles (userId, roleId)
VALUES (1, 1);
INSERT INTO user_roles (userId, roleId)
VALUES (2, 3);
INSERT INTO user_roles (userId, roleId)
VALUES (3, 3);
INSERT INTO user_roles (userId, roleId)
VALUES (4, 3);
INSERT INTO user_roles (userId, roleId)
VALUES (5, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (6, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (7, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (8, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (9, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (10, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (11, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (12, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (13, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (14, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (15, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (16, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (17, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (18, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (19, 2);
INSERT INTO user_roles (userId, roleId)
VALUES (20, 2);
-- ---------------------------- Productos -------------------------------------------------
INSERT INTO dbo.[Productos] (nombre, descripcion, imagen, precio_venta, cantidad_disponible, valoracionT, valoracionC, estatus)
VALUES ('Almohada Suave', 'Almohada de plumas suave y cómoda', 'iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFW…', 29.99, 100, 4, 10, 1);
INSERT INTO dbo.Productos (nombre, descripcion, imagen, precio_venta, cantidad_disponible, valoracionT, valoracionC, estatus)
VALUES ('Almohada Firme', 'Almohada de espuma firme para un buen soporte', 'iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFW…', 34.99, 50, 4.5, 8, 1);
INSERT INTO dbo.Productos (nombre, descripcion, imagen, precio_venta, cantidad_disponible, valoracionT, valoracionC, estatus)
VALUES ('Almohada de Viaje', 'Almohada ergonómica para viajes largos', 'iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFW…', 19.99, 30, 4.2, 6, 1);
INSERT INTO dbo.Productos (nombre, descripcion, imagen, precio_venta, cantidad_disponible, valoracionT, valoracionC, estatus)
VALUES ('Almohada Ortopédica', 'Almohada para aliviar dolores cervicales', 'iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFW…', 39.99, 20, 4.7, 12, 1);
INSERT INTO dbo.Productos (nombre, descripcion, imagen, precio_venta, cantidad_disponible, valoracionT, valoracionC, estatus)
VALUES ('Almohada de Gel', 'Almohada con gel refrescante para noches frescas', 'iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFW…', 44.99, 25, 4.4, 9, 1);
INSERT INTO dbo.Productos (nombre, descripcion, imagen, precio_venta, cantidad_disponible, valoracionT, valoracionC, estatus)
VALUES ('Almohada Hipoalergénica', 'Almohada adecuada para personas con alergias', 'iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFW…', 26.99, 60, 4.1, 7, 1);
INSERT INTO dbo.Productos (nombre, descripcion, imagen, precio_venta, cantidad_disponible, valoracionT, valoracionC, estatus)
VALUES ('Almohada de Plumas y Espuma', 'Almohada con combinación de plumas y espuma', 'iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFW…', 37.99, 40, 4.3, 11, 1);
INSERT INTO dbo.Productos (nombre, descripcion, imagen, precio_venta, cantidad_disponible, valoracionT, valoracionC, estatus)
VALUES ('Almohada con Memoria', 'Almohada con espuma viscoelástica para mayor comodidad', 'iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFW…', 49.99, 15, 4.8, 14, 1);
INSERT INTO dbo.Productos (nombre, descripcion, imagen, precio_venta, cantidad_disponible, valoracionT, valoracionC, estatus)
VALUES ('Almohada Antironquidos', 'Almohada diseñada para reducir los ronquidos', 'iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFW…', 32.99, 35, 4.6, 10, 1);
INSERT INTO dbo.Productos (nombre, descripcion, imagen, precio_venta, cantidad_disponible, valoracionT, valoracionC, estatus)
VALUES ('Almohada de Látex', 'Almohada hecha de látex natural', 'iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFW…', 42.99, 28, 4.0, 6, 1);
-- ---------------------------- Proveedores -------------------------------------------------
INSERT INTO Proveedores (nombre_empresa, nombre_contacto, correo_electronico, telefono, direccion, Activo)
VALUES ('Proveedor A', 'Juan Pérez', 'proveedora@example.com', '555-123-4567', 'Calle 1, Ciudad',1);
INSERT INTO Proveedores (nombre_empresa, nombre_contacto, correo_electronico, telefono, direccion,Activo)
VALUES ('Proveedor B', 'María Gómez', 'proveedorb@example.com', '555-987-6543', 'Avenida 2, Ciudad',1);
INSERT INTO Proveedores (nombre_empresa, nombre_contacto, correo_electronico, telefono, direccion, Activo)
VALUES ('Proveedor C', 'Carlos López', 'proveedorc@example.com', '555-456-7890', 'Calle 3, Ciudad',1);
INSERT INTO Proveedores (nombre_empresa, nombre_contacto, correo_electronico, telefono, direccion, Activo)
VALUES ('Proveedor D', 'Ana Rodríguez', 'proveedord@example.com', '555-654-3210', 'Avenida 4, Ciudad',1);
INSERT INTO Proveedores (nombre_empresa, nombre_contacto, correo_electronico, telefono, direccion,Activo)
VALUES ('Proveedor E', 'Pedro Martínez', 'proveedore@example.com', '555-789-0123', 'Calle 5, Ciudad',1);
INSERT INTO Proveedores (nombre_empresa, nombre_contacto, correo_electronico, telefono, direccion, Activo)
VALUES ('Proveedor F', 'Laura Sánchez', 'proveedorf@example.com', '555-012-3456', 'Avenida 6, Ciudad',1);
INSERT INTO Proveedores (nombre_empresa, nombre_contacto, correo_electronico, telefono, direccion, Activo)
VALUES ('Proveedor G', 'Javier Ramírez', 'proveedorg@example.com', '555-234-5678', 'Calle 7, Ciudad',1);
INSERT INTO Proveedores (nombre_empresa, nombre_contacto, correo_electronico, telefono, direccion,Activo)
VALUES ('Proveedor H', 'Sofía Torres', 'proveedorh@example.com', '555-567-8901', 'Avenida 8, Ciudad',1);
INSERT INTO Proveedores (nombre_empresa, nombre_contacto, correo_electronico, telefono, direccion, Activo)
VALUES ('Proveedor I', 'Gabriel Castro', 'proveedori@example.com', '555-890-1234', 'Calle 9, Ciudad',1);
INSERT INTO Proveedores (nombre_empresa, nombre_contacto, correo_electronico, telefono, direccion,Activo)
VALUES ('Proveedor J', 'Isabel Ríos', 'proveedorj@example.com', '555-123-4567', 'Avenida 10, Ciudad',1);
-- ---------------------------- Materias_Primas -------------------------------------------------
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra, Activo)
VALUES (1, 'Plumas', 'Kilogramo', 10.00, 15.99,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (1, 'Tela', 'Metro', 5.00, 12.50,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (1, 'Relleno de Espuma', 'Metro cúbico', 2.00, 30.00,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra, Activo)
VALUES (2, 'Gel de Enfriamiento', 'Litro', 1.00, 25.00,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (2, 'Espuma de Memoria', 'Metro cúbico', 1.50, 40.00,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (3, 'Látex Natural', 'Metro cúbico', 2.50, 35.00,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (3, 'Funda de Algodón', 'Metro', 2.00, 10.00,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (4, 'Fibras de Poliéster', 'Kilogramo', 5.00, 8.99,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (4, 'Lino', 'Metro', 2.50, 15.50,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (5, 'Plumas', 'Kilogramo', 8.00, 12.50,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (5, 'Relleno de Espuma', 'Metro cúbico', 1.00, 28.00,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (6, 'Espuma de Memoria', 'Metro cúbico', 2.00, 37.50,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (6, 'Tela', 'Metro', 3.00, 9.99,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (7, 'Gel de Enfriamiento', 'Litro', 0.50, 22.50,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (7, 'Relleno de Espuma', 'Metro cúbico', 1.50, 32.00,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (8, 'Látex Natural', 'Metro cúbico', 1.00, 30.00,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (8, 'Funda de Algodón', 'Metro', 2.50, 12.50,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (9, 'Fibras de Poliéster', 'Kilogramo', 3.00, 6.99,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (9, 'Lino', 'Metro', 2.00, 14.50,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (10, 'Plumas', 'Kilogramo', 5.00, 10.50,1);
INSERT INTO Materias_Primas (id_proveedor, nombre, unidad_medida, cantidad_minima_requerida, precio_compra,Activo)
VALUES (10, 'Relleno de Espuma', 'Metro cúbico', 1.00, 25.00,1);
-- ---------------------------- Receta -------------------------------------------------
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (1, 1, 0.5);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (2, 1, 1.2);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (3, 1, 0.8);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (4, 2, 0.6);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (5, 2, 1.0);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (6, 3, 0.3);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (7, 3, 0.7);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (8, 4, 0.9);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (9, 4, 1.5);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (10, 5, 0.4);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (11, 5, 1.3);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (12, 6, 0.6);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (13, 6, 0.9);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (14, 7, 0.2);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (15, 7, 0.8);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (16, 8, 0.5);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (17, 8, 1.2);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (18, 9, 0.8);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (19, 9, 0.6);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (20, 10, 1.0);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (21, 10, 0.3);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (22, 1, 0.7);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (23, 1, 0.9);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (24, 2, 1.5);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (25, 2, 0.4);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (26, 3, 1.3);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (27, 3, 0.6);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (28, 4, 0.9);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (29, 4, 0.2);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (30, 5, 0.8);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (31, 5, 0.5);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (32, 6, 1.2);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (33, 6, 0.8);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (34, 7, 0.6);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (35, 7, 1.0);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (36, 8, 0.3);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (37, 8, 0.7);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (38, 9, 0.9);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (39, 9, 1.5);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (40, 10, 0.4);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (41, 10, 1.3);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (42, 2, 0.6);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (43, 3, 0.9);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (44, 4, 0.2);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (45, 5, 0.8);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (46, 6, 0.5);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (47, 7, 1.2);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (48, 8, 0.8);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (49, 9, 0.6);
INSERT INTO Receta (id_materia_prima, id_producto, cantidad_requerida)
VALUES (50, 10, 1.0);
-- ---------------------------- Ventas -------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta) VALUES (1, 50.00, '2023-08-01T10:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta) VALUES (3, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta) VALUES (2, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta) VALUES (4, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta) VALUES (6, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta) VALUES (5, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta) VALUES (8, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta) VALUES (7, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta) VALUES (10, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta) VALUES (9, 55.80, '2023-08-01T21:30:00');
-- Aquí continúan los demás comandos INSERT con el formato de fecha y hora adaptado.

---------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (11, 50.00, '2023-08-01T10:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (13, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (12, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (14, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (16, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (15, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (18, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (17, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (20, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (19, 55.80, '2023-08-01T21:30:00');

------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (1, 50.00, '2023-08-01T10:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (3, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (2, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (4, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (6, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (5, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (8, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (7, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (10, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (9, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (11, 50.00, '2023-08-01T10:15:00');

-------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (13, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (12, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (14, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (16, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (15, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (18, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (17, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (20, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (19, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (1, 50.00, '2023-08-01T10:15:00');

-------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (3, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (2, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (4, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (6, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (5, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (8, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (7, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (10, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (9, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (11, 50.00, '2023-08-01T10:15:00');

---------------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (13, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (12, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (14, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (16, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (15, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (18, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (17, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (20, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (19, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (1, 50.00, '2023-08-01T10:15:00');

---------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (3, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (2, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (4, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (6, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (5, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (8, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (7, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (10, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (9, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (11, 50.00, '2023-08-01T10:15:00');

-----------------------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (13, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (12, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (14, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (16, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (15, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (18, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (17, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (20, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (19, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (1, 50.00, '2023-08-01T10:15:00');

----------------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (3, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (2, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (4, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (6, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (5, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (8, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (7, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (10, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (9, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (11, 50.00, '2023-08-01T10:15:00');

-----------------------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (13, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (12, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (14, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (16, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (15, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (18, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (17, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (20, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (19, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (1, 50.00, '2023-08-01T10:15:00');

--------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (3, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (2, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (4, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (6, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (5, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (8, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (7, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (10, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (9, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (11, 50.00, '2023-08-01T10:15:00');

------------------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (13, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (12, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (14, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (16, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (15, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (18, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (17, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (20, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (19, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (1, 50.00, '2023-08-01T10:15:00');

-----------------------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (3, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (2, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (4, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (6, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (5, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (8, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (7, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (10, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (9, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (11, 50.00, '2023-08-01T10:15:00');


-------------------------------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (13, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (12, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (14, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (16, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (15, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (18, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (17, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (20, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (19, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (1, 50.00, '2023-08-01T10:15:00');

-----------------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (3, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (2, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (4, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (6, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (5, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (8, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (7, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (10, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (9, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (11, 50.00, '2023-08-01T10:15:00');

--------------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (13, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (12, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (14, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (16, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (15, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (18, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (17, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (20, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (19, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (1, 50.00, '2023-08-01T10:15:00');

----------------------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (3, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (2, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (4, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (6, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (5, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (8, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (7, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (10, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (9, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (11, 50.00, '2023-08-01T10:15:00');

--------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (13, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (12, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (14, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (16, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (15, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (18, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (17, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (20, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (19, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (1, 50.00, '2023-08-01T10:15:00');

------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (3, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (2, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (4, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (6, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (5, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (8, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (7, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (10, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (9, 55.80, '2023-08-01T21:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (11, 50.00, '2023-08-01T10:15:00');

---------------------------------------------------------------------------------------
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (13, 75.50, '2023-07-31T11:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (12, 120.25, '2023-07-30T12:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (14, 45.80, '2023-07-30T14:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (16, 90.15, '2023-08-01T15:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (15, 70.50, '2023-07-31T16:30:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (18, 65.25, '2023-08-01T17:45:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (17, 100.00, '2023-07-30T19:00:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (20, 85.40, '2023-07-31T20:15:00');
INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
VALUES (19, 55.80, '2023-08-01T21:30:00');

-- ---------------------------- Pedidos -------------------------------------------------
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (1, 1, '2023-08-01 10:00:00', 'Calle 1, Ciudad', 5,  '2023-08-01 11:00:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (3, 1, '2023-08-01 12:00:00', 'Avenida 2, Ciudad', 6,  '2023-08-31T12:00:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (2, 2, '2023-08-01 13:00:00', 'Calle 3, Ciudad', 7, '2023-07-30T14:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (4, 2, '2023-08-01 15:30:00', 'Avenida 4, Ciudad', 8, '2023-08-01T16:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (6, 3, '2023-08-01 17:00:00', 'Calle 5, Ciudad', 9, '2023-07-31T18:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (5, 3, '2023-08-01 19:30:00', 'Avenida 6, Ciudad', 10, '2023-07-30T20:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (8, 1, '2023-08-01 21:00:00', 'Calle 7, Ciudad', 11,  '2023-08-01T22:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (7, 2, '2023-08-01 23:30:00', 'Avenida 8, Ciudad', 12,  '2023-07-31T00:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (10, 2, '2023-08-02 01:00:00', 'Calle 9, Ciudad', 13,  '2023-07-30T02:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (9, 3, '2023-08-02 03:30:00', 'Avenida 10, Ciudad', 14,  '2023-08-02T04:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (11, 1, '2023-08-01 10:00:00', 'Calle 1, Ciudad', 5,  '2023-08-01T11:00:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (13, 1, '2023-08-01 11:30:00', 'Avenida 2, Ciudad', 6,  '2023-07-31T12:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (12, 2, '2023-08-01 13:00:00', 'Calle 3, Ciudad', 7,  '2023-07-30T14:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (14, 2, '2023-08-01 15:30:00', 'Avenida 4, Ciudad', 8,  '2023-08-01T16:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (16, 3, '2023-08-01 17:00:00', 'Calle 5, Ciudad', 9,  '2023-07-31T18:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (15, 3, '2023-08-01 19:30:00', 'Avenida 6, Ciudad', 10, '2023-07-30T20:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (18, 1, '2023-08-01 21:00:00', 'Calle 7, Ciudad', 11, '2023-08-01T22:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (17, 2, '2023-08-01 23:30:00', 'Avenida 8, Ciudad', 12,  '2023-07-31T00:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (20, 2, '2023-08-02 01:00:00', 'Calle 9, Ciudad', 13,  '2023-07-30T02:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (19, 3, '2023-08-02 03:30:00', 'Avenida 10, Ciudad', 14,  '2023-08-02T04:45:00');
-------------------------------------------------------------------------
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (9, 3, '2023-08-02 03:30:00', 'Avenida 10, Ciudad', 14,  '2023-08-02T04:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (11, 1, '2023-08-01 10:00:00', 'Calle 1, Ciudad', 5,  '2023-08-01T11:00:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (13, 1, '2023-08-01 11:30:00', 'Avenida 2, Ciudad', 6,  '2023-07-31T12:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (12, 2, '2023-08-01 13:00:00', 'Calle 3, Ciudad', 7,  '2023-07-30T14:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (14, 2, '2023-08-01 15:30:00', 'Avenida 4, Ciudad', 8,  '2023-08-01T16:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (16, 3, '2023-08-01 17:00:00', 'Calle 5, Ciudad', 9,  '2023-07-31T18:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (15, 3, '2023-08-01 19:30:00', 'Avenida 6, Ciudad', 10,  '2023-07-30T20:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (18, 1, '2023-08-01 21:00:00', 'Calle 7, Ciudad', 11,  '2023-08-01T22:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (17, 2, '2023-08-01 23:30:00', 'Avenida 8, Ciudad', 12,  '2023-07-31T00:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (20, 2, '2023-08-02 01:00:00', 'Calle 9, Ciudad', 13,'2023-07-30T02:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (19, 3, '2023-08-02 03:30:00', 'Avenida 10, Ciudad', 14,  '2023-08-02T04:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (1, 1, '2023-08-01 10:00:00', 'Calle 1, Ciudad', 5,  '2023-08-01T11:00:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (3, 1, '2023-08-01 11:30:00', 'Avenida 2, Ciudad', 6,  '2023-07-31T12:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (2, 2, '2023-08-01 13:00:00', 'Calle 3, Ciudad', 7,  '2023-07-30T14:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (4, 2, '2023-08-01 15:30:00', 'Avenida 4, Ciudad', 8,  '2023-08-01T16:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (6, 3, '2023-08-01 17:00:00', 'Calle 5, Ciudad', 9,  '2023-07-31T18:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (5, 3, '2023-08-01 19:30:00', 'Avenida 6, Ciudad', 10,  '2023-07-30T20:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (8, 1, '2023-08-01 21:00:00', 'Calle 7, Ciudad', 11, '2023-08-01T22:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (7, 2, '2023-08-01 23:30:00', 'Avenida 8, Ciudad', 12,  '2023-07-31T00:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (10, 2, '2023-08-02 01:00:00', 'Calle 9, Ciudad', 13,  '2023-07-30T02:15:00');
---------------------------------------------------------------------------------------------------------------------------
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (12, 2, '2023-08-01T13:00:00', 'Calle 3, Ciudad', 7, '2023-07-30T14:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (14, 2, '2023-08-01T15:30:00', 'Avenida 4, Ciudad', 8,  '2023-08-01T16:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (16, 3, '2023-08-01T17:00:00', 'Calle 5, Ciudad', 9, '2023-07-31T18:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (15, 3, '2023-08-01T19:30:00', 'Avenida 6, Ciudad', 10,  '2023-07-30T20:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (18, 1, '2023-08-01T21:00:00', 'Calle 7, Ciudad', 11, '2023-08-01T22:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (17, 2, '2023-08-01T23:30:00', 'Avenida 8, Ciudad', 12,  '2023-07-31T00:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (20, 2, '2023-08-02T01:00:00', 'Calle 9, Ciudad', 13, '2023-07-30T02:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (19, 3, '2023-08-02T03:30:00', 'Avenida 10, Ciudad', 14, '2023-08-02T04:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (1, 1, '2023-08-01T10:00:00', 'Calle 1, Ciudad', 5,  '2023-08-01T11:00:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (3, 1, '2023-08-01T11:30:00', 'Avenida 2, Ciudad', 6,  '2023-07-31T12:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (2, 2, '2023-08-01T13:00:00', 'Calle 3, Ciudad', 7,  '2023-07-30T14:15:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (4, 2, '2023-08-01T15:30:00', 'Avenida 4, Ciudad', 8,  '2023-08-01T16:45:00');

INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (6, 3, '2023-08-01T17:00:00', 'Calle 5, Ciudad', 9,  '2023-07-31T18:15:00');

---------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (5, 3, '2023-08-01T19:30:00', 'Avenida 6, Ciudad', 10,  '2023-07-30T20:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (8, 1, '2023-08-01T21:00:00', 'Calle 7, Ciudad', 11,  '2023-08-01T22:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (7, 2, '2023-08-01T23:30:00', 'Avenida 8, Ciudad', 12,  '2023-07-31T00:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (10, 2, '2023-08-02T01:00:00', 'Calle 9, Ciudad', 13,  '2023-07-30T02:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (9, 3, '2023-08-02T03:30:00', 'Avenida 10, Ciudad', 14,  '2023-08-02T04:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (11, 1, '2023-08-01T10:00:00', 'Calle 1, Ciudad', 5,  '2023-08-01T11:00:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (13, 1, '2023-08-01T11:30:00', 'Avenida 2, Ciudad', 6,  '2023-07-31T12:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (12, 2, '2023-08-01T13:00:00', 'Calle 3, Ciudad', 7,  '2023-07-30T14:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (14, 2, '2023-08-01T15:30:00', 'Avenida 4, Ciudad', 8,  '2023-08-01T16:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (16, 3, '2023-08-01T17:00:00', 'Calle 5, Ciudad', 9,  '2023-07-31T18:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (15, 3, '2023-08-01T19:30:00', 'Avenida 6, Ciudad', 10, '2023-07-30T20:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (18, 1, '2023-08-01T21:00:00', 'Calle 7, Ciudad', 11,  '2023-08-01T22:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (17, 2, '2023-08-01T23:30:00', 'Avenida 8, Ciudad', 12,  '2023-07-31T00:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (20, 2, '2023-08-02T01:00:00', 'Calle 9, Ciudad', 13,  '2023-07-30T02:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (19, 3, '2023-08-02T03:30:00', 'Avenida 10, Ciudad', 14,  '2023-08-02T04:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (1, 1, '2023-08-01T10:00:00', 'Calle 1, Ciudad', 5,  '2023-08-01T11:00:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (3, 1, '2023-08-01T11:30:00', 'Avenida 2, Ciudad', 6,  '2023-07-31T12:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (2, 2, '2023-08-01T13:00:00', 'Calle 3, Ciudad', 7,  '2023-07-30T14:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (4, 2, '2023-08-01T15:30:00', 'Avenida 4, Ciudad', 8, '2023-08-01T16:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (6, 3, '2023-08-01T17:00:00', 'Calle 5, Ciudad', 9,  '2023-07-31T18:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (5, 3, '2023-08-01T19:30:00', 'Avenida 6, Ciudad', 10,  '2023-07-30T20:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (8, 1, '2023-08-01T21:00:00', 'Calle 7, Ciudad', 11,  '2023-08-01T22:15:00');

-----------------------------------------------------------------------------------------------------------------------
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (7, 2, '2023-08-01T23:30:00', 'Avenida 8, Ciudad', 12,  '2023-07-31T00:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (10, 2, '2023-08-02T01:00:00', 'Calle 9, Ciudad', 13, '2023-07-30T02:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (9, 3, '2023-08-02T03:30:00', 'Avenida 10, Ciudad', 14, '2023-08-02T04:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (11, 1, '2023-08-01T10:00:00', 'Calle 1, Ciudad', 5,  '2023-08-01T11:00:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (13, 1, '2023-08-01T11:30:00', 'Avenida 2, Ciudad', 6,  '2023-07-31T12:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (12, 2, '2023-08-01T13:00:00', 'Calle 3, Ciudad', 7, '2023-07-30T14:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (14, 2, '2023-08-01T15:30:00', 'Avenida 4, Ciudad', 8, '2023-08-01T16:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (16, 3, '2023-08-01T17:00:00', 'Calle 5, Ciudad', 9,  '2023-07-31T18:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (15, 3, '2023-08-01T19:30:00', 'Avenida 6, Ciudad', 10,  '2023-07-30T20:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (18, 1, '2023-08-01T21:00:00', 'Calle 7, Ciudad', 11, '2023-08-01T22:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (17, 2, '2023-08-01T23:30:00', 'Avenida 8, Ciudad', 12,  '2023-07-31T00:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (20, 2, '2023-08-02T01:00:00', 'Calle 9, Ciudad', 13, '2023-07-30T02:15:00');

------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (19, 3, '2023-08-02T03:30:00', 'Avenida 10, Ciudad', 14,  '2023-08-02T04:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (1, 1, '2023-08-01T10:00:00', 'Calle 1, Ciudad', 5,  '2023-08-01T11:00:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (3, 1, '2023-08-01T11:30:00', 'Avenida 2, Ciudad', 6, '2023-07-31T12:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (2, 2, '2023-08-01T13:00:00', 'Calle 3, Ciudad', 7,  '2023-07-30T14:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (4, 2, '2023-08-01T15:30:00', 'Avenida 4, Ciudad', 8, '2023-08-01T16:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (6, 3, '2023-08-01T17:00:00', 'Calle 5, Ciudad', 9,  '2023-07-31T18:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (5, 3, '2023-08-01T19:30:00', 'Avenida 6, Ciudad', 10, '2023-07-30T20:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (8, 1, '2023-08-01T21:00:00', 'Calle 7, Ciudad', 11,  '2023-08-01T22:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (7, 2, '2023-08-01T23:30:00', 'Avenida 8, Ciudad', 12, '2023-07-31T00:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (10, 2, '2023-08-02T01:00:00', 'Calle 9, Ciudad', 13,  '2023-07-30T02:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (9, 3, '2023-08-02T03:30:00', 'Avenida 10, Ciudad', 14, '2023-08-02T04:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (11, 1, '2023-08-01T10:00:00', 'Calle 1, Ciudad', 5,  '2023-08-01T11:00:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (13, 1, '2023-08-01T11:30:00', 'Avenida 2, Ciudad', 6,  '2023-07-31T12:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (12, 2, '2023-08-01T13:00:00', 'Calle 3, Ciudad', 7, '2023-07-30T14:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (14, 2, '2023-08-01T15:30:00', 'Avenida 4, Ciudad', 8,  '2023-08-01T16:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (16, 3, '2023-08-01T17:00:00', 'Calle 5, Ciudad', 9, '2023-07-31T18:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (15, 3, '2023-08-01T19:30:00', 'Avenida 6, Ciudad', 10,  '2023-07-30T20:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (18, 1, '2023-08-01T21:00:00', 'Calle 7, Ciudad', 11,  '2023-08-01T22:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (17, 2, '2023-08-01T23:30:00', 'Avenida 8, Ciudad', 12, '2023-07-31T00:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (20, 2, '2023-08-02T01:00:00', 'Calle 9, Ciudad', 13,  '2023-07-30T02:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (19, 3, '2023-08-02T03:30:00', 'Avenida 10, Ciudad', 14, '2023-08-02T04:45:00');

------------------------------------------------------------------------------------------------------------------------
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (1, 1, '2023-08-01T10:00:00', 'Calle 1, Ciudad', 5,  '2023-08-01T11:00:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (3, 1, '2023-08-01T11:30:00', 'Avenida 2, Ciudad', 6,  '2023-07-31T12:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (2, 2, '2023-08-01T13:00:00', 'Calle 3, Ciudad', 7,  '2023-07-30T14:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (4, 2, '2023-08-01T15:30:00', 'Avenida 4, Ciudad', 8,  '2023-08-01T16:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (6, 3, '2023-08-01T17:00:00', 'Calle 5, Ciudad', 9,  '2023-07-31T18:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (5, 3, '2023-08-01T19:30:00', 'Avenida 6, Ciudad', 10,  '2023-07-30T20:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (8, 1, '2023-08-01T21:00:00', 'Calle 7, Ciudad', 11, '2023-08-01T22:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (7, 2, '2023-08-01T23:30:00', 'Avenida 8, Ciudad', 12, '2023-07-31T00:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (10, 2, '2023-08-02T01:00:00', 'Calle 9, Ciudad', 13,  '2023-07-30T02:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (9, 3, '2023-08-02T03:30:00', 'Avenida 10, Ciudad', 14,  '2023-08-02T04:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (11, 1, '2023-08-01T10:00:00', 'Calle 1, Ciudad', 5,  '2023-08-01T11:00:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (13, 1, '2023-08-01T11:30:00', 'Avenida 2, Ciudad', 6,  '2023-07-31T12:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (12, 2, '2023-08-01T13:00:00', 'Calle 3, Ciudad', 7,  '2023-07-30T14:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (14, 2, '2023-08-01T15:30:00', 'Avenida 4, Ciudad', 8,  '2023-08-01T16:45:00');

---------------------------------------------------------------------------------------------------------------------------
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (16, 3, '2023-08-01T17:00:00', 'Calle 5, Ciudad', 9,  '2023-07-31T18:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (15, 3, '2023-08-01T19:30:00', 'Avenida 6, Ciudad', 10,  '2023-07-30T20:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (18, 1, '2023-08-01T21:00:00', 'Calle 7, Ciudad', 11,  '2023-08-01T22:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (17, 2, '2023-08-01T23:30:00', 'Avenida 8, Ciudad', 12,  '2023-07-31T00:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (20, 2, '2023-08-02T01:00:00', 'Calle 9, Ciudad', 13,  '2023-07-30T02:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (19, 3, '2023-08-02T03:30:00', 'Avenida 10, Ciudad', 14, '2023-08-02T04:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (1, 1, '2023-08-01T10:00:00', 'Calle 1, Ciudad', 5,  '2023-08-01T11:00:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (3, 1, '2023-08-01T11:30:00', 'Avenida 2, Ciudad', 6, '2023-07-31T12:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (2, 2, '2023-08-01T13:00:00', 'Calle 3, Ciudad', 7,  '2023-07-30T14:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (4, 2, '2023-08-01T15:30:00', 'Avenida 4, Ciudad', 8, '2023-08-01T16:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (6, 3, '2023-08-01T17:00:00', 'Calle 5, Ciudad', 9,  '2023-07-31T18:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (5, 3, '2023-08-01T19:30:00', 'Avenida 6, Ciudad', 10,  '2023-07-30T20:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (8, 1, '2023-08-01T21:00:00', 'Calle 7, Ciudad', 11,  '2023-08-01T22:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (7, 2, '2023-08-01T23:30:00', 'Avenida 8, Ciudad', 12, '2023-07-31T00:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (10, 2, '2023-08-02T01:00:00', 'Calle 9, Ciudad', 13,  '2023-07-30T02:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (9, 3, '2023-08-02T03:30:00', 'Avenida 10, Ciudad', 14,  '2023-08-02T04:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (11, 1, '2023-08-01T10:00:00', 'Calle 1, Ciudad', 5,  '2023-08-01T11:00:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (13, 1, '2023-08-01T11:30:00', 'Avenida 2, Ciudad', 6,  '2023-07-31T12:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (12, 2, '2023-08-01T13:00:00', 'Calle 3, Ciudad', 7,  '2023-07-30T14:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (14, 2, '2023-08-01T15:30:00', 'Avenida 4, Ciudad', 8,  '2023-08-01T16:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (16, 3, '2023-08-01T17:00:00', 'Calle 5, Ciudad', 9,  '2023-07-31T18:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (15, 3, '2023-08-01T19:30:00', 'Avenida 6, Ciudad', 10,  '2023-07-30T20:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (18, 1, '2023-08-01T21:00:00', 'Calle 7, Ciudad', 11,  '2023-08-01T22:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (17, 2, '2023-08-01T23:30:00', 'Avenida 8, Ciudad', 12,  '2023-07-31T00:45:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (20, 2, '2023-08-02T01:00:00', 'Calle 9, Ciudad', 13,  '2023-07-30T02:15:00');
INSERT INTO Pedidos (id_usuario, estado_pedido, fecha_hora_pedido, domicilio, empleado, fecha_hora_entrega)
VALUES (19, 3, '2023-08-02T03:30:00', 'Avenida 10, Ciudad', 14,  '2023-08-02T04:45:00');

-- ---------------------------- Pedidos_Productos -------------------------------------------------
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (1, 1, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (1, 3, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (2, 2, 3);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (2, 4, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (3, 5, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (3, 6, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (4, 3, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (4, 7, 3);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (5, 1, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (5, 9, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (6, 1, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (6, 3, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (7, 2, 3);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (7, 4, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (8, 5, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (8, 6, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (9, 3, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (9, 7, 3);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (10, 1, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (10, 9, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (11, 1, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (11, 3, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (12, 2, 3);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (12, 4, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (13, 5, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (13, 6, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (14, 3, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (14, 7, 3);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (15, 1, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (15, 9, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (16, 1, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (16, 3, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (17, 2, 3);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (17, 4, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (18, 5, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (18, 6, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (19, 3, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (19, 7, 3);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (20, 1, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (20, 9, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (21, 1, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (21, 3, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (22, 2, 3);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (22, 4, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (23, 5, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (23, 6, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (24, 3, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (24, 7, 3);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (25, 1, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (25, 9, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (26, 1, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (26, 3, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (27, 2, 3);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (27, 4, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (28, 5, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (28, 6, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (29, 3, 1);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (29, 7, 3);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (30, 1, 2);
INSERT INTO Pedidos_Productos (id_pedido, id_producto, cantidad)
VALUES (30, 9, 2);
-- ---------------------------- Inventario -------------------------------------------------
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (1, 100.0);
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (2, 200.0);
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (3, 50.0);
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (4, 300.0);
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (5, 150.0);
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (6, 75.0);
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (7, 250.0);
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (8, 180.0);
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (9, 90.0);
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (10, 120.0);
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (11, 70.0);
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (12, 40.0);
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (13, 300.0);
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (14, 80.0);
INSERT INTO Inventario (id_materia_prima, cantidad_almacenada) VALUES (15, 220.0);
-- ---------------------------- Compras -------------------------------------------------
INSERT INTO Compras (id_usuario, id_materia_prima, cantidad_comprada, fecha_compra)
VALUES (2, 1, 100, '2023-08-01T10:30:00');
INSERT INTO Compras (id_usuario, id_materia_prima, cantidad_comprada, fecha_compra)
VALUES (2, 3, 50, '2023-08-02T09:15:00');
INSERT INTO Compras (id_usuario, id_materia_prima, cantidad_comprada, fecha_compra)
VALUES (3, 2, 80, '2023-08-02T14:20:00');
INSERT INTO Compras (id_usuario, id_materia_prima, cantidad_comprada, fecha_compra)
VALUES (3, 15, 120, '2023-08-15T17:45:00');
INSERT INTO Compras (id_usuario, id_materia_prima, cantidad_comprada, fecha_compra)
VALUES (4, 10, 70, '2023-08-16T12:30:00');
INSERT INTO Compras (id_usuario, id_materia_prima, cantidad_comprada, fecha_compra)
VALUES (4, 7, 90, '2023-08-25T15:10:00');
INSERT INTO Compras (id_usuario, id_materia_prima, cantidad_comprada, fecha_compra)
VALUES (2, 12, 40, '2023-08-28T09:00:00');
INSERT INTO Compras (id_usuario, id_materia_prima, cantidad_comprada, fecha_compra)
VALUES (2, 11, 100, '2023-08-01T10:30:00');
INSERT INTO Compras (id_usuario, id_materia_prima, cantidad_comprada, fecha_compra)
VALUES (2, 13, 50, '2023-08-02T09:15:00');
INSERT INTO Compras (id_usuario, id_materia_prima, cantidad_comprada, fecha_compra)
VALUES (3, 12, 80, '2023-08-02T14:20:00');
INSERT INTO Compras (id_usuario, id_materia_prima, cantidad_comprada, fecha_compra)
VALUES (3, 5, 120, '2023-08-15T17:45:00');
INSERT INTO Compras (id_usuario, id_materia_prima, cantidad_comprada, fecha_compra)
VALUES (4, 10, 70, '2023-08-16T12:30:00');
INSERT INTO Compras (id_usuario, id_materia_prima, cantidad_comprada, fecha_compra)
VALUES (4, 7, 90, '2023-08-25T15:10:00');
INSERT INTO Compras (id_usuario, id_materia_prima, cantidad_comprada, fecha_compra)
VALUES (2, 4, 40, '2023-08-28T09:00:00');

-- ---------------------------- Merma -------------------------------------------------
INSERT INTO Merma (id_producto, descripcion, cantidad_perdida, fecha_registro)
VALUES (1, 'Producto dañado', 10.5, '2023-08-01');
INSERT INTO Merma (id_producto, descripcion, cantidad_perdida, fecha_registro)
VALUES (3, 'Vencimiento', 5.25, '2023-08-05');
INSERT INTO Merma (id_producto, descripcion, cantidad_perdida, fecha_registro)
VALUES (2, 'Deterioro', 8.75, '2023-08-10');
INSERT INTO Merma (id_producto, descripcion, cantidad_perdida, fecha_registro)
VALUES (4, 'Rotura', 3.0, '2023-08-15');
INSERT INTO Merma (id_producto, descripcion, cantidad_perdida, fecha_registro)
VALUES (5, 'Descomposición', 6.8, '2023-08-20');