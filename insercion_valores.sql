-- Insertar 20 registros en la tabla "clientes"
INSERT INTO clientes (nombre, apellido, direccion, telefono) VALUES
    ('Juan', 'Pérez', 'Calle 123', '3624123456'),
    ('María', 'González', 'Avenida 456', '3794123456'),
    ('Pedro', 'López', 'Calle 789', '3624987654'),
    ('Luisa', 'Martínez', 'Avenida 012', '3794987654'),
    ('Carlos', 'Rodríguez', 'Calle 345', '3624765432'),
    ('Ana', 'Hernández', 'Avenida 678', '3794765432'),
    ('José', 'Gómez', 'Calle 901', '3624234567'),
    ('Laura', 'Fernández', 'Avenida 234', '3794234567'),
    ('Miguel', 'Sánchez', 'Calle 567', '3624123458'),
    ('Sofía', 'Ramírez', 'Avenida 890', '3794123458'),
    ('Daniel', 'Torres', 'Calle 111', '3624987659'),
    ('Fernanda', 'Silva', 'Avenida 222', '3794987659'),
    ('Alejandro', 'Chávez', 'Calle 333', '3624765430'),
    ('Valentina', 'Rojas', 'Avenida 444', '3794765430'),
    ('Andrés', 'Pereira', 'Calle 555', '3624234561'),
    ('Gabriela', 'López', 'Avenida 666', '3794234561'),
    ('Martín', 'García', 'Calle 777', '3624123472'),
    ('Carolina', 'Torres', 'Avenida 888', '3794123472'),
    ('Luis', 'Mendoza', 'Calle 999', '3624987613'),
    ('Ana', 'Romero', 'Avenida 000', '3794987613');

-- Insercion tabla proveedores
INSERT INTO proveedores (nombre, ubicacion, telefono) VALUES
    ('ConstruMax', 'Calle de la Construcción 123', '3624123456'),
    ('Estructuras Sólidas', 'Avenida del Progreso 456', '3624987654'),
    ('Construcciones Modernas', 'Calle de la Innovación 789', '3794123456'),
    ('Todo para su obra', 'Avenida del Arte 012', '3624765432'),
    ('ConstruPlaza', 'Calle del Proyecto 345', '3624234567'),
    ('Materiales Constructivos', 'Avenida de la Edificación 678', '3794987654'),
    ('ConstruTech', 'Calle de la Tecnología 901', '3624321654'),
    ('Bercomat', 'Avenida de la Ingeniería 234', '3794234567'),
    ('ConstruHouse', 'Calle del Hogar 567', '3624123458'),
    ('Urbanización y Obras', 'Avenida de la Urbanidad 890', '3624123459');
    
-- Insercion UNIDADES
INSERT INTO unidades (nombre) VALUES
    ('Kg'),
    ('m3'),
    ('un'),
    ('rollos x 50m'),
    ('m'),
    ('bolsas x 50 kg'),
    ('envase 20lts'),
    ('barras x 12m');

-- Insercion tabla productos
INSERT INTO productos (nombre, id_unidad, cant_stock, precio_unitario, id_proveedor) VALUES
    ('Cemento Portland', 6 , 200 , 11500 , 2 ),
    ('Ladrillos', 3 , 10000 ,200, 7 ),
    ('Cal', 6 , 250 , 10700 , 1 ),
    ('Hierro del 6', 8 , 50, 20500 , 6 ),
    ('Hierro del 8', 8 , 25 , 33500, 6 ),
    ('Hierro del 10', 8 , 30 , 48500, 6 ),
    ('Hierro del 12', 8 , 40 , 66700, 6 ),
    ('Baldosa Cerámica 30x30', 3 , 5500, 18000 , 5),
	('Baldosa de porcelanato 60x60', 3 , 4500 , 25000, 5),
    ('Arena', 2 , 6000 , 20000, 10 ),
    ('Piedra', 2 , 5000 , 25000, 10 ),
    ('Pintura ALBA blanca', 7 , 50 ,35000, 9 ),
    ('Malla Cima', 3 , 500 , 12000, 4),
    ('Chapa Trapezoidal 1x1m', 3 , 800 , 7000, 2 ),
    ('Perfil C 100', 3 , 300 , 27726, 5 ),
    ('Perfil C 120', 3 , 250 , 33519, 5 );
    
-- Insercion medios de pago
INSERT INTO medio_de_pago(nombre) VALUES
    ('efectivo' ),
    ('tarjeta de debito' ),
    ('tarjeta de credito' ),
    ('cuenta corriente' );

-- Insertar valores en la tabla "pago"
INSERT INTO pago (fecha_pago, id_medio, efectuado) VALUES
    ('2023-05-10', 1, TRUE),
    ('2023-05-11', 3, FALSE),
    ('2023-05-12', 3, TRUE),
    ('2023-05-13', 4, TRUE),
    ('2023-05-14', 4, FALSE),
    ('2023-05-15', 2, TRUE),
    ('2023-05-16', 3, FALSE),
    ('2023-05-17', 4, TRUE),
    ('2023-05-18', 1, TRUE),
    ('2023-05-19', 4, FALSE);

-- Insercion tabla "factura"
INSERT INTO factura (fecha, id_cliente, id_pago) VALUES
    ('2023-04-25', 1, 1),
    ('2023-04-26', 2, 2),
    ('2023-04-27', 3, 3),
    ('2023-04-28', 4, 4),
    ('2023-04-29', 5, 5),
    ('2023-04-30', 6, 6),
    ('2023-05-01', 7, 7),
    ('2023-05-02', 8, 8),
    ('2023-05-03', 9, 9),
    ('2023-05-04', 10, 10);

-- Inserción tabla detalle
INSERT INTO detalle (id_factura, id_producto, cantidad) VALUES
    (1,1, 50),
    (2, 2, 1200),
    (3, 1, 20),
    (4, 4, 12),
    (5, 4, 15),
    (6, 10, 1500),
    (7, 10, 2000),
    (8, 11, 1000),
    (9, 11, 2000),
    (10, 15, 10);

