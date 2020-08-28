use multibodegas;

#insert into proveedores values("1", "ByBCompany", "58585858");
#insert into clientes values("1", "Juanito", "45464545");
#select * from productos;
select * from inventarios;
select * from ventas;
select * from compras;

delete from ventas where id_venta = 1;
