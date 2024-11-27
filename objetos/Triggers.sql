--Este trigger se ejecutara automaticamente cuando se inserte una nueva venta

DELIMITER //

CREATE TRIGGER before_insert_venta
BEFORE INSERT ON venta
FOR EACH ROW
BEGIN
    DECLARE total DECIMAL(10,2);
    
    SELECT SUM(d.precio_venta * d.cantidad)
    INTO total
    FROM detalle_venta d
    WHERE d.id_venta = NEW.id_venta;
    
    SET NEW.total = total;
END//

DELIMITER ;

--Este trigger verificara que la venta no nos de un valor negativo

DELIMITER //

CREATE TRIGGER before_insert_detalle_venta
BEFORE INSERT ON detalle_venta
FOR EACH ROW
BEGIN
    IF NEW.precio_venta < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El precio de venta no puede ser negativo';
    END IF;
END//

DELIMITER ;
