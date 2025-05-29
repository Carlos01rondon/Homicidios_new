-- DataWareHouse.dbo.dim_dias_semana definición
-- Tomado del DDL Sentencias SQL para la creación de la tabla dim_dias_semana

CREATE TABLE DataWareHouse.dbo.dim_dias_semana (
	DiaSemana tinyint IDENTITY(1,1) NOT NULL,
	NomDiaSemana nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	NomCortoDiaSemana char(3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT DIM_Dias_Semana_PK PRIMARY KEY (DiaSemana)
);