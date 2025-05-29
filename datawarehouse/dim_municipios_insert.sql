
-- Sentencias SQL para la carga de datos en la tabla Dim_Municipios

INSERT INTO DataWareHouse.dbo.dim_municipios
(CodMpio, CodDpto, NomMpio, Latitud, Longitud)
SELECT COD_MPIO, COD_DPTO, NOM_MPIO, LATITUD, LONGITUD
FROM DataLakeHomicidios.dbo.dl_municipios
