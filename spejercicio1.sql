CREATE DATABASE spejercicio1;
USE spejercicio1;

CREATE TABLE usuarios(
	id INT NOT NULL AUTO_INCREMENT,
    userid VARCHAR(50) NOT NULL,
    pass VARCHAR(50) NOT NULL , 
    nombreuser VARCHAR(50) not null ,
    PRIMARY KEY(id)
);

INSERT into usuarios (userid , pass , nombreuser)
VALUES ('scott123' , '123@sco' , 'Scott');
#creamos un procedimiento almacenado para mostrar la tabla y lo usaremos
call sp_mostrarNombres;
#Eliminar procedure
DROP PROCEDURE sp_agregarNombres;
#Agregamos otros dos elementos con la ayuda del SP creado
call sp_agregarUsuario('ferp6734' , 'dloeiu@&3', 'Palash');
call sp_eliminarUser(3);


