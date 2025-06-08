USE AkirasBoutiques;
GO

-- CREACI�N DE LA TABLA SUCURSALES
CREATE TABLE Sucursales (
    IdSucursal INT PRIMARY KEY,
    NombreSucursal VARCHAR(100),
    Encargado VARCHAR(100),
    Direccion VARCHAR(200),
    Telefono VARCHAR(15),
    Ciudad VARCHAR(50),
    Estado VARCHAR(50)
);

-- INSERCI�N DE DATOS EN SUCURSALES
INSERT INTO Sucursales VALUES 
(1, 'Akira�s Boutique: Las Mercedes', 'Sonia Alejandra Fern�ndez Moreno', 'Calle Roble #507 Fracc. Las Mercedes', '4447831225', 'San Luis Potos�', 'San Luis Potos�'),
(2, 'Akira�s Boutique: Obraje', 'Fernando Calder�n Ayala', 'Calle Dr. Jes�s D�az de Le�n #438 col. Obraje', '4493780921', 'Aguascalientes', 'Aguascalientes'),
(3, 'Akira�s Boutique: Galer�as Mazatl�n', 'Daniela Fernanda D�az Ordaz', 'Av. de la Marina #6204, Marina, local 35', '6692932059', 'Mazatl�n', 'Sinaloa'),
(4, 'Akira�s Boutique: Zapopan', 'Mario Alberto Jim�nez Salcido', 'Av. Manuel J. Clouthier 525 col. Benito Ju�rez', '3337841230', 'Zapopan', 'Jalisco'),
(5, 'Akira�s Boutique: Melchor', 'Yesenia Guadalupe Campos Rojo', 'Av. Melchor Ocampo #2528 Zona Centro', '6143906721', 'Chihuahua', 'Chihuahua'),
(6, 'Akira�s Boutique: Constituci�n', 'Tamara Alejandra Bernal Ramos', 'Calle Constituci�n #106 Zona Centro', '6181962954', 'Durango', 'Durango'),
(7, 'Akira�s Boutique: Centro', 'Samuel Enrique Barrios Enciso', 'Av. Hidalgo #338 Zacatecas Centro', '4929301250', 'Zacatecas', 'Zacatecas');



---- CREACI�N DE LA EMPLEADOS 
CREATE TABLE Empleados (
    IdEmpleado INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100),
    Direccion VARCHAR(200),
    Telefono VARCHAR(15),
    Edad INT,
    Email VARCHAR(100),
    Contrasena VARCHAR(50),
    IdSucursal INT,
    Encargado VARCHAR(100),
    FOREIGN KEY (IdSucursal) REFERENCES Sucursales(IdSucursal)
);

-- SUCURSAL 1: LAS MERCEDES
INSERT INTO Empleados (Nombre, Direccion, Telefono, Edad, Email, Contrasena, IdSucursal, Encargado) VALUES
('Ana L�pez', 'Calle Fresno #12', '4441234567', 28, 'ana.lopez@akiras.com', 'ana123', 1, 'Sonia Alejandra Fern�ndez Moreno'),
('Luis P�rez', 'Privada Olmo #23', '4442345678', 32, 'luis.perez@akiras.com', 'luis456', 1, 'Sonia Alejandra Fern�ndez Moreno'),
('Marta G�mez', 'Av. Las Rosas #10', '4443456789', 26, 'marta.gomez@akiras.com', 'marta789', 1, 'Sonia Alejandra Fern�ndez Moreno'),
('Pedro S�nchez', 'Calle Roble #501', '4444567890', 30, 'pedro.sanchez@akiras.com', 'pedro000', 1, 'Sonia Alejandra Fern�ndez Moreno'),
('Luc�a Morales', 'Col. Las Flores #9', '4445678901', 27, 'lucia.morales@akiras.com', 'lucia321', 1, 'Sonia Alejandra Fern�ndez Moreno'),
('Fernanda Leal', 'Calle Olmo #3', '4446789012', 29, 'fernanda.leal@akiras.com', 'fernanda22', 1, 'Sonia Alejandra Fern�ndez Moreno');

