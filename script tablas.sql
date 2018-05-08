--vamos hacer el script de la base de datos y las tablas
-- usamos la DB master
use master;

-- validamos si existe una db con el mismo nombre
-- que la elimine por completo y creamos la nueva a utilizar
if db_id('POSSuperVida') is not null begin
   print 'db exists'
   alter database POSSuperVida set single_user with rollback immediate
   drop database POSSuperVida;
end

--create database POSSuperVida
create database POSSuperVida;
go -- usamos el comando go para la sucesion de codigo

--Usamos la DB correcta
use POSSuperVida;

go

-- creación de tablas independientes

create table Roles(
IdRol int primary key not null identity,
NombreRol varchar(25)
);

go

create table clientes(
IdCliente int primary key not null identity,
NombreCliente varchar(30),
Direccion varchar(40),
Telefono int
);

go

create table Productos(
IdProducto int primary key not null identity,
CodigoProducto int,
Existencia int,
NombreProducto varchar(40),
Costo money,
PrecioMenoreo money,
PrecioMayoreo money,
CantidadMayoreo int
);

go

create table Proveedores(
IdProveedores int primary key not null identity,
NombreProveedor varchar(40),
Direccion varchar(40),
Telefono int
);
go

--creacion de tablas dependientes

create table Compras(
IdCompra int primary key not null identity,
Fecha date,
Cantidad int,
IdProducto int,
Costo money,
constraint fk_IdProducto foreign key(IdProducto) references Productos(IdProducto)
);
go

create table Usuarios(
IdUsuario int primary key not null identity,
NombreUsuario varchar(30),
NickUsuario varchar(30),
ContraseniaUsuario varchar(10),
IdRol int,
EstadoUsuario bit,
constraint fk_IdRol foreign key(IdRol) references Roles(IdRol)
);

go

create table Ventas(
IdVenta int primary key not null identity,
IdCliente int,
IdUsuario int,
fecha date,
constraint fk_IdCliente foreign key(IdCliente) references Clientes(IdCliente),
constraint fk_IdUsuario foreign key(IdUsuario) references Usuarios(IdUsuario)
);

go

create table DetalleVentas(
IdDetalleVenta int primary key not null identity,
IdVenta int,
Cantidad int,
IdProducto int,
Precio money,
Subtotal money,
constraint fk_IdVenta foreign key(IdVenta) references Ventas(IdVenta),
constraint fk_IdProductos foreign key(IdProducto) references Productos(IdProducto)
);
