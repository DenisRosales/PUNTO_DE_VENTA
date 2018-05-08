Use POSSuperVida

--insertando datos a la tabla roles de usuarios
Insert into Roles values ('Administrador');
Insert into Roles values ('vendedor')

--insertando datos a la tabla clientes
insert into clientes values ('ana lopez','caballo blanco',12345678);
insert into clientes values ('juan lopez','caballo blanco',12345678);
insert into clientes values ('pedro lopez','caballo blanco',87654321);
insert into clientes values ('luis perez','caballo blanco',23456789);
insert into clientes values ('jose perez','caballo blanco',09876543);

--insertando datos a la tabla productos
insert into Productos values (1234,10,'arroz',2.5,4,3,6);
insert into Productos values (4321,10,'azucar',3,4,3.5,30);
insert into Productos values (5678,10,'frijol',2.5,4,3,6);
insert into Productos values (8765,10,'aceite',4,6,5,6);
insert into Productos values (2345,10,'maseca',5,6,5.3,10);

--insertando datos a la tabla proveedores
insert into Proveedores values ('Gran gallo','Coatepeque',12345678);
insert into Proveedores values ('La montaña','Retalhuleu',12345678);
insert into Proveedores values ('El porvenir','mazatenango',12345678);
insert into Proveedores values ('Gran precio','Ciudad de Guatemala',12345678);
insert into Proveedores values ('Grandes compras','Coatepeque',12345678);

--insertando datos a la tabla compras
insert into Compras values ('05-05-2018',10,1,3);
insert into Compras values ('06-05-2018',10,2,4);
insert into Compras values ('07-05-2018',10,3,5);
insert into Compras values ('04-05-2018',10,4,6);
insert into Compras values ('03-05-2018',10,5,7);

--insertando datos a la tabla usuarios
insert into Usuarios values ('Juan Perez Lopez','jpLopez',1234,2,1);
insert into Usuarios values ('Pedro santos Rodriguez','psantos',1234,2,1);
insert into Usuarios values ('Denis Ronaldo Rosales','drosales',1234,1,1);
insert into Usuarios values ('Juan Carlos Lopez','jLopez',1234,2,1);
insert into Usuarios values ('Juana lopez Mazariegos','jlma',1234,2,1);

--insertando datos a la tabla Ventas
insert into Ventas values (1,1,'07-05-2018');
insert into Ventas values (2,5,'07-05-2018');
insert into Ventas values (3,4,'07-05-2018');
insert into Ventas values (4,3,'07-05-2018');
insert into Ventas values (5,2,'07-05-2018');

--insetando datos a la tabla detalle ventas
insert into DetalleVentas values (1,3,1,7,21);
insert into DetalleVentas values (1,3,2,5,18);
insert into DetalleVentas values (2,3,1,7,21);
insert into DetalleVentas values (3,4,4,5,20);
insert into DetalleVentas values (4,3,3,7,21);
insert into DetalleVentas values (5,3,5,7,21);
