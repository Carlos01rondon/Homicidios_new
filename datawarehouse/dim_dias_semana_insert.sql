
-- Sentencias SQL para la carga de datos en la tabla Dim_Dias_Semana
-- correspondientes a los nombres de los días de la semana de forma corta

INSERT INTO DataWareHouse.dbo.dim_dias_semana
(NomDiaSemana, NomCortoDiaSemana)
VALUES
('Lunes', 'LUN'),
('Martes', 'MAR'),
('Miércoles', 'MIE'),
('Jueves', 'JUE'),
('Viernes', 'VIE'),
('Sábado', 'SAB'),
('Domingo', 'DOM')
