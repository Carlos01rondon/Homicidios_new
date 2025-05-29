--- Explicación:
-- OBJECT_ID('dbo.DIM_Departamentos', 'U'): Verifica si existe un objeto de tipo tabla ('U' para "User Table") con ese nombre.
-- Si OBJECT_ID devuelve NULL, la tabla no existe, por lo que se ejecuta la instrucción CREATE TABLE.

IF OBJECT_ID('dbo.DIM_Departamentos', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.DIM_Departamentos (
		CodDpto tinyint NOT NULL,
		NomDpto nvarchar(60) NOT NULL,
		Latitud float NOT NULL,
		Longitud float NOT NULL,
		CONSTRAINT DIM_Departamentos_PK PRIMARY KEY (CodDpto)
	);


dim_departamentos_insert.sql

-- Sentencias SQL para la carga de los datos en la Tabla Dim_Departamentos

INSERT INTO DataWareHouse.dbo.dim_departamentos
(CodDpto, NomDpto, Latitud, Longitud)
SELECT COD_DPTO, NOM_DPTO, LATITUD, LONGITUD
FROM DataLake.dbo.DL_Departamentos