-- SUCURSAL 2: OBRAJE
INSERT INTO Empleados VALUES
('Carlos Herrera', 'Calle Obraje #101', '4491112233', 29, 'carlos.herrera@akiras.com', 'carloz22', 2, 'Fernando Calder�n Ayala'),
('Beatriz Mu�oz', 'Col. Centro #55', '4491223344', 31, 'beatriz.munoz@akiras.com', 'beat321', 2, 'Fernando Calder�n Ayala'),
('Jorge Ram�rez', 'Av. Universidad #9', '4491334455', 27, 'jorge.ramirez@akiras.com', 'jorge987', 2, 'Fernando Calder�n Ayala'),
('Sara Castillo', 'Calle Reforma #20', '4491445566', 24, 'sara.castillo@akiras.com', 'sara2020', 2, 'Fernando Calder�n Ayala'),
('Tom�s Aguilar', 'Col. Obraje #3', '4491556677', 33, 'tomas.aguilar@akiras.com', 'tomas0101', 2, 'Fernando Calder�n Ayala'),
('Alejandro Torres', 'Col. Obraje #7', '4491667788', 33, 'alejandro.torres@akiras.com', 'aleto33', 2, 'Fernando Calder�n Ayala');

-- SUCURSAL 3: GALERIAS MAZATLAN
INSERT INTO Empleados VALUES
('Mar�a Rivas', 'Av. del Mar #25', '6691010101', 26, 'maria.rivas@akiras.com', 'mrivas88', 3, 'Daniela Fernanda D�az Ordaz'),
('David Beltr�n', 'Zona Dorada #33', '6692020202', 30, 'david.beltran@akiras.com', 'dbel2023', 3, 'Daniela Fernanda D�az Ordaz'),
('Elena Valdez', 'Col. Centro #12', '6693030303', 28, 'elena.valdez@akiras.com', 'evaldz45', 3, 'Daniela Fernanda D�az Ordaz'),
('Oscar Luna', 'Marina Alta #9', '6694040404', 35, 'oscar.luna@akiras.com', 'oluna001', 3, 'Daniela Fernanda D�az Ordaz'),
('Camila M�rquez', 'Calle Coral #18', '6695050505', 25, 'camila.marquez@akiras.com', 'cmz852', 3, 'Daniela Fernanda D�az Ordaz'),
('Renata Flores', 'Zona Marina #6', '6696060606', 26, 'renata.flores@akiras.com', 'renflo88', 3, 'Daniela Fernanda D�az Ordaz');

-- SUCURSAL 4: ZAPOPAN
INSERT INTO Empleados VALUES
('Sof�a V�zquez', 'Av. Ju�rez #14', '3331010101', 27, 'sofia.vazquez@akiras.com', 'sofi412', 4, 'Mario Alberto Jim�nez Salcido'),
('Rodrigo Navarro', 'Col. Benito Ju�rez #60', '3332020202', 34, 'rodrigo.navarro@akiras.com', 'rnava123', 4, 'Mario Alberto Jim�nez Salcido'),
('Adriana Ponce', 'Zona Centro #4', '3333030303', 29, 'adriana.ponce@akiras.com', 'aponce789', 4, 'Mario Alberto Jim�nez Salcido'),
('H�ctor D�az', 'Clouthier Norte #89', '3334040404', 31, 'hector.diaz@akiras.com', 'hdiaz22', 4, 'Mario Alberto Jim�nez Salcido'),
('Natalia Salas', 'Av. Vallarta #222', '3335050505', 26, 'natalia.salas@akiras.com', 'nsalas14', 4, 'Mario Alberto Jim�nez Salcido'),
('Cristian Lozano', 'Clouthier Sur #15', '3336060606', 30, 'cristian.lozano@akiras.com', 'clozano55', 4, 'Mario Alberto Jim�nez Salcido');

