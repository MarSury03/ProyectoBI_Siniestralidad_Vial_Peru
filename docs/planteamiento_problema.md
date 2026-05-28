# Planteamiento del problema

## 1. Contextualización

La seguridad vial constituye uno de los principales desafíos de salud pública, movilidad urbana y gestión territorial a nivel mundial. Los siniestros de tránsito no solo generan pérdidas humanas, sino también consecuencias económicas, sociales y sanitarias que afectan directamente a las familias, a los sistemas de salud y a la productividad de los países. Según la Organización Mundial de la Salud, cada año aproximadamente 1,19 millones de personas fallecen como consecuencia de accidentes de tránsito, y estos continúan siendo una de las principales causas de muerte en niños y jóvenes de 5 a 29 años (Organización Mundial de la Salud [OMS], 2023).

En América Latina, la problemática de la siniestralidad vial se ve agravada por factores como limitaciones en infraestructura vial, informalidad en el transporte, fiscalización insuficiente, crecimiento del parque automotor y desigualdades territoriales. Estos factores generan condiciones de riesgo que afectan con mayor intensidad a los países de ingresos medios y bajos, donde la seguridad vial aún enfrenta importantes desafíos de prevención, control y gestión pública.

En el caso peruano, la siniestralidad vial adquiere una complejidad adicional debido a la diversidad geográfica del país. La costa concentra corredores urbanos y carreteras con alto flujo vehicular; la sierra presenta vías con pendientes pronunciadas, curvas cerradas y condiciones climáticas adversas; mientras que la selva enfrenta problemas asociados al deterioro de vías por factores ambientales. Estas diferencias territoriales pueden influir en la frecuencia, gravedad y características de los siniestros de tránsito.

Asimismo, la informalidad en el sistema de transporte peruano incrementa el riesgo de ocurrencia de siniestros graves. La circulación de vehículos sin condiciones adecuadas, la falta de cumplimiento de normas de tránsito, la conducción imprudente y el exceso de velocidad son factores que dificultan la prevención y fiscalización. De acuerdo con el Ministerio de Transportes y Comunicaciones, la imprudencia del conductor y el exceso de velocidad se encuentran entre las principales causas de siniestralidad vial a nivel nacional (Ministerio de Transportes y Comunicaciones [MTC], 2024).

Frente a esta situación, el Estado peruano ha fortalecido progresivamente los mecanismos de registro y monitoreo de los siniestros de tránsito. El Observatorio Nacional de Seguridad Vial del Ministerio de Transportes y Comunicaciones sistematiza, analiza y difunde información sobre riesgos, causas y consecuencias de los siniestros viales, con la finalidad de servir como insumo para mejorar las políticas de prevención, fiscalización y respuesta frente a hechos de tránsito (Observatorio Nacional de Seguridad Vial [ONSV], s.f.).

En este contexto, la disponibilidad de datos abiertos del ONSV representa una oportunidad importante para fortalecer el análisis de la siniestralidad vial en el Perú. El portal de datos abiertos del observatorio publica bases relacionadas con siniestros de tránsito fatales, personas involucradas y vehículos involucrados para el periodo 2021-2025, disponibles en formatos como Excel, PDF y CSV (ONSV, 2026). Estas fuentes permiten abordar el fenómeno desde una perspectiva multidimensional, considerando variables territoriales, temporales, humanas y vehiculares.

Por ello, el uso de herramientas de Business Intelligence representa una oportunidad para transformar datos públicos dispersos en información analítica útil. La construcción de un Data Mart permitiría integrar las bases disponibles, organizar los registros bajo un modelo multidimensional y facilitar el análisis de zonas críticas, patrones temporales, tipos de vehículos involucrados y características de las personas afectadas. De esta manera, la información podría apoyar futuras decisiones orientadas a la prevención, fiscalización y gestión de la seguridad vial.

## 2. Problemática identificada

A pesar de que existen datos abiertos sobre siniestros de tránsito fatales en el Perú, todavía existen limitaciones para aprovecharlos de manera integrada y analítica. En muchos casos, la información disponible se utiliza principalmente para reportes descriptivos o estadísticas generales, pero no necesariamente para identificar patrones de riesgo, zonas críticas o relaciones entre variables territoriales, temporales, humanas y vehiculares.

Uno de los principales problemas es que la información se encuentra distribuida en diferentes bases de datos. Por un lado, se cuenta con registros de siniestros fatales; por otro lado, con información sobre personas involucradas; y, adicionalmente, con datos de vehículos involucrados. Cada fuente aporta una parte del fenómeno, pero al analizarse de forma separada se pierde una visión completa del problema.

Esta fragmentación dificulta responder preguntas clave para la gestión de seguridad vial, tales como: ¿en qué departamentos, provincias o distritos se concentran más siniestros fatales?, ¿qué tipos de vehículos aparecen con mayor frecuencia en estos eventos?, ¿qué grupos de personas se ven más afectados?, ¿existen meses, años o periodos con mayor ocurrencia?, ¿qué zonas deberían priorizarse para acciones de fiscalización, señalización o prevención?

Asimismo, la limitada integración de componentes geográficos reduce la capacidad de identificar patrones espaciales asociados a vías, avenidas, carreteras o corredores con alta peligrosidad. Aunque los registros pueden contener información de ubicación, esta no siempre se aprovecha mediante procesos de análisis geoespacial o enriquecimiento de datos que permitan comprender mejor el entorno donde ocurren los eventos.

