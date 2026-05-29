# Plataforma BI para el monitoreo de puntos críticos de siniestralidad vial en el Perú

# Integrantes:
- Alessandra Munayco
- Margot Torre
- Daniela Torres
- Milagros Valverde


## Descripción del proyecto

Este proyecto propone el diseño de una solución de Business Intelligence para el análisis de siniestros de tránsito fatales en el Perú, utilizando datos abiertos del Observatorio Nacional de Seguridad Vial del Ministerio de Transportes y Comunicaciones.

La propuesta se centra en la construcción de un Data Mart que permita integrar información sobre siniestros, personas involucradas y vehículos involucrados, con el objetivo de facilitar el análisis territorial, temporal y descriptivo de la siniestralidad vial fatal.

## Primera entrega

La primera entrega contiene:

- Contexto
- Problemática
- Objetivos
- Marco teórico
- Descripción de datos
- Modelo multidimensional

# 1. Contexto
La seguridad vial constituye uno de los ejes fundamentales de la gestión pública contemporánea, pues articula la movilidad urbana sostenible con la protección de la vida y la salud de la población. A nivel mundial, los siniestros de tránsito representan un problema de salud pública de primera magnitud: según la Organización Mundial de la Salud (OMS, 2023), aproximadamente 1,19 millones de personas pierden la vida cada año a causa de accidentes de tránsito, siendo estos la principal causa de muerte entre niños, adolescentes y jóvenes de 5 a 29 años. Estas cifras no solo reflejan una tragedia humana de proporciones alarmantes, sino que también revelan la urgencia de comprender con mayor precisión las circunstancias en que ocurren los siniestros y los factores que determinan su frecuencia y gravedad.
Las consecuencias de los accidentes de tránsito van mucho más allá de las pérdidas humanas. Generan costos económicos significativos vinculados a la atención médica, los procesos de rehabilitación, la pérdida de productividad laboral y los daños materiales; pero además producen un impacto social profundo que afecta la calidad de vida de las víctimas, sus familias y la comunidad en su conjunto. Esta dimensión multifactorial —donde confluyen la infraestructura vial, las características de los vehículos, las condiciones ambientales, el comportamiento de los conductores y las acciones de fiscalización— exige abordajes analíticos integrales y basados en evidencia.
En el Perú, la siniestralidad vial constituye un desafío estructural para las instituciones encargadas de la regulación, supervisión y gestión del tránsito. A los factores comunes en el ámbito internacional se suman elementos propios del contexto nacional: la informalidad en el transporte, la diversidad geográfica del territorio y las marcadas diferencias entre entornos urbanos y rurales. De acuerdo con el Ministerio de Transportes y Comunicaciones (MTC, 2024), la imprudencia del conductor y el exceso de velocidad figuran entre las principales causas de siniestros viales a nivel nacional. Esta complejidad se manifiesta también en los distintos contextos territoriales: en las zonas urbanas, la alta concentración vehicular expone permanentemente a peatones, motociclistas y pasajeros, mientras que en las carreteras interprovinciales y vías rurales predominan los riesgos asociados a velocidades elevadas, condiciones climáticas adversas, infraestructura precaria y menor capacidad de respuesta ante emergencias.
Frente a este escenario, el Estado peruano ha desarrollado mecanismos institucionales orientados a mejorar la gestión de la información sobre seguridad vial. El Ministerio de Transportes y Comunicaciones (MTC) es el organismo rector encargado de conducir las políticas nacionales en materia de transportes, tránsito, regulación del transporte terrestre, fiscalización y seguridad vial. En ese marco, creó el Observatorio Nacional de Seguridad Vial (ONSV), plataforma especializada cuya función es sistematizar, analizar y difundir información sobre los riesgos, causas y consecuencias de los siniestros viales, utilizando buenas prácticas en la gestión de datos, con la finalidad de servir como insumo para que las entidades competentes mejoren las políticas de prevención, fiscalización y respuesta frente a los hechos de tránsito (ONSV, s.f.).
Desde su implementación en 2021, el ONSV ha contribuido al registro georreferenciado y oportuno de los siniestros de tránsito con consecuencias fatales, permitiendo que las instituciones rectoras en materia de seguridad vial y los distintos niveles de gobierno cuenten con evidencia para diseñar acciones de prevención y fiscalización (MTC, 2024). Como parte de esta iniciativa, el Observatorio pone a disposición un portal de datos abiertos que contiene información sobre siniestros fatales, personas involucradas y vehículos asociados a nivel nacional durante el período 2021–2025, constituyendo una fuente oficial, real y de alto impacto para investigadores, instituciones públicas y tomadores de decisiones.

