
-- Sentencias SQL para la carga de datos en la tabla Dim_Meses
-- correspondiente a la forma corta de los nombres de cada mes del año

INSERT INTO DataWareHouse.dbo.dim_meses
(NomMes, NomCortoMes)
VALUES
('Enero', 'ENE'),
('Febrero', 'FEB'),
('Marzo', 'MAR'),
('Abril', 'ABR'),
('Mayo', 'MAY'),
('Junio', 'JUN'),
('Julio', 'JUL'),
('Agosto', 'AGO'),
('Septiembre', 'SEP'),
('Octubre', 'OCT'),
('Noviembre', 'NOV'),
('Diciembre', 'DIC')