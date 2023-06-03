use elconstructor;

/*VISTA PARA VER CUANTO SE VENDIO EN TERMINOS DE DINERO CADA PRODUCTO*/
CREATE VIEW top_productos_$ AS
SELECT d.id_producto, SUM(d.cantidad), pr.nombre, pr.precio_unitario, SUM(d.cantidad * pr.precio_unitario) as total
FROM detalle d
JOIN productos pr ON d.id_producto = pr.id_producto
GROUP BY d.id_producto
ORDER BY total DESC;

/*VISTA PARA VER CUANTO SE VENDIO EN TERMINOS DE cantidad*/
CREATE VIEW top_productos_Q AS
SELECT d.id_producto, SUM(d.cantidad) as cantidad_total , pr.nombre , pr.precio_unitario 
FROM detalle d
JOIN productos pr on d.id_producto = pr.id_producto
group by pr.id_producto
order by SUM(d.cantidad) desc;

/* VISTA PARA VER QUE CLIENTE ES EL QUE MÁS APORTO A LAS VENTAS (EN este caso cliente con el id 9 total: 50 millones)*/
CREATE VIEW top_clientes AS
SELECT *, 
(SELECT precio_unitario FROM productos where productos.id_producto = detalle.id_producto) as pu,
(SELECT id_cliente FROM factura where detalle.id_factura = factura.id_factura) as idcliente,
(SELECT precio_unitario FROM productos where productos.id_producto = detalle.id_producto)*cantidad as total
FROM detalle
group by (SELECT id_cliente FROM factura where detalle.id_factura = factura.id_factura)
order by (SELECT precio_unitario FROM productos where productos.id_producto = detalle.id_producto)*cantidad desc;

/*VISTA PARA VER QUE MEDIOS DE PAGO FUERON LOS MAS ELEGIDO */
CREATE VIEW topMediosDePago AS
SELECT m.nombre,count(*) as veces_usadas
FROM medio_de_pago m
JOIN pago p on m.id_medio = p.id_medio
group by m.id_medio
order by count(*) desc;


/*VISTA PARA VER QUE productos tienen un stock mayor a 100 y el proveedor es ConstruMax*/
CREATE VIEW PuntoPedidoConstrumax AS
SELECT * from productos
where cant_stock< 1000 and id_proveedor = (select id_proveedor from proveedores where nombre="ConstruMax");