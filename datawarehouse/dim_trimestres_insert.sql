-- Sentencias SQL para la carga de datos en la tabla Dim_Trimestres
-- correspondiente a los nombres de cada trimestre

INSERT INTO DataWareHouse.dbo.dim_trimestres
(NomTrimestre, NomCortoTrimestre)
VALUES
('Trimestre 1', 'TRIM 1'),
('Trimestre 2', 'TRIM 2'),
('Trimestre 3', 'TRIM 3'),
('Trimestre 4', 'TRIM 4')