# 2. Problemática
A pesar de la disponibilidad de estos registros, su mera existencia no garantiza su utilidad analítica. La información publicada por el ONSV se encuentra distribuida en diferentes archivos y estructuras de almacenamiento —una base contiene los datos del evento, otra describe a las personas involucradas y otra detalla los vehículos asociados— sin que estas fuentes se encuentren integradas en una estructura orientada al análisis. Esta fragmentación impide comprender cómo se relacionan las variables territoriales, temporales, humanas y vehiculares de los siniestros, limitando severamente la capacidad de extraer conclusiones útiles a partir de los datos disponibles.
Como consecuencia, las instituciones responsables de la seguridad vial se ven impedidas de responder con agilidad preguntas clave para la gestión del problema, tales como: ¿en qué departamentos, provincias o distritos se concentran más siniestros fatales?, ¿qué tipos de vehículos aparecen con mayor frecuencia en estos eventos?, ¿qué características presentan las personas involucradas?, ¿existen periodos del año con mayor concentración de siniestros?, o ¿qué zonas deberían priorizarse para acciones de prevención, fiscalización o mejora de infraestructura?
En otras palabras, existe una brecha concreta entre la disponibilidad de los datos y su efectivo aprovechamiento: los registros existen, pero no están organizados en una estructura que permita responder estas preguntas de forma oportuna y confiable. La ausencia de un modelo analítico integrado restringe la capacidad institucional para identificar patrones, detectar tendencias y diseñar intervenciones focalizadas basadas en evidencia. Para que estos registros públicos puedan apoyar realmente la toma de decisiones, es necesario integrarlos, depurarlos, transformarlos y organizarlos en un modelo multidimensional que facilite su análisis desde distintas perspectivas.
Frente a esta necesidad, el presente proyecto propone el diseño e implementación de un Data Mart de siniestralidad vial que consolide las fuentes de datos del ONSV en un modelo multidimensional compuesto por una tabla de hechos y diversas dimensiones de análisis. Esta solución, enmarcada en la perspectiva del Business Intelligence, permitirá transformar registros públicos dispersos en información estructurada y accionable, sentando las bases para el desarrollo de dashboards en Power BI que faciliten la identificación de zonas críticas, tendencias y factores asociados a la siniestralidad vial fatal en el Perú.



# 3. Objetivos
Objetivo general
Diseñar e implementar un Data Mart de siniestralidad vial que consolide y estructure la información proveniente de las bases de datos del ONSV —siniestros fatales, personas involucradas y vehículos involucrados— en un modelo multidimensional orientado al análisis, para el período 2021–2025.
Objetivos específicos

- Integrar y depurar las fuentes de datos del ONSV correspondientes a siniestros fatales, personas involucradas y vehículos involucrados, mediante procesos de extracción, transformación y carga (ETL).
  
- Diseñar un modelo multidimensional que organice la información en dimensiones territoriales, temporales y descriptivas, facilitando el análisis de la siniestralidad vial desde múltiples perspectivas.
  
- Implementar el Data Mart en un entorno de base de datos relacional que garantice la integridad, consistencia y disponibilidad de la información consolidada.
  
- Desarrollar dashboards interactivos y herramientas de visualización que permitan identificar zonas críticas, patrones de ocurrencia y tendencias asociadas a los siniestros viales fatales en el Perú.


# 4. Marco teórico

**Business Intelligence**

Business Intelligence (BI) es el conjunto de estrategias, procesos y tecnologías que permiten transformar datos brutos en información útil para la toma de decisiones. Un sistema de BI integra datos de múltiples fuentes, los estandariza y los presenta mediante interfaces visuales e interactivas. En el presente proyecto, BI se aplica al dominio de la seguridad vial, convirtiendo los registros del Observatorio Nacional de Seguridad Vial (ONSV) en un tablero analítico que facilita la identificación de patrones de riesgo.


**Data Warehouse y Data Mart**

El Data Warehouse (DW) es un repositorio centralizado que consolida datos históricos provenientes de distintos sistemas operacionales, transformados para garantizar consistencia y calidad analítica (Kimball & Ross, 2013). Un Data Mart es un subconjunto del DW orientado a un área específica del negocio, más rápido de implementar y enfocado en necesidades concretas. Para este proyecto se diseña un Data Mart de Siniestralidad Vial que integra las bases de siniestros, personas y vehículos del ONSV correspondientes al período 2021–2025.


**Modelado Dimensional**

