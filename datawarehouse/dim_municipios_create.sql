-- DataWareHouse.dbo.dim_municipios definition
-- Tomado del DDL Sentencias SQL para la creación de la tabla dim_municipios

CREATE TABLE DataWareHouse.dbo.dim_municipios (
	CodDpto tinyint NOT NULL,
	CodMpio int NOT NULL,
	NomMpio nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Latitud float NOT NULL,
	Longitud float NOT NULL,
	CONSTRAINT dim_municipios_pk PRIMARY KEY (CodMpio),
	CONSTRAINT dim_municipios_dim_departamentos_FK FOREIGN KEY (CodDpto) REFERENCES DataWareHouse.dbo.dim_departamentos(CodDpto)
);')