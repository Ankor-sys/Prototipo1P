use multibodegas;

insert into proveedores values("1", "ByBCompany", "58585858");
insert into clientes values("1", "Juanito", "45464545");
insert into Seguridad values("admin", "admin");
#select * from productos;
select * from inventarios;
select * from ventas;
select * from compras;
select * from Seguridad;

delete from ventas where id_venta = 1;
