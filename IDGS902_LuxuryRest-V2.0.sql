USE master;
ALTER DATABASE [LuxuryRest] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE [LuxuryRest];



-- ------------------------------------ Creación de BD LuxuryRest -------------------------------------------------------------------------------
DROP DATABASE IF EXISTS LuxuryRest;
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'LuxuryRest')
BEGIN
    CREATE DATABASE LuxuryRest;
END
GO

USE LuxuryRest;
GO
-- ------------------------------------ Creacion de Tablas -------------------------------------------------------------------------------
CREATE TABLE [User] (
    id INT NOT NULL IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    [password] VARCHAR(255) NOT NULL,
    active BIT NULL,
    confirmed_at DATETIME NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Role (
    id INT NOT NULL IDENTITY(1,1),
    name VARCHAR(50) NOT NULL,
    [description] VARCHAR(255) NULL,
    PRIMARY KEY (id)
);

CREATE TABLE User_Roles (
    userId INT NULL,
    roleId INT NULL,
    FOREIGN KEY (userId) REFERENCES [user] (id),
    FOREIGN KEY (roleId) REFERENCES role (id)
);

CREATE TABLE Productos (
    id_producto INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    imagen NVARCHAR(MAX),
    --tipo_producto INT NOT NULL,
    precio_venta DECIMAL(10,2) NOT NULL,
    cantidad_disponible INT NOT NULL,
    valoracionT INT NULL,
    valoracionC INT NULL,
    estatus INT NOT NULL
);

CREATE TABLE Proveedores (
    id_proveedor INT IDENTITY(1,1) PRIMARY KEY,
    nombre_empresa VARCHAR(50) NOT NULL,
    nombre_contacto VARCHAR(50) NOT NULL,
    correo_electronico VARCHAR(50) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
	Activo BIT NOT NULL
);
--ALTER TABLE Proveedores
--ADD Activo BIT;

CREATE TABLE Materias_Primas (
    id_materia_prima INT IDENTITY(1,1) PRIMARY KEY,
    id_proveedor INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    unidad_medida VARCHAR(20) NOT NULL,
    cantidad_minima_requerida DECIMAL(10,2) NOT NULL,
    precio_compra DECIMAL(10,2) NOT NULL,
	Activo BIT NOT NULL,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)

);

