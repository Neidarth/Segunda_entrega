--Esta vista nos da una vision completa y detallada de las ventas realizadas.
CREATE VIEW vw_ventas_con_detalle AS
SELECT 
    v.id_venta,
    v.fecha,
    c.nombre AS cliente_nombre,
    c.email AS cliente_email,
    i.nombre AS instrumento_nombre,
    i.tipo_instrumento,
    i.modelo,
    dv.cantidad,
    dv.precio_venta,
    (dv.cantidad * dv.precio_venta) AS subtotal,
    v.total AS total_venta
FROM 
    venta v
JOIN 
    cliente c ON v.id_cliente = c.id_cliente
JOIN 
    detalle_venta dv ON v.id_venta = dv.id_venta
JOIN 
    instrumento i ON dv.id_instrumento = i.id_instrumento;

    SELECT * FROM vw_ventas_con_detalle;


--Esta vista nos revela un listado de los instrumentos en stock, con detalles sobre cada uno de ellos.    
CREATE VIEW v_inventario_instrumentos AS
SELECT 
    i.id_instrumento,
    i.nombre AS instrumento_nombre,
    i.tipo_instrumento,
    i.modelo,
    i.precio,
    d.nombre AS distribuidor_nombre,
    d.telefono AS distribuidor_telefono
FROM 
    instrumento i
JOIN 
    distribuidor d ON i.id_distribuidor = d.id_distribuidor;

    SELECT * FROM v_inventario_instrumentos;


--Esta vista te da una lista de todos los clientes que han realizado compras, con el total de ventas que cada uno ha realizado y la cantidad total que ha gastado.
CREATE VIEW vw_ventas_por_clientes AS
SELECT 
    c.id_cliente,
    c.nombre AS cliente_nombre,
    c.email AS cliente_email,
    COUNT(v.id_venta) AS total_ventas,
    SUM(v.total) AS total_gastado
FROM 
    cliente c
JOIN 
    venta v ON c.id_cliente = v.id_cliente
GROUP BY 
    c.id_cliente, c.nombre, c.email;

        SELECT * FROM vw_ventas_por_clientes;