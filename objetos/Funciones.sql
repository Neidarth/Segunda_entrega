-- Tuve que declarar el set global porque no me dejaba utilizar la funcion siguiente en MySql(me rompi la cabeza buscando en internet)

SET GLOBAL log_bin_trust_function_creators = 1;


-- Esta funcion nos dice cual es el valor total de las ventas
DELIMITER //

CREATE FUNCTION calcular_total_venta(
    p_id_venta INT
)
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE v_total DECIMAL(10, 2);

    SELECT IFNULL(SUM(cantidad * precio_venta), 0)
    INTO v_total
    FROM detalle_venta
    WHERE id_venta = p_id_venta;

    -- Devolver el valor total
    RETURN v_total;
END //

DELIMITER ;

SELECT calcular_total_venta(1);