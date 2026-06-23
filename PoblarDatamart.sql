--- DIM_FECHA
INSERT INTO DIM_FECHA
(
    fecha,
    anio,
    mes,
    nombre_mes,
    trimestre,
    dia,
    dia_semana,
    fin_semana
)
SELECT DISTINCT
    FECHA,
    YEAR(FECHA),
    MONTH(FECHA),
    DATENAME(MONTH, FECHA),
    DATEPART(QUARTER, FECHA),
    DAY(FECHA),
    DATENAME(WEEKDAY, FECHA),
    CASE
        WHEN DATEPART(WEEKDAY, FECHA) IN (1,7)
        THEN 'SI'
        ELSE 'NO'
    END
FROM (
    SELECT [FECHA] FECHA FROM personas
    UNION
    SELECT [FECHA SINIESTRO] FROM siniestros
    UNION
    SELECT [FECHA] FROM vehiculos
) X;

SELECT * FROM DIM_FECHA

--- DIM_UBICACION
INSERT INTO DIM_UBICACION
(
    departamento,
    provincia,
    distrito,
    ubicacion,
    codigo_carretera,
    red_vial
)
SELECT DISTINCT
    [DEPARTAMENTO],
    [PROVINCIA],
    [DISTRITO],
    [UBICACION],
    [COD CARRETERA],
    [RED VIAL]
FROM siniestros;

SELECT * FROM DIM_UBICACION

--- DIM_VIA
INSERT INTO DIM_VIA
(
    tipo_via,
    superficie_calzada,
    caracteristicas_via,
    perfil_longitudinal
)
SELECT DISTINCT
    [TIPO DE VÍA],
    [SUPERFICIE DE CALZADA],
    [CARACTERÍSTICAS DE VÍA],
    [PERFIL LONGITUDINAL VÍA]
FROM siniestros;

SELECT * FROM DIM_VIA

--- DIM_CLIMA
INSERT INTO DIM_CLIMA
(
    condicion_climatica,
    zonificacion
)
SELECT DISTINCT
    [CONDICIÓN CLIMÁTICA],
    [ZONIFICACIÓN]
FROM siniestros;

SELECT * FROM DIM_CLIMA

--- DIM_SENALIZACION
INSERT INTO DIM_SENALIZACION
(
    existe_senal_vertical,
    clasificacion_senal_1,
    clasificacion_senal_2,
    existe_senal_horizontal
)
SELECT DISTINCT
    [¿EXISTE SEÑAL VERTICAL?],
    [CLASIFICACIÓN DE LA SEÑAL VERTICAL Nº 1],
    [CLASIFICACIÓN DE LA SEÑAL VERTICAL Nº 2],
    [¿EXISTE SEÑAL HORIZONTAL?]
FROM siniestros;

SELECT * FROM DIM_SENALIZACION

--- DIM_CAUSA
INSERT INTO DIM_CAUSA
(
    causa_principal,
    causa_especifica
)
SELECT DISTINCT
    [CAUSA FACTOR PRINCIPAL],
    [CAUSA ESPECÍFICA]
FROM siniestros;

SELECT * FROM DIM_CAUSA

--- DIM_PERSONA
INSERT INTO DIM_PERSONA
(
    tipo_persona,
    sexo,
    edad,
    rango_edad
)
SELECT DISTINCT
    [TIPO PERSONA],
    [SEXO],
    [EDAD],
    CASE
        WHEN EDAD < 18 THEN 'Menor'
        WHEN EDAD BETWEEN 18 AND 29 THEN '18-29'
        WHEN EDAD BETWEEN 30 AND 59 THEN '30-59'
        ELSE '60+'
    END
FROM personas;

SELECT * FROM DIM_PERSONA

--- DIM_GRAVEDAD
INSERT INTO DIM_GRAVEDAD
(
    gravedad
)
SELECT DISTINCT
    [GRAVEDAD]
FROM personas;

SELECT * FROM DIM_GRAVEDAD

--- DIM_LICENCIA
INSERT INTO DIM_LICENCIA
(
    posee_licencia,
    estado_licencia,
    clase_licencia
)
SELECT DISTINCT
    [POSEE LICENCIA],
    [ESTADO LICENCIA],
    [CLASE_LICENCIA]
FROM personas;

SELECT * FROM DIM_LICENCIA

--- DIM_DOSAJE
INSERT INTO DIM_DOSAJE
(
    sometio_dosaje_cualitativo,
    resultado_dosaje_cualitativo,
    sometio_dosaje_cuantitativo
)
SELECT DISTINCT
    [¿SE SOMETIÓ A DOSAJE ETÍLICO CUALITATIVO?],
    [RESULTADO DEL DOSAJE ETÍLICO CUALITATIVO],
    [¿SE SOMETIÓ A DOSAJE ETÍLICO CUANTITATIVO?]
FROM personas;