El modelado dimensional organiza los datos analíticos en torno a tablas de hechos —que contienen las métricas cuantitativas del proceso, como el número de fallecidos, lesionados o vehículos involucrados— rodeadas de tablas de dimensiones que proveen el contexto descriptivo: tiempo, ubicación, vehículo, vía, persona, causa, clima y señalización, entre otras. El esquema galaxia (Galaxy Schema), adoptado en este proyecto, extiende el modelo estrella al incorporar múltiples tablas de hechos —FACT_SINIESTROS, FACT_PERSONAS y FACT_VEHICULOS— que comparten dimensiones comunes, permitiendo analizar el fenómeno de la siniestralidad desde perspectivas complementarias con mayor riqueza analítica. 


**Proceso ETL**

El proceso ETL (Extracción, Transformación y Carga) es el responsable de mover los datos desde las fuentes origen hasta el Data Mart. La extracción obtiene los registros del ONSV; la transformación realiza limpieza, estandarización e integración de las tres bases de datos, así como el enriquecimiento geográfico mediante geocodificación inversa con OpenStreetMap para identificar las vías asociadas a cada siniestro; y la carga inserta los datos en las tablas dimensionales y de hechos. La implementación utiliza Visual Studio 2019 con proyectos SQL Server Integration Services (SSIS) y SQL Server como motor de base de datos.


**Herramientas: Power BI y OpenStreetMap**

Power BI es la plataforma de visualización de Microsoft que permite conectar el Data Mart, crear métricas con DAX y publicar dashboards interactivos con mapas georreferenciados, filtros dinámicos e indicadores clave (Microsoft, 2023). OpenStreetMap, a través de su API Nominatim, proporciona geocodificación inversa gratuita que enriquece los registros de siniestros con información sobre calles y tipos de vía, permitiendo identificar corredores viales de alta peligrosidad en el análisis espacial.


# 5. Descripción de datos -- Data Mart de Siniestralidad Vial

## DIM_FECHA

### Descripción
La dimensión fecha almacena la información temporal relacionada con los siniestros viales, personas involucradas y vehículos registrados. Permite realizar análisis históricos y tendencias temporales.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_fecha | INT | Identificador único de la dimensión fecha. |
| fecha | DATE | Fecha exacta en que ocurrió el evento vial. |
| anio | INT | Año correspondiente a la fecha del evento. |
| mes | INT | Número del mes del evento. |
| nombre_mes | VARCHAR(20) | Nombre textual del mes. |
| trimestre | INT | Trimestre del año asociado a la fecha. |
| dia | INT | Día del mes del evento. |
| dia_semana | VARCHAR(20) | Día de la semana correspondiente a la fecha. |
| fin_semana | VARCHAR(10) | Indicador que identifica si ocurrió en fin de semana. |

## DIM_UBICACION

### Descripción
La dimensión ubicación almacena información geográfica relacionada con los siniestros viales ocurridos en el Perú.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_ubicacion | INT | Identificador único de la dimensión ubicación. |
| departamento | VARCHAR(100) | Departamento donde ocurrió el siniestro. |
| provincia | VARCHAR(100) | Provincia donde ocurrió el evento. |
| distrito | VARCHAR(100) | Distrito donde ocurrió el evento vial. |
| ubicacion | VARCHAR(255) | Nombre aproximado de la vía o ubicación del siniestro. |
| latitud | DECIMAL(10,6) | Coordenada geográfica de latitud. |
| longitud | DECIMAL(10,6) | Coordenada geográfica de longitud. |
| codigo_carretera | VARCHAR(50) | Código identificador de carretera. |
| red_vial | VARCHAR(100) | Tipo de red vial asociada al evento. |

## DIM_VIA

### Descripción
La dimensión vía almacena las características físicas y estructurales de las vías donde ocurrieron los siniestros.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_via | INT | Identificador único de la dimensión vía. |
| tipo_via | VARCHAR(100) | Tipo de vía donde ocurrió el evento. |
| superficie_calzada | VARCHAR(100) | Tipo de superficie de la calzada. |
| caracteristicas_via | VARCHAR(150) | Características físicas de la vía. |
| perfil_longitudinal | VARCHAR(100) | Perfil longitudinal registrado en la vía. |

## DIM_CAUSA

### Descripción
La dimensión causa almacena los factores principales y específicos asociados a los siniestros viales.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_causa | INT | Identificador único de la dimensión causa. |
| causa_principal | VARCHAR(150) | Factor principal relacionado al siniestro. |
| causa_especifica | VARCHAR(255) | Descripción específica de la causa registrada. |

## DIM_CLIMA

