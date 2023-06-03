SELECT * FROM detalle;

-- FUNCION PARA CALCULAR EL PRECIO 
DELIMITER $$
CREATE FUNCTION calcularPrecioNeto(precio DECIMAL(10, 2), cantidad INT) RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE precioNeto DECIMAL(10, 2);
    
    SET precioNeto = precio * cantidad;
    
    RETURN precioNeto;
END$$
DELIMITER ;

-- FUNCION PARA CALCULAR PRECIO CON IVA
DELIMITER $$
CREATE FUNCTION calcularPrecioConIVA(precio DECIMAL(10, 2), cantidad INT) RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE precioNeto DECIMAL(10, 2);
    DECLARE precioConIVA DECIMAL(10, 2);
    
    SET precioNeto = precio * cantidad;
    SET precioConIVA = precioNeto * 1.21; -- Se asume un IVA del 21%
    
    RETURN precioConIVA;
END$$
DELIMITER ;

SELECT 
    (SELECT precio_unitario FROM productos WHERE productos.id_producto = detalle.id_producto) AS pu, 
    (SELECT nombre FROM productos WHERE productos.id_producto = detalle.id_producto) AS producto,
    cantidad, 
    calcularPrecioNeto((SELECT precio_unitario FROM productos WHERE productos.id_producto = detalle.id_producto), cantidad) AS precioNeto,
    calcularPrecioConIVA((SELECT precio_unitario FROM productos WHERE productos.id_producto = detalle.id_producto), cantidad) AS precioConIVA
FROM detalle;

-- DEFINIR SI UN CLIENTE ES O NO MOROSO
delimiter //
create function f_tipoCliente(
   fecha_hoy DATE,
   fecha_pago DATE,
   efectuado bool
   )
   returns varchar(20)
   deterministic
begin
	case 
    when fecha_hoy <= fecha_pago then
      return 'con margen';
    when fecha_hoy > fecha_pago  and efectuado = true then
      return 'Cumplidor';
    when fecha_hoy > fecha_pago  and efectuado = false then
      return 'Moroso';
	end case; 
 end //
 delimiter ;
 
SELECT 
    f.id_cliente,
    p.fecha_pago,
    p.efectuado,
    f_tipoCliente('2023-05-15', p.fecha_pago, p.efectuado) AS tipoCliente
FROM pago p
JOIN factura f ON f.id_pago = p.id_pago;