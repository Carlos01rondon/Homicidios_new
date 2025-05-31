-- Sentencias SQL para la carga de los datos en la tabla Fact_Homicidios
-- a partir de los datos contenidos en las tablas Dim_Zonas, Dim_Sexos del DataWareHouse y de la tabla Dl_Homicidios del DataLakeHomicidios

INSERT INTO DataWareHouse.dbo.fact_homicidios
(FechaHecho, CodMpio, IdZobna, IdSexo, Cantidad)
SELECT FECHA_HECHO
	, COD_MUNI
	, (SELECT IdZobna FROM DataWareHouse.dbo.DIM_Zonas WHERE NomZona = H.ZONA)
	, (SELECT IdSexo FROM DataWareHouse.dbo.DIM_Sexos WHERE NomSexo = H.SEXO)
	, CANTIDAD
FROM DataLakeHomicidios.dbo.dl_homicidios AS H