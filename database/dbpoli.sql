-- Creación de table
CREATE TABLE public."HrBitPed" (
	PAIS int4 NOT NULL,
	stamp_fecha date NOT NULL,
	tasa float,
	usuario varchar(8),
	Nacional_NDocumentos int4,
	Nacional_Kilos float,
	Nacional_UnidadesE int4,
	Nacional_Valor money,
	Exterior_NDocumentos int4,
	Exterior_Kilos float,
	Exterior_UnidadesE int4,
	Exterior_Valor money,
	ProformasN_NDocumentos int4,
	ProformasN_Kilos float,
	ProformasN_UnidadesE int4,
	ProformasN_Valor money,
	ProformasE_NDocumentos int4,
	ProformasE_Kilos float,
	ProformasE_UnidadesE int4,
	ProformasE_Valor money,
	CONSTRAINT hrbitped_pk PRIMARY KEY (PAIS, stamp_fecha)
); --header
CREATE INDEX IF NOT EXISTS "si_Fecha" ON public."HrBitPed"("stamp_fecha");



-- Insertar registros de prueba en la BD
INSERT INTO public."HrBitPed" (pais, stamp_fecha, tasa, usuario, nacional_ndocumentos, nacional_kilos, nacional_unidadese, nacional_valor, exterior_ndocumentos, exterior_kilos, exterior_unidadese, exterior_valor, proformasn_ndocumentos, proformasn_kilos, proformasn_unidadese, proformasn_valor, proformase_ndocumentos, proformase_kilos, proformase_unidadese, proformase_valor)
VALUES
  (0, '2023-11-03', 1.5, 'Usuario1', 100, 200.5, 5, 500.99, 50, 100.25, 2, 300.75, 75, 150.8, 4, 400.65, 25, 50.75, 1, 125.45),
  (1, '2023-11-04', 1.6, 'Usuario2', 110, 210.75, 6, 520.75, 55, 105.6, 3, 320.55, 80, 160.2, 5, 430.9, 30, 55.25, 1, 129.75),
  (2, '2023-11-05', 1.7, 'Usuario3', 120, 220.9, 7, 530.85, 60, 110.3, 4, 340.95, 85, 170.4, 6, 450.35, 35, 60.5, 2, 135.2),
  (3, '2023-11-06', 1.8, 'Usuario4', 130, 230.6, 8, 540.45, 65, 115.1, 5, 360.2, 90, 180.5, 7, 470.1, 40, 65.75, 2, 140.6),
  (4, '2023-11-07', 1.9, 'Usuario5', 140, 240.2, 9, 550.25, 70, 120.8, 6, 380.75, 95, 190.7, 8, 490.8, 45, 70.85, 3, 145.9);