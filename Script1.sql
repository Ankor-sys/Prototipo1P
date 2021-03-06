-- Script Parcial 1 BD 1
#drop database multibodegas;
create database multibodegas;
use multibodegas;

create table productos(
id_producto varchar(18) primary key not null,
marca varchar(50) not null,
nombre_producto varchar(50) not null,
precio double not null
)engine=innodb;

create table clientes(
nit_cliente varchar(18) primary key not null,
nombre_cliente varchar(50) not null,
telefono varchar(12)
)engine=innodb;

create table proveedores(
nit_proveedores varchar(20) primary key not null,
nombre_proveedor varchar(50) not null,
telefono varchar(12)
)engine=innodb;

create table inventarios(
id_inventario varchar(15) not null,
id_producto varchar(18) not null,
existencias int not null,
primary key(id_inventario, id_producto),
foreign key(id_producto) references productos(id_producto)
)engine=innodb;

create table compras(
id_compra varchar(15),
nit_cliente varchar(12),
id_producto varchar(18),
cantidad int,
foreign key (id_producto) references productos(id_producto),
foreign key (nit_cliente) references clientes(nit_cliente)
)engine=innodb;

create table ventas(
id_venta varchar(15),
nit_proveedor varchar(12),
id_producto varchar(18),
cantidad int,
foreign key (nit_proveedor) references proveedores(nit_proveedores),
foreign key (id_producto) references productos(id_producto)
)engine=innodb;

create table Seguridad(
Usuario varchar(50),
Password_usuario varchar(50),
primary key (Usuario, Password_usuario)
)engine=innodb;