En consecuencia, existe una brecha entre la disponibilidad de datos y la generación de conocimiento útil para la toma de decisiones. Tener datos no garantiza que estos se conviertan automáticamente en información accionable. Para lograrlo, es necesario integrar, limpiar, transformar y modelar los registros en una estructura analítica que permita consultar la información desde diferentes dimensiones.

Por ello, el presente proyecto propone diseñar un Data Mart de siniestralidad vial fatal utilizando las bases del Observatorio Nacional de Seguridad Vial correspondientes al periodo 2021-2025. La solución permitirá consolidar la información de siniestros, personas y vehículos involucrados en un modelo multidimensional, sentando las bases para el desarrollo posterior de un tablero interactivo en Power BI que facilite el análisis territorial, temporal y descriptivo de los eventos.

## 3. Formulación del problema

### Problema general

¿Cómo puede una solución de Business Intelligence, basada en un Data Mart y un modelo multidimensional, contribuir al análisis integrado de los siniestros de tránsito fatales en el Perú durante el periodo 2021-2025?

### Problemas específicos

- ¿Cómo integrar las bases de siniestros fatales, personas involucradas y vehículos involucrados del Observatorio Nacional de Seguridad Vial en una estructura analítica?
- ¿Qué dimensiones son necesarias para analizar los siniestros de tránsito fatales desde una perspectiva territorial, temporal, humana y vehicular?
- ¿Qué indicadores pueden permitir la identificación de zonas críticas y patrones asociados a la siniestralidad vial fatal?
- ¿Cómo puede organizarse la información para facilitar el desarrollo posterior de dashboards orientados a la toma de decisiones?

## 4. Objetivos

### 4.1 Objetivo general

Diseñar un Data Mart de siniestralidad vial fatal en el Perú, basado en un modelo multidimensional que integre información sobre siniestros de tránsito fatales, personas involucradas y vehículos involucrados durante el periodo 2021-2025, con el fin de facilitar el análisis territorial, temporal y descriptivo de los eventos.

### 4.2 Objetivos específicos

- Identificar la problemática asociada al uso fragmentado de los datos abiertos sobre siniestros de tránsito fatales en el Perú.
- Analizar las fuentes de datos disponibles del Observatorio Nacional de Seguridad Vial correspondientes a siniestros, personas y vehículos involucrados.
- Diseñar un modelo multidimensional que integre las principales variables necesarias para el análisis de la siniestralidad vial fatal.
- Definir una tabla de hechos y dimensiones que permitan analizar los eventos por fecha, ubicación, persona, vehículo, tipo de siniestro y gravedad.
- Establecer indicadores iniciales que permitan identificar zonas críticas, patrones temporales y características recurrentes en los siniestros fatales.
- Sentar las bases para el desarrollo posterior de un dashboard en Power BI orientado al monitoreo de indicadores de seguridad vial.

## 5. Justificación

El desarrollo de este proyecto se justifica por la necesidad de transformar datos públicos sobre siniestros de tránsito fatales en información útil para el análisis y la toma de decisiones. La disponibilidad de bases de datos abiertas representa una oportunidad importante; sin embargo, para aprovecharlas adecuadamente es necesario organizarlas en una estructura que facilite su consulta y análisis.

Desde el enfoque de Business Intelligence, la construcción de un Data Mart permite integrar información proveniente de distintas fuentes, depurarla y organizarla en un modelo multidimensional. Esto facilita el análisis de grandes volúmenes de datos y permite observar los eventos desde diferentes perspectivas, como tiempo, ubicación, tipo de vehículo y características de las personas involucradas.

El proyecto también tiene relevancia social, ya que aborda una problemática asociada a la pérdida de vidas humanas en el tránsito. Si bien esta primera etapa se centra en el diseño del modelo y no en la implementación completa del tablero, la propuesta puede servir como base para futuras herramientas de visualización que apoyen la identificación de zonas críticas y la priorización de acciones preventivas.

Finalmente, el proyecto permite aplicar los conceptos desarrollados en el curso de Business Intelligence, tales como Data Mart, modelo multidimensional, tabla de hechos, dimensiones, indicadores y análisis orientado a la toma de decisiones.

## Referencias

Ministerio de Transportes y Comunicaciones. (2024). *Imprudencia del conductor y exceso de velocidad son las principales causas de accidentes en el país*. https://www.gob.pe/institucion/mtc/noticias/959363-imprudencia-del-conductor-y-exceso-de-velocidad-son-las-principales-causas-de-accidentes-en-el-pais

Observatorio Nacional de Seguridad Vial. (s.f.). *Observatorio Nacional de Seguridad Vial*. https://www.onsv.gob.pe/

Observatorio Nacional de Seguridad Vial. (2026). *Datos abiertos ONSV*. https://www.onsv.gob.pe/datosabiertos

Organización Mundial de la Salud. (2023). *Informe sobre la situación mundial de la seguridad vial 2023*. https://www.who.int/es/publications/i/item/9789240086517

Organización Mundial de la Salud. (2023). *Traumatismos causados por el tránsito*. https://www.who.int/es/news-room/fact-sheets/detail/road-traffic-injuries