CREATE TABLE Receta (
    id_receta INT IDENTITY(1,1) PRIMARY KEY,
    id_materia_prima INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad_requerida DECIMAL(12,5) NOT NULL,
    FOREIGN KEY (id_materia_prima) REFERENCES Materias_Primas(id_materia_prima),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

CREATE TABLE Ventas (
    id_venta INT IDENTITY(1,1) PRIMARY KEY,
    id_usuario INT NOT NULL,
    precio_total DECIMAL(10,2) NOT NULL,
    fecha_hora_venta DATETIME NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES [user](id)
);

CREATE TABLE Pedidos (
    id_pedido INT IDENTITY(1,1) PRIMARY KEY,
    id_usuario INT NOT NULL,
    estado_pedido INT NOT NULL,
    fecha_hora_pedido DATETIME NOT NULL,
    domicilio VARCHAR(70),
    empleado INT,
    fecha_hora_entrega DATETIME,
    FOREIGN KEY (id_usuario) REFERENCES [user](id),
    FOREIGN KEY (empleado) REFERENCES [user](id)
);

CREATE TABLE Pedidos_Productos (
id INT NOT NULL IDENTITY(1,1),
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
	primary key (id),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

CREATE TABLE Inventario (
    id_inventario INT IDENTITY(1,1) PRIMARY KEY,
    id_materia_prima INT NOT NULL,
    cantidad_almacenada DECIMAL(15,5) NOT NULL,
    FOREIGN KEY (id_materia_prima) REFERENCES Materias_Primas(id_materia_prima)
);

CREATE TABLE Compras (
    id_compra INT IDENTITY(1,1) PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_materia_prima INT NOT NULL,
    cantidad_comprada INT NOT NULL,
    fecha_compra DATETIME NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES [user](id),
    FOREIGN KEY (id_compra) REFERENCES Compras(id_compra),
    FOREIGN KEY (id_materia_prima) REFERENCES Materias_Primas(id_materia_prima )
);

CREATE TABLE Merma(
    id_Merma INT IDENTITY(1,1) PRIMARY KEY,
    id_producto INT NOT NULL,
    descripcion VARCHAR(50),
    cantidad_perdida DECIMAL(12,5) NOT NULL,
    fecha_registro DATE NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

-- ------------------------------------ Procedure Materias -------------------------------------------------------------------------------
GO
CREATE PROCEDURE Descuento_Materias_Primas
    @id_pedido INT
AS
BEGIN
    SET XACT_ABORT ON;
    SET NOCOUNT ON;
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

    BEGIN TRANSACTION;

    -- Descuento de las materias primas
    UPDATE Inventario
    SET cantidad_almacenada = cantidad_almacenada - cantidades_a_descontar.cantidad_a_descontar
    FROM Inventario inv
    INNER JOIN (
        SELECT rp.id_materia_prima, SUM(rp.cantidad_requerida * pp.cantidad) AS cantidad_a_descontar
        FROM Receta rp
        INNER JOIN Pedidos_Productos pp ON rp.id_producto = pp.id_producto
        WHERE pp.id_pedido = @id_pedido
        GROUP BY rp.id_materia_prima
    ) AS cantidades_a_descontar ON inv.id_materia_prima = cantidades_a_descontar.id_materia_prima;

    -- Actualización del estado del pedido
    UPDATE Pedidos
    SET estado_pedido = 2
    WHERE id_pedido = @id_pedido;

    -- Insercion del pedido concluido en la tabla ventas
    INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
    SELECT p.id_usuario, SUM(pr.precio_venta * pp.cantidad) AS precio_total, GETDATE()
    FROM Pedidos AS p
    INNER JOIN Pedidos_Productos AS pp ON pp.id_pedido = p.id_pedido
    INNER JOIN Productos AS pr ON pr.id_producto = pp.id_producto
    WHERE pp.id_pedido = @id_pedido
    GROUP BY p.id_usuario;

    COMMIT TRANSACTION;
END;
GO

CREATE PROCEDURE Descuento_Materias_Primas1
    @id_pedido INT
AS
BEGIN
    SET XACT_ABORT ON;
    SET NOCOUNT ON;
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

    BEGIN TRANSACTION;

    -- Descuento de las materias primas
    UPDATE Inventario
    SET cantidad_almacenada = cantidad_almacenada - cantidades_a_descontar.cantidad_a_descontar
    FROM Inventario inv
    INNER JOIN (
        SELECT rp.id_materia_prima, SUM(rp.cantidad_requerida * pp.cantidad) AS cantidad_a_descontar
        FROM Receta rp
        INNER JOIN Pedidos_Productos pp ON rp.id_producto = pp.id_producto
        WHERE pp.id_pedido = @id_pedido
        GROUP BY rp.id_materia_prima
    ) AS cantidades_a_descontar ON inv.id_materia_prima = cantidades_a_descontar.id_materia_prima;

    -- Insercion del pedido concluido en la tabla ventas
    INSERT INTO Ventas (id_usuario, precio_total, fecha_hora_venta)
    SELECT p.id_usuario, SUM(pr.precio_venta * pp.cantidad) AS precio_total, GETDATE()
    FROM Pedidos AS p
    INNER JOIN Pedidos_Productos AS pp ON pp.id_pedido = p.id_pedido
    INNER JOIN Productos AS pr ON pr.id_producto = pp.id_producto
    WHERE pp.id_pedido = @id_pedido
    GROUP BY p.id_usuario;

    COMMIT TRANSACTION;
END;
GO

-- ------------------------------------ Insercion de Roles -------------------------------------------------------------------------------
SET IDENTITY_INSERT role ON;
INSERT INTO role ( name, description) VALUES ( 'Administrador', 'Todo permiso');
INSERT INTO role ( name, description) VALUES ( 'Usuario', 'Permisos restringidos');
INSERT INTO role ( name, description) VALUES ( 'Empleado', 'Permisos restringidos 1');
INSERT INTO role ( name, description) VALUES ( 'Repartidor', 'Permisos restringidos 2');
SET IDENTITY_INSERT role OFF;
GO

-- ------------------------------------ Generacion de Triggers -------------------------------------------------------------------------------

CREATE TRIGGER tr_table_insert
ON [user]
AFTER INSERT
AS
BEGIN
    INSERT INTO user_roles (userId, roleId)
    SELECT id, 2
    FROM INSERTED;
END;
GO

CREATE TRIGGER tr_insertar_inventario
ON Materias_Primas
AFTER INSERT
AS
BEGIN
    INSERT INTO Inventario (id_materia_prima, cantidad_almacenada)
    SELECT id_materia_prima, 0
    FROM INSERTED;
END;
-- ------------------------------------ Ver Triggers creados correctamente ------------------------------------------
GO
SELECT 
    name AS TriggerName,
    OBJECT_SCHEMA_NAME('1') AS SchemaName,
    OBJECT_NAME('1') AS TableName,
    type_desc AS TriggerType
FROM sys.triggers
WHERE parent_class_desc = 'OBJECT_OR_COLUMN';