### Descripción
La dimensión clima almacena información relacionada con las condiciones climáticas y ambientales del evento vial.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_clima | INT | Identificador único de la dimensión clima. |
| condicion_climatica | VARCHAR(100) | Condición climática registrada durante el evento. |
| zonificacion | VARCHAR(100) | Tipo de zonificación asociada al lugar del evento. |

## DIM_SENALIZACION

### Descripción
La dimensión señalización almacena información sobre las señales de tránsito presentes en la vía donde ocurrió el siniestro.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_senalizacion | INT | Identificador único de la dimensión señalización. |
| existe_senal_vertical | VARCHAR(10) | Indicador de existencia de señalización vertical. |
| clasificacion_senal_1 | VARCHAR(150) | Primera clasificación de señal vertical registrada. |
| clasificacion_senal_2 | VARCHAR(150) | Segunda clasificación de señal vertical registrada. |
| existe_senal_horizontal | VARCHAR(10) | Indicador de existencia de señalización horizontal. |

## DIM_PERSONA

### Descripción
La dimensión persona almacena información demográfica y características generales de las personas involucradas en los siniestros.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_persona_dim | INT | Identificador único de la dimensión persona. |
| tipo_persona | VARCHAR(100) | Tipo de persona involucrada en el evento vial. |
| sexo | VARCHAR(20) | Sexo de la persona involucrada. |
| edad | INT | Edad de la persona registrada. |
| rango_edad | VARCHAR(30) | Clasificación de rango etario utilizada para análisis. |

## DIM_LICENCIA

### Descripción
La dimensión licencia almacena información relacionada con licencias de conducir de las personas involucradas.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_licencia | INT | Identificador único de la dimensión licencia. |
| posee_licencia | VARCHAR(10) | Indicador de posesión de licencia de conducir. |
| estado_licencia | VARCHAR(50) | Estado de la licencia registrada. |
| clase_licencia | VARCHAR(50) | Clase o categoría de licencia de conducir. |

## DIM_DOSAJE

### Descripción
La dimensión dosaje almacena información relacionada con pruebas de alcoholemia realizadas a personas involucradas.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_dosaje | INT | Identificador único de la dimensión dosaje. |
| sometio_dosaje_cualitativo | VARCHAR(10) | Indicador de realización de dosaje cualitativo. |
| resultado_dosaje_cualitativo | VARCHAR(100) | Resultado obtenido en la prueba cualitativa. |
| sometio_dosaje_cuantitativo | VARCHAR(10) | Indicador de realización de dosaje cuantitativo. |

## DIM_GRAVEDAD

### Descripción
La dimensión gravedad clasifica el nivel de afectación de las personas involucradas en los siniestros.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_gravedad | INT | Identificador único de la dimensión gravedad. |
| gravedad | VARCHAR(50) | Nivel de gravedad asociado a la persona. |

## DIM_VEHICULO

### Descripción
La dimensión vehículo almacena información general relacionada con los vehículos involucrados en siniestros viales.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_vehiculo_dim | INT | Identificador único de la dimensión vehículo. |
| vehiculo | VARCHAR(100) | Tipo o categoría del vehículo involucrado. |

## DIM_MODALIDAD_TRANSPORTE

### Descripción
La dimensión modalidad transporte almacena información relacionada con la modalidad y ámbito de servicio del vehículo.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_modalidad | INT | Identificador único de la dimensión modalidad transporte. |
| estado_modalidad | VARCHAR(100) | Estado de la modalidad de transporte. |
| modalidad_transporte | VARCHAR(100) | Modalidad de transporte registrada. |
| ambito_servicio | VARCHAR(100) | Ámbito de servicio asociado al vehículo. |

## DIM_SEGURIDAD_VEHICULO

### Descripción
La dimensión seguridad vehículo almacena información relacionada con documentación y seguridad vehicular.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_seguridad_vehiculo | INT | Identificador único de la dimensión seguridad vehicular. |
| posee_seguro | VARCHAR(10) | Indicador de existencia de seguro vehicular. |
| estado_soat | VARCHAR(50) | Estado del SOAT registrado. |
| tipo_seguro | VARCHAR(100) | Tipo de seguro asociado al vehículo. |
| posee_citv | VARCHAR(10) | Indicador de existencia de CITV. |
| estado_citv | VARCHAR(50) | Estado del certificado CITV. |

## FACT_SINIESTROS

