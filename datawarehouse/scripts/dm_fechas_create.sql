
-- DataWareHouse.dbo.dm_fechas definition
-- Tomado del DDL Sentencias SQL para la creación de la tabla dim_fechass

CREATE TABLE DataWareHouse.dbo.dm_fechas (
	Annio int NOT NULL,
	Mes tinyint NOT NULL,
	Dia tinyint NOT NULL,
	Semana tinyint NOT NULL,
	Trimestre tinyint NOT NULL,
	DiaSemana tinyint NOT NULL,
	FechaHecho date NOT NULL,
	CONSTRAINT dm_fechas_pk PRIMARY KEY (FechaHecho),
	CONSTRAINT dm_fechas_dim_dias_semana_FK FOREIGN KEY (DiaSemana) REFERENCES DataWareHouse.dbo.dim_dias_semana(DiaSemana),
	CONSTRAINT dm_fechas_dim_meses_FK FOREIGN KEY (Mes) REFERENCES DataWareHouse.dbo.dim_meses(Mes),
	CONSTRAINT dm_fechas_dim_trimestres_FK FOREIGN KEY (Trimestre) REFERENCES DataWareHouse.dbo.dim_trimestres(Trimestre)
);

