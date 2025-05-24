-- DataLake.dbo.DL_Municipios definition

-- Drop table

-- DROP TABLE DataLake.dbo.DL_Municipios;

CREATE TABLE DataLake.dbo.DL_Municipios (
	COD_DPTO tinyint NULL,
	NOM_DPTO nvarchar(60) NULL,
	COD_MPIO int NULL,
	NOM_MPIO nvarchar(30) NULL,
	TIPO nvarchar(25) NULL,
	LATITUD float NULL,
	LONGITUD float NULL,
	GeoMunicipio nvarchar(40) NULL
);