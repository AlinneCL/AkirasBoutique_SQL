--CONSULTA AKIARAS BOUTIQUES

-- 1. Cantidad de clientes en el año 2021

SELECT COUNT(DISTINCT f.id_cliente) AS Clientes_2021
FROM factura f
WHERE YEAR(f.fecha) = 2021;


-- 2. Cantidad de clientes en el año 2022 (hasta la fecha)

SELECT COUNT(DISTINCT f.id_cliente) AS Clientes_2022
FROM factura f
WHERE YEAR(f.fecha) = 2022;



-- 3. Clientes que compraron en diciembre de 2021

SELECT DISTINCT 
    CAST(c.id_cliente AS INT) AS id_cliente,
    CAST(c.nombre AS VARCHAR(100)) AS nombre,
    CAST(c.apellido AS VARCHAR(100)) AS apellido
FROM cliente c
JOIN factura f ON c.id_cliente = f.id_cliente
WHERE YEAR(f.fecha) = 2021 AND MONTH(f.fecha) = 12;


-- 4. Compras realizadas por clientes específicos

SELECT 
    CAST(c.nombre AS VARCHAR(100)) + ' ' + CAST(c.apellido AS VARCHAR(100)) AS Cliente,
    f.fecha,
    CAST(p.nombre AS VARCHAR(100)) AS Producto,
    d.cantidad
FROM cliente c
JOIN factura f ON c.id_cliente = f.id_cliente
JOIN detalle d ON f.id_detalle = d.id_detalle
JOIN producto p ON d.id_producto = p.id_producto
WHERE 
    CAST(c.nombre AS VARCHAR(100)) + ' ' + CAST(c.apellido AS VARCHAR(100)) IN (
        'Valentina Anastasia Huerta Corral',
        'Zayra Manuela Gómez López',
        'Dante Eduardo Dolores Meza',
        'Ana Maribel Cedillo Núñez',
        'Rodrigo Ismael Silva Ugarte'
    );



-- 5. Producto con más ventas

SELECT TOP 1 
    CAST(p.nombre AS VARCHAR(100)) AS Producto, 
    SUM(d.cantidad) AS Total_Vendido
FROM detalle d
JOIN producto p ON d.id_producto = p.id_producto
GROUP BY CAST(p.nombre AS VARCHAR(100))
ORDER BY Total_Vendido DESC;


-- 6. Producto con más stock

SELECT TOP 1 nombre AS Producto, stock
FROM producto
ORDER BY stock DESC;



-- 7. Compras ordenadas por fecha (más antiguas primero)

SELECT 
    f.id_factura, 
    f.fecha, 
    CAST(c.nombre AS VARCHAR(100)) + ' ' + CAST(c.apellido AS VARCHAR(100)) AS Cliente
FROM factura f
JOIN cliente c ON f.id_cliente = c.id_cliente
ORDER BY f.fecha ASC;


-- 8. Clientes ordenados alfabéticamente

SELECT 
    CAST(nombre AS VARCHAR(100)) + ' ' + CAST(apellido AS VARCHAR(100)) AS Cliente
FROM cliente
ORDER BY Cliente ASC;



-- 9. Productos por categoría 

SELECT 
    CAST(c.nombre AS VARCHAR(100)) AS Categoria, 
    COUNT(p.id_producto) AS Total
FROM producto p
JOIN categoria c ON p.id_categoria = c.id_categoria
WHERE CAST(c.nombre AS VARCHAR(100)) IN ('Falda', 'Pantalón', 'Chamarra', 'Zapato', 'Accesorios')
GROUP BY CAST(c.nombre AS VARCHAR(100));


-- 10. Encargados de cada sucursal

SELECT IdSucursal, NombreSucursal, Encargado
FROM Sucursales;



-- 11. Empleados de la sucursal Constitución

SELECT e.Nombre, e.Email, s.NombreSucursal
FROM Empleados e
JOIN Sucursales s ON e.IdSucursal = s.IdSucursal
WHERE s.NombreSucursal LIKE '%Constitución%';



-- 12. Clientes mayores de 30 años (fecha funciona, pero para mostrar nombre)

SELECT 
    CAST(nombre AS VARCHAR(100)) AS nombre, 
    CAST(apellido AS VARCHAR(100)) AS apellido,
    fec_nac,
    DATEDIFF(YEAR, fec_nac, GETDATE()) AS Edad
FROM cliente
WHERE DATEDIFF(YEAR, fec_nac, GETDATE()) > 30;









