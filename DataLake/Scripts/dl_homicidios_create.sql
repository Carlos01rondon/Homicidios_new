-- DataLake.dbo.DL_Homicidios definition

-- Drop table

-- DROP TABLE DataLake.dbo.DL_Homicidios;

CREATE TABLE DataLake.dbo.DL_Homicidios (
	FECHA_HECHO date NULL,
	COD_DEPTO tinyint NULL,
	DEPARTAMENTO nvarchar(60) NULL,
	COD_MUNI int NULL,
	MUNICIPIO nvarchar(30) NULL,
	ZONA nvarchar(10) NULL,
	SEXO nvarchar(20) NULL,
	CANTIDAD tinyint NULL
);