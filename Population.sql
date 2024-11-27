USE venta_instrumentos;

INSERT INTO distribuidor (nombre, telefono) VALUES
('Distribuidora A', '4659-1234'),
('Distribuidora B', '4659-5678'),
('Distribuidora C', '4443-8765'),
('Distribuidora D', '4650-4321'),
('Distribuidora E', '4650-1357');

INSERT INTO instrumento (id_distribuidor, nombre, tipo_instrumento, modelo, precio) VALUES
(1, 'Guitarra Electrica', 'Cuerda', 'Fender Stratocaster', 1200.00),
(2, 'Bajo Electrico', 'Cuerda', 'Gibson Thunderbird', 1500.00),
(3, 'Bateria', 'Percusion', 'Yamaha Stage Custom', 800.00),
(4, 'Piano Digital', 'Teclado', 'Roland FP-30', 600.00),
(5, 'Saxofon', 'Viento', 'Selmer Paris Mark VI', 2500.00);

INSERT INTO cliente (nombre, email) VALUES
('Carlos Sanchez', 'carlos.sanchez@email.com'),
('Ana Torres', 'ana.torres@email.com'),
('Luis Gomez', 'luis.gomez@email.com'),
('Marta Diaz', 'marta.diaz@email.com'),
('Pedro Martinez', 'pedro.martinez@email.com');

INSERT INTO venta (id_cliente, fecha, total) VALUES
(1, '2024-11-01', 2200.00),
(2, '2024-11-02', 1600.00),
(3, '2024-11-03', 1400.00),
(4, '2024-11-04', 1800.00),
(5, '2024-11-05', 2100.00);

INSERT INTO detalle_venta (id_venta, id_instrumento, cantidad, precio_venta) VALUES
(1, 1, 1, 1200.00),
(1, 3, 1, 1000.00),
(2, 2, 1, 1500.00),
(2, 4, 1, 100.00),
(3, 5, 1, 2500.00),
(4, 1, 1, 600.00),
(4, 2, 1, 1200.00),
(5, 3, 1, 800.00),
(5, 4, 1, 600.00),
(5, 5, 1, 2500.00);