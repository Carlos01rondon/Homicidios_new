-- Sentencias SQL para la carga de los datos a la tabla Dim_Sexos
-- a partir de la información almacenada en la tabla Dl.Homicidios del DataLakeHomicidios

INSERT INTO DataWareHouse.dbo.dim_sexos
(NomSexo)
SELECT DISTINCT SEXO
FROM DataLakeHomicidios.dbo.dl_homicidios
ORDER BY SEXO
