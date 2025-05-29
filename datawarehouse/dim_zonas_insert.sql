
-- Sentencias SQL para la carga de datos en la tabla Dim_Zonas
-- correspondiente a los tipos de zonas a partir de la tabla Dl_Homicidios del DataLakeHomicidios

INSERT INTO DataWareHouse.dbo.dim_zonas
(NomZona)
SELECT DISTINCT ZONA
FROM DataLakeHomicidios.dbo.dl_homicidios
ORDER BY ZONA
