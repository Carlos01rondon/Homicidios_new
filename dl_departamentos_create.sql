-- DataLake.dbo.DL_Departamentos definition

-- Drop table

-- DROP TABLE DataLake.dbo.DL_Departamentos;

CREATE TABLE DataLake.dbo.DL_Departamentos (
	COD_DPTO tinyint NULL,
	NOM_DPTO nvarchar(60) NULL,
	LATITUD float NULL,
	LONGITUD float NULL,
	GeoDepartamento nvarchar(35) NULL
);