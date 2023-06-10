use elconstructor;
/* creacion tabla de auditoria de productos*/
CREATE TABLE products_audits (
	id_log INT PRIMARY KEY auto_increment,
    entity varchar(100),
    entity_id int,
    insert_dt datetime,
    created_by varchar(100),
    last_update_dt datetime,
    last_updated_by varchar(100)
);

-- Trigger que inserta valores en la tabla de auditoria para registrar los movimientos de insercion en la tabla productos
CREATE TRIGGER `tr_insert_product_aud`
AFTER INSERT ON `productos`
FOR EACH ROW
INSERT INTO `products_audits`(entity, entity_id, insert_dt, created_by, last_update_dt, last_updated_by) 
VALUES ('product', NEW.id_producto,CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER());

INSERT INTO productos (nombre, id_unidad, cant_stock, precio_unitario, id_proveedor) VALUES
    ('Cinto Métrica', 3 , 20 , 1000 , 2 );
SELECT * FROM products_audits;

-- Trigger que actualiza automáticamente la tabla de auditoria de un producto luego de un update.
CREATE TRIGGER `tr_update_product_aud`
AFTER UPDATE ON `productos`
FOR EACH ROW
UPDATE `products_audits` SET last_update_dt = CURRENT_TIMESTAMP(), last_updated_by = USER() 
WHERE entity_id = OLD.id_producto;
SET SQL_SAFE_UPDATES = 0;
UPDATE productos SET nombre = 'Cinta Multifuncion' WHERE id_producto = 23;

SELECT * FROM products_audits;


-- Trigger de verificacion de duplicados
DELIMITER //
CREATE TRIGGER trigger_evitar_duplicados
BEFORE INSERT ON productos
FOR EACH ROW
BEGIN
    -- Verificar si ya existe un registro con el mismo nombre
    IF EXISTS (SELECT 1 FROM productos WHERE nombre = NEW.nombre) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No se puede insertar el registro. Ya existe un producto con el mismo nombre.';
    END IF;
END//

DELIMITER ;

INSERT INTO productos (nombre, id_unidad, cant_stock, precio_unitario, id_proveedor) VALUES
    ('Cinto Métrica', 3 , 20 , 1500 , 2 );

/* AUDITORIA TABLA PROVEEDOR */
-- creacion tabla de auditoria de proveedores
CREATE TABLE prov_audits (
	id_log INT PRIMARY KEY auto_increment,
    entity varchar(100),
    entity_id int,
    insert_dt datetime,
    created_by varchar(100),
    last_update_dt datetime,
    last_updated_by varchar(100)
);

-- Trigger que inserta valores en la tabla de auditoria para registrar los movimientos de insercion en la tabla proveedores
CREATE TRIGGER `tr_insert_prov_aud`
AFTER INSERT ON `proveedores`
FOR EACH ROW
INSERT INTO `prov_audits`(entity, entity_id, insert_dt, created_by, last_update_dt, last_updated_by) 
VALUES ('proveedor', NEW.id_proveedor,CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER());


INSERT INTO proveedores (nombre, ubicacion, telefono) VALUES
    ('Strike Corralon', 'Belgrano 1268', '3624970408');
SELECT * FROM prov_audits;

-- Trigger que actualiza automáticamente la tabla de auditoria de un proveedor luego de un update.
CREATE TRIGGER `tr_update_prov_aud`
AFTER UPDATE ON `proveedores`
FOR EACH ROW
UPDATE `prov_audits` SET last_update_dt = CURRENT_TIMESTAMP(), last_updated_by = USER() 
WHERE entity_id = OLD.id_proveedor;
SET SQL_SAFE_UPDATES = 0;
UPDATE proveedores SET nombre = 'Strikes Materiales' WHERE ubicacion = "Belgrano 1268";

SELECT * FROM prov_audits;


-- Trigger de verificacion de duplicados
DELIMITER //

CREATE TRIGGER trigger_evitar_duplicados_prov
BEFORE INSERT ON proveedores
FOR EACH ROW
BEGIN
    -- Verificar si ya existe un registro con el mismo nombre
    IF EXISTS (SELECT 1 FROM proveedores WHERE nombre = NEW.nombre) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No se puede insertar el registro. Ya existe un proveedor con el mismo nombre.';
    END IF;
END//

DELIMITER ;

INSERT INTO proveedores (nombre, ubicacion, telefono) VALUES
    ('Strikes Materiales', 'Belgrano 1268', '3624970408');