SELECT * FROM DIM_DOSAJE

--- DIM_VEHICULO
INSERT INTO DIM_VEHICULO
(
    vehiculo
)
SELECT DISTINCT
    [VEHÍCULO]
FROM vehiculos;

SELECT * FROM DIM_VEHICULO

--- DIM_MODALIDAD_TRANSPORTE
INSERT INTO DIM_MODALIDAD_TRANSPORTE
(
    estado_modalidad,
    modalidad_transporte,
    ambito_servicio
)
SELECT DISTINCT
    [ESTADO MODALIDAD],
    [MODALIDAD DE TRANSPORTE],
    [AMBITO SERVICIO]
FROM vehiculos;

SELECT * FROM DIM_MODALIDAD_TRANSPORTE

--- DIM_SEGURIDAD_VEHICULO
INSERT INTO DIM_SEGURIDAD_VEHICULO
(
    posee_seguro,
    estado_soat,
    tipo_seguro,
    posee_citv,
    estado_citv
)
SELECT DISTINCT
    [POSEE SEGURO],
    [ESTADO SOAT],
    [TIPO SEGURO],
    [POSEE CITV],
    [ESTADO CITV]
FROM vehiculos;

SELECT * FROM DIM_SEGURIDAD_VEHICULO

--- FACT_SINIESTROS
INSERT INTO FACT_SINIESTROS
(
    codigo_siniestro,
    id_fecha,
    id_ubicacion,
    id_via,
    id_causa,
    id_clima,
    id_senalizacion,
    cantidad_fallecidos,
    cantidad_lesionados,
    cantidad_vehiculos_danados,
    total_siniestros
)
SELECT
    s.[CÓDIGO SINIESTRO],

    df.id_fecha,
    du.id_ubicacion,
    dv.id_via,
    dc.id_causa,
    dcl.id_clima,
    ds.id_senalizacion,

    s.[CANTIDAD DE FALLECIDOS],
    s.[CANTIDAD DE LESIONADOS],
    s.[CANTIDAD DE VEHICULOS DAÑADOS],

    1 AS total_siniestros

FROM siniestros s

INNER JOIN DIM_FECHA df
    ON df.fecha = s.[FECHA SINIESTRO]

INNER JOIN DIM_UBICACION du
    ON ISNULL(du.departamento,'') = ISNULL(s.[DEPARTAMENTO],'')
    AND ISNULL(du.provincia,'') = ISNULL(s.[PROVINCIA],'')
    AND ISNULL(du.distrito,'') = ISNULL(s.[DISTRITO],'')
    AND ISNULL(du.ubicacion,'') = ISNULL(s.[UBICACION],'')
    AND ISNULL(du.codigo_carretera,'') = ISNULL(s.[COD CARRETERA],'')
    AND ISNULL(du.red_vial,'') = ISNULL(s.[RED VIAL],'')

INNER JOIN DIM_VIA dv
    ON ISNULL(dv.tipo_via,'') = ISNULL(s.[TIPO DE VÍA],'')
    AND ISNULL(dv.superficie_calzada,'') = ISNULL(s.[SUPERFICIE DE CALZADA],'')
    AND ISNULL(dv.caracteristicas_via,'') = ISNULL(s.[CARACTERÍSTICAS DE VÍA],'')
    AND ISNULL(dv.perfil_longitudinal,'') = ISNULL(s.[PERFIL LONGITUDINAL VÍA],'')

INNER JOIN DIM_CAUSA dc
    ON ISNULL(dc.causa_principal,'') = ISNULL(s.[CAUSA FACTOR PRINCIPAL],'')
    AND ISNULL(dc.causa_especifica,'') = ISNULL(s.[CAUSA ESPECÍFICA],'')

INNER JOIN DIM_CLIMA dcl
    ON ISNULL(dcl.condicion_climatica,'') = ISNULL(s.[CONDICIÓN CLIMÁTICA],'')
    AND ISNULL(dcl.zonificacion,'') = ISNULL(s.[ZONIFICACIÓN],'')

INNER JOIN DIM_SENALIZACION ds
    ON ISNULL(ds.existe_senal_vertical,'') =
       ISNULL(s.[¿EXISTE SEÑAL VERTICAL?],'')

    AND ISNULL(ds.clasificacion_senal_1,'') =
       ISNULL(s.[CLASIFICACIÓN DE LA SEÑAL VERTICAL Nº 1],'')

    AND ISNULL(ds.clasificacion_senal_2,'') =
       ISNULL(s.[CLASIFICACIÓN DE LA SEÑAL VERTICAL Nº 2],'')

    AND ISNULL(ds.existe_senal_horizontal,'') =
       ISNULL(s.[¿EXISTE SEÑAL HORIZONTAL?],'');

SELECT * FROM FACT_SINIESTROS

