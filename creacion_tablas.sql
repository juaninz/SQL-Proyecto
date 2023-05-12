CREATE SCHEMA elconstructor;

USE elconstructor;

CREATE TABLE unidades (
  id_unidad INT PRIMARY KEY NOT NULL auto_increment UNIQUE,
  nombre VARCHAR(50) NOT NULL
);

CREATE TABLE proveedores (
  id_proveedor INT PRIMARY KEY NOT NULL auto_increment UNIQUE,
  nombre VARCHAR(50) NOT NULL,
  ubicacion VARCHAR(50) NOT NULL,
  telefono INT NOT NULL
);

CREATE TABLE productos (
  id_producto INT PRIMARY KEY NOT NULL auto_increment UNIQUE,
  nombre VARCHAR(50) NOT NULL,
  id_unidad INT NOT NULL,
  cant_stock INT NOT NULL,
  id_proveedor INT NOT NULL,
  FOREIGN KEY (id_unidad) REFERENCES unidades(id_unidad),
  FOREIGN KEY(id_proveedor) REFERENCES proveedores(id_proveedor)
);

CREATE TABLE clientes (
  id_cliente INT PRIMARY KEY NOT NULL auto_increment UNIQUE,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  direccion VARCHAR(50) NOT NULL,
  telefono INT NOT NULL
);


CREATE TABLE medio_de_pago (
  id_medio INT PRIMARY KEY NOT NULL auto_increment UNIQUE,
  nombre VARCHAR(50) NOT NULL
);

CREATE TABLE pago (
  id_pago INT PRIMARY KEY NOT NULL auto_increment UNIQUE,
  fecha_pago DATE NOT NULL,
  id_medio INT NOT NULL,
  efectuado BOOL NOT NULL,
  FOREIGN KEY(id_medio) REFERENCES medio_de_pago(id_medio)
);

CREATE TABLE factura (
  id_factura INT PRIMARY KEY NOT NULL auto_increment UNIQUE,
  fecha DATE NOT NULL,
  id_cliente INT NOT NULL,
  id_pago INT NOT NULL,
  FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente),
  FOREIGN KEY(id_pago) REFERENCES pago(id_pago)
);

CREATE TABLE detalle (
  id_factura INT NOT NULL,
  id_producto INT NOT NULL,
  cantidad INT NOT NULL,
  precio INT NOT NULL,
  FOREIGN KEY(id_factura) REFERENCES factura(id_factura),
  FOREIGN KEY(id_producto) REFERENCES productos(id_producto)
);