### Descripción
La tabla de hechos FACT_SINIESTROS almacena las métricas principales relacionadas con cada siniestro vial registrado.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_siniestro_fact | INT | Identificador único de la tabla de hechos siniestros. |
| codigo_siniestro | VARCHAR(50) | Código identificador original del siniestro. |
| id_fecha | INT | Llave foránea relacionada con la dimensión fecha. |
| id_ubicacion | INT | Llave foránea relacionada con la dimensión ubicación. |
| id_via | INT | Llave foránea relacionada con la dimensión vía. |
| id_causa | INT | Llave foránea relacionada con la dimensión causa. |
| id_clima | INT | Llave foránea relacionada con la dimensión clima. |
| id_senalizacion | INT | Llave foránea relacionada con la dimensión señalización. |
| cantidad_fallecidos | INT | Cantidad total de fallecidos registrados en el siniestro. |
| cantidad_lesionados | INT | Cantidad total de lesionados registrados en el siniestro. |
| cantidad_vehiculos_danados | INT | Cantidad total de vehículos dañados en el evento. |
| total_siniestros | INT | Métrica utilizada para conteo total de siniestros. |

## FACT_PERSONAS

### Descripción
La tabla de hechos FACT_PERSONAS almacena información relacionada con las personas involucradas en los siniestros viales.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_persona_fact | INT | Identificador único de la tabla de hechos personas. |
| codigo_siniestro | VARCHAR(50) | Código identificador del siniestro asociado. |
| id_fecha | INT | Llave foránea relacionada con la dimensión fecha. |
| id_ubicacion | INT | Llave foránea relacionada con la dimensión ubicación. |
| id_persona_dim | INT | Llave foránea relacionada con la dimensión persona. |
| id_licencia | INT | Llave foránea relacionada con la dimensión licencia. |
| id_dosaje | INT | Llave foránea relacionada con la dimensión dosaje. |
| id_gravedad | INT | Llave foránea relacionada con la dimensión gravedad. |
| total_personas | INT | Métrica utilizada para conteo total de personas involucradas. |
| fallecido | INT | Indicador de persona fallecida. |
| lesionado | INT | Indicador de persona lesionada. |

## FACT_VEHICULOS

### Descripción
La tabla de hechos FACT_VEHICULOS almacena información relacionada con los vehículos involucrados en siniestros viales.

| Nombre de columna | Tipo de dato | Descripción |
|---|---|---|
| id_vehiculo_fact | INT | Identificador único de la tabla de hechos vehículos. |
| codigo_siniestro | VARCHAR(50) | Código identificador del siniestro asociado. |
| id_fecha | INT | Llave foránea relacionada con la dimensión fecha. |
| id_ubicacion | INT | Llave foránea relacionada con la dimensión ubicación. |
| id_vehiculo_dim | INT | Llave foránea relacionada con la dimensión vehículo. |
| id_modalidad | INT | Llave foránea relacionada con la dimensión modalidad transporte. |
| id_seguridad_vehiculo | INT | Llave foránea relacionada con la dimensión seguridad vehicular. |
| total_vehiculos | INT | Métrica utilizada para conteo total de vehículos involucrados. |
| vehiculo_sin_soat | INT | Indicador de vehículo sin SOAT vigente. |
| vehiculo_sin_revision | INT | Indicador de vehículo sin CITV o revisión técnica vigente. |


# 5. Data Mart
<img width="1459" height="917" alt="image" src="https://github.com/user-attachments/assets/a258e056-f282-4502-aa99-29880c2f5bc9" />


# 7.Referencias

Kimball, R., & Ross, M. (2013). The data warehouse toolkit: The definitive guide to dimensional modeling (3.ª ed.). Wiley.
Microsoft. (2023). Power BI documentation. https://learn.microsoft.com/en-us/power-bi/
Ministerio de Transportes y Comunicaciones. (2024). Imprudencia del conductor y exceso de velocidad son las principales causas de accidentes en el país. https://www.gob.pe/institucion/mtc/noticias/959363-imprudencia-del-conductor-y-exceso-de-velocidad-son-las-principales-causas-de-accidentes-en-el-pais
Observatorio Nacional de Seguridad Vial. (s.f.). Observatorio Nacional de Seguridad Vial. https://www.onsv.gob.pe/
Observatorio Nacional de Seguridad Vial. (2026). Datos abiertos ONSV. https://www.onsv.gob.pe/datosabiertos
OpenStreetMap Contributors. (2023). Nominatim: Open geocoding API. https://nominatim.openstreetmap.org
Organización Mundial de la Salud. (2023). Traumatismos causados por el tránsito. https://www.who.int/es/news-room/fact-sheets/detail/road-traffic-injuries


## Fuente de datos

Observatorio Nacional de Seguridad Vial del MTC:  
https://www.onsv.gob.pe/datosabiertos
