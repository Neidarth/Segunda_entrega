-- Este procedimiento es para agregar clientes

DELIMITER //
DROP PROCEDURE IF EXISTS insertar_cliente //
CREATE PROCEDURE insertar_cliente(
    IN p_nombre VARCHAR(100),      
    IN p_email VARCHAR(200)        
)
BEGIN
    
    INSERT INTO cliente (nombre, email)
    VALUES (p_nombre, p_email);
END //

DELIMITER ;

CALL insertar_cliente('nombre', 'email');