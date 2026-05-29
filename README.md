# Plataforma BI para el monitoreo de puntos críticos de siniestralidad vial en el Perú

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

# 4.Descripción de datos



# 5. Data Mart


# 7.Referencias

Ministerio de Transportes y Comunicaciones. (2024). *Imprudencia del conductor y exceso de velocidad son las principales causas de accidentes en el país*. https://www.gob.pe/institucion/mtc/noticias/959363-imprudencia-del-conductor-y-exceso-de-velocidad-son-las-principales-causas-de-accidentes-en-el-pais

Observatorio Nacional de Seguridad Vial. (s.f.). *Observatorio Nacional de Seguridad Vial*. https://www.onsv.gob.pe/

Observatorio Nacional de Seguridad Vial. (2026). *Datos abiertos ONSV*. https://www.onsv.gob.pe/datosabiertos

Organización Mundial de la Salud. (2023). *Traumatismos causados por el tránsito*. https://www.who.int/es/news-room/fact-sheets/detail/road-traffic-injuries


## Fuente de datos

Observatorio Nacional de Seguridad Vial del MTC:  
https://www.onsv.gob.pe/datosabiertos
