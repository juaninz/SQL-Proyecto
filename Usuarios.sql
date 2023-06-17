use mysql;
show tables;
select * from user;

# Creacion de dos usuarios y sus respectivas contraseñas
CREATE USER coder1@localhost IDENTIFIED BY 'hola1234';
CREATE USER coder2@localhost IDENTIFIED BY 'hola12345';

#Script para darle permiso de lectura a coder1
GRANT SELECT ON elconstructor.* TO 'coder1'@'localhost';

#Script para concederle permiso de lectura, inserción y modificación a coder2
GRANT SELECT, INSERT, UPDATE ON elconstructor.* TO 'coder2'@'localhost';

#Scripts para revocar permisos de eliminacion de registros para ambos usuarios
REVOKE DELETE ON elconstructor.* FROM 'coder1'@'localhost';
REVOKE DELETE ON elconstructor.* FROM 'coder2'@'localhost';