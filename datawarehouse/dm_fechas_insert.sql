-- Sentencias SQL para la carga de los datos en la tabla Dm_Fechas
-- Determinando como primer dia de la semana el Lunes
-- A partir de los datos de la tabla Dl_Homicidios del DataLakeHomicidios

SET DATEFIRST 1;

INSERT INTO DataWareHouse.dbo.dm_fechas
(FechaHecho, Annio, Mes, Dia, DiaSemana, Semana, Trimestre)
SELECT DISTINCT FECHA_HECHO, YEAR(FECHA_HECHO), MONTH(FECHA_HECHO), DAY(FECHA_HECHO), DATEPART(WEEKDAY, FECHA_HECHO), DATEPART(WEEK, FECHA_HECHO) , DATEPART(QUARTER, FECHA_HECHO) 
FROM DataLakeHomicidios.dbo.dl_homicidios
ORDER BY FECHA_HECHO;

