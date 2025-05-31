-- DataWareHouse.dbo.dim_zonas definition
-- Tomado del DDL Sentencias SQL para la creación de la tabla dim_zonas

CREATE TABLE DataWareHouse.dbo.dim_zonas (
	IdZobna tinyint IDENTITY(1,1) NOT NULL,
	NomZona nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT dim_zonas_pk PRIMARY KEY (IdZobna)
);

