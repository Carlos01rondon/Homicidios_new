-- DataWareHouse.dbo.fact_homicidios definition
-- Tomado del DDL Sentencias SQL para la creación de la tabla fact_homicidios

CREATE TABLE DataWareHouse.dbo.fact_homicidios (
	IdHomicidio int IDENTITY(1,1) NOT NULL,
	FechaHecho date NOT NULL,
	CodMpio int NOT NULL,
	IdZobna tinyint NOT NULL,
	IdSexo tinyint NOT NULL,
	Cantidad tinyint NOT NULL,
	CONSTRAINT fact_homicidios_pk PRIMARY KEY (IdHomicidio),
	CONSTRAINT fact_homicidios_dim_municipios_FK FOREIGN KEY (CodMpio) REFERENCES DataWareHouse.dbo.dim_municipios(CodMpio),
	CONSTRAINT fact_homicidios_dim_sexos_FK FOREIGN KEY (IdSexo) REFERENCES DataWareHouse.dbo.dim_sexos(IdSexo),
	CONSTRAINT fact_homicidios_dim_zonas_FK FOREIGN KEY (IdZobna) REFERENCES DataWareHouse.dbo.dim_zonas(IdZobna),
	CONSTRAINT fact_homicidios_dm_fechas_FK FOREIGN KEY (FechaHecho) REFERENCES DataWareHouse.dbo.dm_fechas(FechaHecho)
);

