-- DataWareHouse.dbo.dim_sexos definition
-- Tomado del DDL Sentencias SQL para la creación de la tabla dim_sexos

CREATE TABLE DataWareHouse.dbo.dim_sexos (
	IdSexo tinyint IDENTITY(1,1) NOT NULL,
	NomSexo nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT dim_sexos_pk PRIMARY KEY (IdSexo)
);