--- FACT_PERSONAS
INSERT INTO FACT_PERSONAS
(
    codigo_siniestro,
    id_fecha,
    id_persona_dim,
    id_licencia,
    id_dosaje,
    id_gravedad,
    total_personas,
    fallecido,
    lesionado
)
SELECT
    p.[CÓDIGO SINIESTRO],

    df.id_fecha,
    dp.id_persona_dim,
    dl.id_licencia,
    dd.id_dosaje,
    dg.id_gravedad,

    1 AS total_personas,

    CASE
        WHEN UPPER(ISNULL(p.[GRAVEDAD],'')) LIKE '%FALLEC%'
        THEN 1
        ELSE 0
    END AS fallecido,

    CASE
        WHEN UPPER(ISNULL(p.[GRAVEDAD],'')) LIKE '%LESION%'
        THEN 1
        ELSE 0
    END AS lesionado

FROM personas p

INNER JOIN DIM_FECHA df
    ON df.fecha = p.[FECHA]

INNER JOIN DIM_PERSONA dp
    ON ISNULL(dp.tipo_persona,'') = ISNULL(p.[TIPO PERSONA],'')
    AND ISNULL(dp.sexo,'') = ISNULL(p.[SEXO],'')
    AND ISNULL(dp.edad,-1) = ISNULL(p.[EDAD],-1)

INNER JOIN DIM_LICENCIA dl
    ON ISNULL(dl.posee_licencia,'') = ISNULL(p.[POSEE LICENCIA],'')
    AND ISNULL(dl.estado_licencia,'') = ISNULL(p.[ESTADO LICENCIA],'')
    AND ISNULL(dl.clase_licencia,'') = ISNULL(p.[CLASE_LICENCIA],'')

INNER JOIN DIM_DOSAJE dd
    ON ISNULL(dd.sometio_dosaje_cualitativo,'') =
       ISNULL(p.[¿SE SOMETIÓ A DOSAJE ETÍLICO CUALITATIVO?],'')

    AND ISNULL(dd.resultado_dosaje_cualitativo,'') =
       ISNULL(p.[RESULTADO DEL DOSAJE ETÍLICO CUALITATIVO],'')

    AND ISNULL(dd.sometio_dosaje_cuantitativo,'') =
       ISNULL(p.[¿SE SOMETIÓ A DOSAJE ETÍLICO CUANTITATIVO?],'')

INNER JOIN DIM_GRAVEDAD dg
    ON ISNULL(dg.gravedad,'') = ISNULL(p.[GRAVEDAD],'');

SELECT * FROM FACT_PERSONAS

--- FACT_VEHICULOS
INSERT INTO FACT_VEHICULOS
(
    codigo_siniestro,
    id_fecha,
    id_vehiculo_dim,
    id_modalidad,
    id_seguridad_vehiculo,
    total_vehiculos,
    vehiculo_sin_soat,
    vehiculo_sin_revision
)
SELECT
    v.[CÓDIGO SINIESTRO],

    df.id_fecha,

    dv.id_vehiculo_dim,
    dm.id_modalidad,
    ds.id_seguridad_vehiculo,

    1 AS total_vehiculos,

    CASE
        WHEN UPPER(ISNULL(v.[POSEE SEGURO],'')) = 'NO'
        THEN 1
        ELSE 0
    END AS vehiculo_sin_soat,

    CASE
        WHEN UPPER(ISNULL(v.[POSEE CITV],'')) = 'NO'
        THEN 1
        ELSE 0
    END AS vehiculo_sin_revision

FROM vehiculos v

INNER JOIN DIM_FECHA df
    ON df.fecha = v.[FECHA]

INNER JOIN DIM_VEHICULO dv
    ON ISNULL(dv.vehiculo,'') =
       ISNULL(v.[VEHÍCULO],'')

INNER JOIN DIM_MODALIDAD_TRANSPORTE dm
    ON ISNULL(dm.estado_modalidad,'') =
       ISNULL(v.[ESTADO MODALIDAD],'')

    AND ISNULL(dm.modalidad_transporte,'') =
       ISNULL(v.[MODALIDAD DE TRANSPORTE],'')

    AND ISNULL(dm.ambito_servicio,'') =
       ISNULL(v.[AMBITO SERVICIO],'')

INNER JOIN DIM_SEGURIDAD_VEHICULO ds
    ON ISNULL(ds.posee_seguro,'') =
       ISNULL(v.[POSEE SEGURO],'')

    AND ISNULL(ds.estado_soat,'') =
       ISNULL(v.[ESTADO SOAT],'')

    AND ISNULL(ds.tipo_seguro,'') =
       ISNULL(v.[TIPO SEGURO],'')

    AND ISNULL(ds.posee_citv,'') =
       ISNULL(v.[POSEE CITV],'')

    AND ISNULL(ds.estado_citv,'') =
       ISNULL(v.[ESTADO CITV],'');

SELECT * FROM FACT_VEHICULOS