USE LuxuryRest;
SELECT * FROM dbo.[user];
INSERT INTO dbo.[user](name, email,password,active,confirmed_at)
VALUES('Jhosep Jael Zapien Alba','joseph.zapien12@gmail.com','1234',1,GETDATE());
SELECT * FROM user_roles;
SELECT * FROM role; 
DBCC CHECKIDENT ([Pedidos], RESEED, 0)
delete dbo.[user_roles] ;
INSERT INTO dbo.user_roles(userId, roleId)
VALUES (1,1)
SELECT * from dbo.Compras;
INSERT INTO dbo.Compras(id_usuario, id_materia_prima,cantidad_comprada, fecha_compra)
VALUES (1,1,2,GETDATE());
SELECT * FROM Materias_Primas;
SELECT * FROM dbo.productos;
SELECT * FROM dbo.Productos;
SELECT * FROM dbo.Proveedores;
SELECT * FROM dbo.Materias_Primas;
SELECT * FROM dbo.Pedidos;
SELECT * FROM dbo.Pedidos_Productos;
SELECT * FROM dbo.productos;
DELETE FROM dbo.Pedidos;
DELETE FROM dbo.Pedidos_Productos;
DBCC CHECKIDENT (Pedidos_Productos, RESEED, 0)
DBCC CHECKIDENT (Pedidos, RESEED, 0)
SELECT * FROM dbo.Compras;
DELETE FROM dbo.Compras;
DBCC CHECKIDENT ([Compras], RESEED, 0)
SELECT * FROM dbo.Ventas;
DBCC CHECKIDENT ([Ventas], RESEED, 0)
SELECT * FROM dbo.Merma;
SELECT * FROM dbo.Inventario;
DELETE FROM dbo.Inventario;
DBCC CHECKIDENT ([Inventario], RESEED, 0)
SELECT * FROM dbo.Proveedores;
SELECT * FROM dbo.Receta;
UPDATE dbo.Proveedores SET  dbo.Proveedores.[Activo] = 1; 
DELETE  FROM dbo.[User];
DELETE  FROM dbo.[User_Roles];
DELETE  FROM dbo.[Productos];
DELETE  FROM dbo.[Ventas];
DELETE  FROM dbo.[Compras];
DELETE FROM dbo.[Inventario];
DELETE  FROM dbo.[Receta];
DELETE  FROM dbo.[Pedidos];
DELETE  FROM dbo.[Pedidos_Productos];
DELETE  FROM dbo.[Merma];
DELETE FROM dbo.[Proveedores];
DELETE FROM dbo.Materias_Primas;

SELECT * FROM Role;
SELECT * FROM User_Roles;

DBCC CHECKIDENT ([User], RESEED, 0)
DBCC CHECKIDENT ([User_Roles], RESEED, 0)
DBCC CHECKIDENT ([Inventario], RESEED, 0)
DBCC CHECKIDENT ([Productos], RESEED, 0)
DBCC CHECKIDENT ([Ventas], RESEED, 0)
DBCC CHECKIDENT (Materias_Primas, RESEED, 0)
DBCC CHECKIDENT (Receta, RESEED, 0)
DBCC CHECKIDENT (Merma, RESEED, 0)
DBCC CHECKIDENT ([Proveedores], RESEED, 0)
