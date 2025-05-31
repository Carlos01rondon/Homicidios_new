
-- Sentencias SQL para la carga de los datos en la Tabla Dim_Departamentos

INSERT INTO DataWareHouse.dbo.dim_departamentos
(CodDpto, NomDpto, Latitud, Longitud)
SELECT COD_DPTO, NOM_DPTO, LATITUD, LONGITUD
FROM DataLake.dbo.DL_Departamentos
