use elconstructor;
INSERT INTO proveedores (nombre, ubicacion, telefono) VALUES
    ('ComprasNet', '9 de julio 124', '3624554789'),
    ('Easy', 'Luis castillo 258', '3624987471'),
    ('Las primas', 'Progreso 147', '3794123478');

select * from proveedores;

-- Transaccion en tabla proveedores
START TRANSACTION;

-- Eliminar registros si existen
DELETE FROM proveedores WHERE nombre='Las primas';

-- INSERT INTO proveedores (columnas) VALUES (valores); -- Descomentar para re-insertar registros importantes

-- ROLLBACK; -- Descomentar para revertir los cambios en caso de error o cancelación

COMMIT;

SELECT * FROM CLIENTES;
-- TRANSACCION TABLA CLIENTES
START TRANSACTION;

-- Insertar los primeros cuatro registros
INSERT INTO clientes (nombre, apellido, direccion, telefono) VALUES
    ('Laura', 'Garcia', 'Lucero 1274', '3794984789');
INSERT INTO clientes (nombre, apellido, direccion, telefono) VALUES
    ('Mauro', 'Cardozo', 'Colon 24', '3791234567');
INSERT INTO clientes (nombre, apellido, direccion, telefono) VALUES
    ('Rodrigo', 'Depaul', 'catar 2022', '3797894512');
INSERT INTO clientes (nombre, apellido, direccion, telefono) VALUES
    ('Lionel', 'Messi', 'Barcelona 1986', '3797841565');
SAVEPOINT savepoint_4;

-- Insertar los siguientes cuatro registros
INSERT INTO clientes (nombre, apellido, direccion, telefono) VALUES
    ('Roxana', 'Garcia', 'Edision 124', '3797414712');
INSERT INTO clientes (nombre, apellido, direccion, telefono) VALUES
    ('Ramiro', 'Abila', 'Brandsen 740', '379549876');
INSERT INTO clientes (nombre, apellido, direccion, telefono) VALUES
    ('Giovanni', 'LoCelso', 'Brasil 2021', '3794758746');
INSERT INTO clientes (nombre, apellido, direccion, telefono) VALUES
    ('Leandro', 'Paredes', 'Paris 2020', '3794726666');
SAVEPOINT savepoint_8;

-- ROLLBACK TO savepoint_4; -- Descomentar para eliminar los primeros cuatro registros insertados

COMMIT;