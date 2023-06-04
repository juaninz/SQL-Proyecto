use elconstructor;
/* El siguiente sp permite ordenar una tabla según un campo de ordenamiento y especificar 
si el orden es ascendente o descendente*/
DELIMITER //

CREATE PROCEDURE OrdenarTabla(
    IN tableName VARCHAR(255),
    IN sortColumn VARCHAR(255),
    IN sortOrder VARCHAR(4)
)
BEGIN
    SET @query = CONCAT('SELECT * FROM ', tableName, ' ORDER BY ', sortColumn, ' ', sortOrder);
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;

/*Para usarlo se debe proporcionar el nombre de la tabla en la que se desea ordenar los datos, 
el nombre de la columna de ordenamiento y el orden ("ASC" para ascendente o "DESC" para descendente).*/

CALL OrdenarTabla('productos', 'precio_unitario', 'DESC');

/*El siguiente sp permitirá insertar registros en una tabla y eliminar un registro específico de la misma */
DELIMITER //

CREATE PROCEDURE InsertarEliminarProveedor(
    IN p_id INT,
    IN p_nombre VARCHAR(50),
    IN p_ubicacion VARCHAR(50),
    IN p_telefono VARCHAR(20),
    IN p_accion VARCHAR(10)
)
BEGIN
    IF p_accion = 'INSERT' THEN
        INSERT INTO proveedores (nombre, ubicacion, telefono) VALUES (p_nombre, p_ubicacion, p_telefono);
    ELSEIF p_accion = 'DELETE' THEN
        DELETE FROM proveedores WHERE id_proveedor = p_id;
    END IF;
END //

DELIMITER ;

/*En este sp se utilizan los siguientes parámetros:
p_id: el ID del proveedor que deseas eliminar.
p_nombre: el nombre del proveedor que deseas insertar.
p_ubicacion: la ubicación del proveedor que deseas insertar.
p_telefono: el número de teléfono del proveedor que deseas insertar.
p_accion: la acción que deseas realizar, puede ser 'INSERT' para insertar un nuevo proveedor o 
'DELETE' para eliminar un proveedor existente. */

-- En el caso de la inserción se colocara NULL en el id_proveedor debido a que este es autoincremental
CALL InsertarEliminarProveedor(NULL, 'GIRONA MATERIALES', 'Ubicación 1', '1234567890', 'INSERT');
SELECT * FROM proveedores;
-- Para el caso de la eliminación se dejaran vacios el resto de los campos que nos sean el id que se quiere eliminar.
CALL InsertarEliminarProveedor(11, '', '', '', 'DELETE');