-- SUCURSAL 5: MELCHOR
INSERT INTO Empleados VALUES
('Iv�n Reyes', 'Av. Melchor #5', '6141010101', 32, 'ivan.reyes@akiras.com', 'ivanx77', 5, 'Yesenia Guadalupe Campos Rojo'),
('Daniela Cruz', 'Zona Centro #21', '6142020202', 29, 'daniela.cruz@akiras.com', 'dcruz654', 5, 'Yesenia Guadalupe Campos Rojo'),
('Erick Montoya', 'Col. Industrial #44', '6143030303', 28, 'erick.montoya@akiras.com', 'emontoya89', 5, 'Yesenia Guadalupe Campos Rojo'),
('Alejandra Molina', 'Barrio Nuevo #6', '6144040404', 27, 'ale.molina@akiras.com', 'amoli22', 5, 'Yesenia Guadalupe Campos Rojo'),
('Rub�n Garc�a', 'Av. 20 de Noviembre #90', '6145050505', 33, 'ruben.garcia@akiras.com', 'ruben12', 5, 'Yesenia Guadalupe Campos Rojo'),
('Valeria Mendoza', 'Zona Centro #99', '6146060606', 28, 'valeria.mendoza@akiras.com', 'valmen11', 5, 'Yesenia Guadalupe Campos Rojo');

-- SUCURSAL 6: CONSTITUCION
INSERT INTO Empleados VALUES
('Patricia Torres', 'Calle Constituci�n #1', '6181010101', 30, 'patricia.torres@akiras.com', 'ptorr33', 6, 'Tamara Alejandra Bernal Ramos'),
('Esteban Soto', 'Zona Centro #10', '6182020202', 31, 'esteban.soto@akiras.com', 'esoto88', 6, 'Tamara Alejandra Bernal Ramos'),
('Liliana Ortega', 'Col. Centro #7', '6183030303', 26, 'liliana.ortega@akiras.com', 'lortega99', 6, 'Tamara Alejandra Bernal Ramos'),
('Carlos Vela', 'Av. Constituci�n #12', '6184040404', 34, 'carlos.vela@akiras.com', 'cvela77', 6, 'Tamara Alejandra Bernal Ramos'),
('Marcela Jim�nez', 'Barrio Antiguo #2', '6185050505', 25, 'marcela.jimenez@akiras.com', 'mjime66', 6, 'Tamara Alejandra Bernal Ramos');

-- SUCURSAL 7: CENTRO
INSERT INTO Empleados VALUES
('Gabriel Ruiz', 'Av. Hidalgo #100', '4921010101', 28, 'gabriel.ruiz@akiras.com', 'gruiz01', 7, 'Samuel Enrique Barrios Enciso'),
('Cintia Delgado', 'Zacatecas Centro #3', '4922020202q', 32, 'cintia.delgado@akiras.com', 'cdelgado', 7, 'Samuel Enrique Barrios Enciso'),
('Juan Carlos Meza', 'Col. Reforma #8', '4923030303', 29, 'juan.mez@akiras.com', 'jcmez04', 7, 'Samuel Enrique Barrios Enciso'),
('Alma Rodr�guez', 'Zona Centro #14', '4924040404', 27, 'alma.rodriguez@akiras.com', 'arod25', 7, 'Samuel Enrique Barrios Enciso'),
('Felipe Morales', 'Centro Hist�rico #55', '4925050505', 35, 'felipe.morales@akiras.com', 'fmorales', 7, 'Samuel Enrique Barrios Enciso');

-- CONSULTAS SELECT


-- 1. Ver todos los empleados ordenados por sucursal.

SELECT IdEmpleado, Nombre, Edad, Email, IdSucursal, Encargado
FROM Empleados
ORDER BY IdSucursal, Nombre;

-- 2. Contar cu�ntos empleados hay por sucursal.
SELECT IdSucursal, COUNT(*) AS TotalEmpleados
FROM Empleados
GROUP BY IdSucursal;


-- 3. Ver empleados agrupados por encargado de sucursal.

SELECT Encargado, COUNT(*) AS EmpleadosAsignados
FROM Empleados
GROUP BY Encargado;

-- 4. Mostrar empleados junto con el nombre de su sucursal. 

SELECT 
    E.Nombre AS Empleado,
    E.Email,
    S.NombreSucursal,
    S.Ciudad,
    S.Estado
FROM Empleados E
JOIN Sucursales S ON E.IdSucursal = S.IdSucursal
ORDER BY S.NombreSucursal;

-- 5. Empleados mayores de 30 a�os.

SELECT IdEmpleado, Nombre, Edad, IdSucursal
FROM Empleados
WHERE Edad > 30
ORDER BY Edad DESC;

