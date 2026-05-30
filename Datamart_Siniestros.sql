
-- DIM_FECHA
CREATE TABLE DIM_FECHA (
    id_fecha INT IDENTITY(1,1) PRIMARY KEY,
    fecha DATE,
    anio INT,
    mes INT,
    nombre_mes VARCHAR(20),
    trimestre INT,
    dia INT,
    dia_semana VARCHAR(20),
    fin_semana VARCHAR(10)
);

-- DIM_UBICACION
CREATE TABLE DIM_UBICACION (
    id_ubicacion INT IDENTITY(1,1) PRIMARY KEY,
    departamento VARCHAR(100),
    provincia VARCHAR(100),
    distrito VARCHAR(100),
    ubicacion VARCHAR(255),
    latitud DECIMAL(10,6),
    longitud DECIMAL(10,6),
    codigo_carretera VARCHAR(50),
    red_vial VARCHAR(100)
);

-- DIM_VIA
CREATE TABLE DIM_VIA (
    id_via INT IDENTITY(1,1) PRIMARY KEY,
    tipo_via VARCHAR(100),
    superficie_calzada VARCHAR(100),
    caracteristicas_via VARCHAR(150),
    perfil_longitudinal VARCHAR(100)
);

-- DIM_CAUSA
CREATE TABLE DIM_CAUSA (
    id_causa INT IDENTITY(1,1) PRIMARY KEY,
    causa_principal VARCHAR(150),
    causa_especifica VARCHAR(255)
);

-- DIM_CLIMA
CREATE TABLE DIM_CLIMA (
    id_clima INT IDENTITY(1,1) PRIMARY KEY,
    condicion_climatica VARCHAR(100),
    zonificacion VARCHAR(100)
);

-- DIM_SENALIZACION
CREATE TABLE DIM_SENALIZACION (
    id_senalizacion INT IDENTITY(1,1) PRIMARY KEY,
    existe_senal_vertical VARCHAR(10),
    clasificacion_senal_1 VARCHAR(150),
    clasificacion_senal_2 VARCHAR(150),
    existe_senal_horizontal VARCHAR(10)
);

-- DIM_PERSONA
CREATE TABLE DIM_PERSONA (
    id_persona_dim INT IDENTITY(1,1) PRIMARY KEY,
    tipo_persona VARCHAR(100),
    sexo VARCHAR(20),
    edad INT,
    rango_edad VARCHAR(30)
);

-- DIM_LICENCIA
CREATE TABLE DIM_LICENCIA (
    id_licencia INT IDENTITY(1,1) PRIMARY KEY,
    posee_licencia VARCHAR(10),
    estado_licencia VARCHAR(50),
    clase_licencia VARCHAR(50)
);

-- DIM_DOSAJE
CREATE TABLE DIM_DOSAJE (
    id_dosaje INT IDENTITY(1,1) PRIMARY KEY,
    sometio_dosaje_cualitativo VARCHAR(10),
    resultado_dosaje_cualitativo VARCHAR(100),
    sometio_dosaje_cuantitativo VARCHAR(10)
);

-- DIM_GRAVEDAD
CREATE TABLE DIM_GRAVEDAD (
    id_gravedad INT IDENTITY(1,1) PRIMARY KEY,
    gravedad VARCHAR(50)
);

-- DIM_VEHICULO
CREATE TABLE DIM_VEHICULO (
    id_vehiculo_dim INT IDENTITY(1,1) PRIMARY KEY,
    vehiculo VARCHAR(100)
);

-- DIM_MODALIDAD_TRANSPORTE
CREATE TABLE DIM_MODALIDAD_TRANSPORTE (
    id_modalidad INT IDENTITY(1,1) PRIMARY KEY,
    estado_modalidad VARCHAR(100),
    modalidad_transporte VARCHAR(100),
    ambito_servicio VARCHAR(100)
);

-- DIM_SEGURIDAD_VEHICULO
CREATE TABLE DIM_SEGURIDAD_VEHICULO (
    id_seguridad_vehiculo INT IDENTITY(1,1) PRIMARY KEY,
    posee_seguro VARCHAR(10),
    estado_soat VARCHAR(50),
    tipo_seguro VARCHAR(100),
    posee_citv VARCHAR(10),
    estado_citv VARCHAR(50)
);

-- FACT_SINIESTROS
CREATE TABLE FACT_SINIESTROS (
    id_siniestro_fact INT IDENTITY(1,1) PRIMARY KEY,
    codigo_siniestro VARCHAR(50),
    id_fecha INT,
    id_ubicacion INT,
    id_via INT,
    id_causa INT,
    id_clima INT,
    id_senalizacion INT,
    cantidad_fallecidos INT,
    cantidad_lesionados INT,
    cantidad_vehiculos_danados INT,
    total_siniestros INT,
    FOREIGN KEY (id_fecha) REFERENCES DIM_FECHA(id_fecha),
    FOREIGN KEY (id_ubicacion) REFERENCES DIM_UBICACION(id_ubicacion),
    FOREIGN KEY (id_via) REFERENCES DIM_VIA(id_via),
    FOREIGN KEY (id_causa) REFERENCES DIM_CAUSA(id_causa),
    FOREIGN KEY (id_clima) REFERENCES DIM_CLIMA(id_clima),
    FOREIGN KEY (id_senalizacion) REFERENCES DIM_SENALIZACION(id_senalizacion)
);

-- FACT_PERSONAS
CREATE TABLE FACT_PERSONAS (
    id_persona_fact INT IDENTITY(1,1) PRIMARY KEY,
    codigo_siniestro VARCHAR(50),
    id_fecha INT,
    id_ubicacion INT,
    id_persona_dim INT,
    id_licencia INT,
    id_dosaje INT,
    id_gravedad INT,
    total_personas INT,
    fallecido INT,
    lesionado INT,
    FOREIGN KEY (id_fecha) REFERENCES DIM_FECHA(id_fecha),
    FOREIGN KEY (id_ubicacion) REFERENCES DIM_UBICACION(id_ubicacion),
    FOREIGN KEY (id_persona_dim) REFERENCES DIM_PERSONA(id_persona_dim),
    FOREIGN KEY (id_licencia) REFERENCES DIM_LICENCIA(id_licencia),
    FOREIGN KEY (id_dosaje) REFERENCES DIM_DOSAJE(id_dosaje),
    FOREIGN KEY (id_gravedad) REFERENCES DIM_GRAVEDAD(id_gravedad)
);

-- FACT_VEHICULOS
CREATE TABLE FACT_VEHICULOS (
    id_vehiculo_fact INT IDENTITY(1,1) PRIMARY KEY,
    codigo_siniestro VARCHAR(50),
    id_fecha INT,
    id_ubicacion INT,
    id_vehiculo_dim INT,
    id_modalidad INT,
    id_seguridad_vehiculo INT,
    total_vehiculos INT,
    vehiculo_sin_soat INT,
    vehiculo_sin_revision INT,
    FOREIGN KEY (id_fecha) REFERENCES DIM_FECHA(id_fecha),
    FOREIGN KEY (id_ubicacion) REFERENCES DIM_UBICACION(id_ubicacion),
    FOREIGN KEY (id_vehiculo_dim) REFERENCES DIM_VEHICULO(id_vehiculo_dim),
    FOREIGN KEY (id_modalidad) REFERENCES DIM_MODALIDAD_TRANSPORTE(id_modalidad),
    FOREIGN KEY (id_seguridad_vehiculo) REFERENCES DIM_SEGURIDAD_VEHICULO(id_seguridad_vehiculo)
);
