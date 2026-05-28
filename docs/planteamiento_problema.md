# Contextualización

La seguridad vial constituye actualmente uno de los principales problemas de salud pública y movilidad urbana a nivel mundial. Según la Organización Mundial de la Salud (OMS, 2023), los siniestros de tránsito ocasionan aproximadamente 1,19 millones de muertes cada año y representan la principal causa de fallecimiento en personas entre 5 y 29 años. Además de las pérdidas humanas, estos eventos generan impactos económicos, sociales y sanitarios significativos, afectando la productividad, incrementando los costos hospitalarios y deteriorando la calidad de vida de miles de familias.

En América Latina existen ciertas limitaciones estructurales relacionadas con infraestructura vial, fiscalización y gestión del transporte. En este contexto, el Perú se encuentra entre los países con mayores índices de mortalidad por accidentes de tránsito en Sudamérica, registrando tasas superiores a las observadas en países de altos ingresos (Banco Mundial, 2021). A nivel nacional, aproximadamente 1,800 personas fallecen anualmente en siniestros de tránsito, mientras miles resultan heridas o adquieren secuelas permanentes (MTC, 2022).

La complejidad de la siniestralidad vial en el Perú también se encuentra influenciada por las características geográficas y territoriales del país. La costa concentra corredores urbanos y carreteras de alta velocidad con elevado flujo vehicular; la sierra presenta pendientes pronunciadas, curvas cerradas y condiciones climáticas adversas; mientras que la selva experimenta un acelerado deterioro de las vías debido a factores climáticos y ambientales (MTC, 2022). Como consecuencia, los accidentes de tránsito presentan comportamientos heterogéneos entre regiones, variando en frecuencia, gravedad y causas asociadas.

A ello se suma la informalidad estructural del sistema de transporte peruano. La Dirección General de Transporte Terrestre (2022) reporta que una parte importante del parque automotor circula sin revisión técnica vigente, sin Seguro Obligatorio de Accidentes de Tránsito (SOAT) o con conductores que no cuentan con licencias habilitadas. Estas condiciones incrementan considerablemente el riesgo de accidentes graves y dificultan los procesos de control y fiscalización.

Frente a esta situación, el Estado peruano ha fortalecido progresivamente los mecanismos de registro y monitoreo de los accidentes de tránsito. La Policía Nacional del Perú, mediante las Unidades de Prevención e Investigación de Accidentes de Tránsito (UPIAT-PNP), recopila información relacionada con ubicación geográfica, características de la vía, vehículos involucrados, víctimas y causas identificadas. Esta información es consolidada por el Observatorio Nacional de Seguridad Vial (ONSV), el cual dispone de bases de datos correspondientes al período 2021–2025 para los 25 departamentos del país.

En este contexto, la disponibilidad de registros provenientes del Observatorio Nacional de Seguridad Vial representa una oportunidad importante para fortalecer el análisis de la siniestralidad vial en el Perú. La integración de información relacionada con accidentes, víctimas, vehículos y ubicación geográfica permite abordar el fenómeno desde una perspectiva más amplia y multidimensional. Asimismo, el uso de herramientas de inteligencia de negocios, análisis espacial y visualización interactiva puede contribuir a una mejor comprensión de los patrones de riesgo y facilitar el desarrollo de estrategias orientadas a la prevención y gestión de la seguridad vial.

# Planteamiento del problema

A pesar de la disponibilidad de información detallada sobre los siniestros de tránsito en el Perú, aún existen importantes limitaciones en el aprovechamiento analítico de dichos registros para apoyar la toma de decisiones en materia de seguridad vial. En muchos casos, los datos disponibles son utilizados únicamente para la elaboración de reportes descriptivos y estadísticas generales, sin desarrollar procesos integrales de análisis espacial, identificación de patrones de riesgo o modelamiento multidimensional de la información.

La Organización Mundial de la Salud (OMS, 2023) señala que uno de los principales desafíos en los países de ingresos medios no radica en la ausencia de datos, sino en la limitada capacidad para transformarlos en información útil para la prevención y gestión de riesgos viales. De manera similar, la Comisión Económica para América Latina y el Caribe (CEPAL, 2022) advierte que los sistemas de vigilancia vial de la región suelen subutilizar la información disponible, limitándose principalmente a indicadores básicos de frecuencia y mortalidad.

En el caso peruano, esta problemática se evidencia en la existencia de bases de datos fragmentadas sobre accidentes, víctimas y vehículos que, si bien contienen información valiosa, aún no son explotadas de manera integrada para comprender el fenómeno de forma multidimensional. Actualmente, se conoce cuántas personas fallecen por accidentes de tránsito; sin embargo, persisten vacíos respecto a la identificación precisa de zonas críticas, factores de riesgo predominantes, grupos poblacionales vulnerables, condiciones vehiculares recurrentes y tendencias temporales asociadas a los accidentes fatales.

Asimismo, la limitada integración de componentes geográficos dificulta la identificación de patrones espaciales relacionados con avenidas, carreteras o corredores viales de alta peligrosidad. Aunque los registros contienen coordenadas geográficas, estas no siempre son aprovechadas mediante técnicas de geocodificación y análisis espacial que permitan enriquecer la interpretación de los eventos.

En consecuencia, existe una brecha significativa entre la disponibilidad de datos y la generación de conocimiento analítico que apoye decisiones estratégicas basadas en evidencia. Esta situación limita la capacidad de las entidades responsables para identificar prioridades de intervención, focalizar recursos y diseñar estrategias preventivas más efectivas.

Frente a esta problemática, surge la necesidad de integrar, transformar y analizar los registros del Observatorio Nacional de Seguridad Vial mediante herramientas de inteligencia de negocios y análisis geoespacial. Por ello, la presente investigación propone el desarrollo de un datamart de siniestralidad vial, el enriquecimiento geográfico de los registros utilizando OpenStreetMap y la implementación de un tablero interactivo en Power BI publicado en una plataforma web, con el propósito de identificar patrones de riesgo, distribuciones espaciales y tendencias temporales que contribuyan a fortalecer la toma de decisiones en materia de seguridad vial en el Perú.

# Objetivos

## Objetivo general

Analizar los factores asociados a los siniestros de tránsito fatales en el Perú durante el período 2021–2025 mediante la integración, transformación y análisis de los registros del Observatorio Nacional de Seguridad Vial (ONSV), el enriquecimiento geográfico de las coordenadas utilizando OpenStreetMap y el desarrollo de un datamart y un tablero interactivo en Power BI publicado en una plataforma web, con la finalidad de identificar patrones de riesgo, distribuciones espaciales y tendencias temporales que contribuyan a la toma de decisiones basadas en evidencia en materia de seguridad vial.

## Objetivos específicos

- Diseñar e implementar un datamart de siniestralidad vial a partir de las bases de datos del Observatorio Nacional de Seguridad Vial correspondientes al período 2021–2025, integrando la información de accidentes, víctimas y vehículos mediante procesos ETL de extracción, transformación, limpieza y modelado dimensional orientados al análisis de datos.
- Enriquecer espacialmente los registros de siniestros de tránsito mediante técnicas de geocodificación inversa utilizando OpenStreetMap y las coordenadas geográficas disponibles, con el propósito de identificar calles, avenidas, jirones y tipos de vía asociados a los eventos fatales.
- Analizar la distribución geográfica y temporal de los siniestros de tránsito fatales, así como las características de las víctimas, las causas de los eventos y las condiciones de los vehículos involucrados, a fin de identificar patrones de riesgo y factores asociados a accidentes de mayor gravedad en el Perú.
- Desarrollar y publicar una plataforma web con un tablero interactivo en Power BI que incorpore visualizaciones georreferenciadas, indicadores y filtros dinámicos de análisis, facilitando la exploración de la información y apoyando la toma de decisiones en materia de prevención y gestión de la seguridad vial.

# Referencias

Banco Mundial. (2021). *Transport for health: The global burden of disease from motorized road transport*. Banco Mundial.

Bíl, M., Andrášik, R., & Janoška, Z. (2023). *Identification of hazardous road locations of traffic accidents by means of kernel density estimation and cluster significance evaluation*. Accident Analysis & Prevention, 55, 265–273. https://doi.org/10.1016/j.aap.2013.03.003

Comisión Económica para América Latina y el Caribe. (2022). *Seguridad vial en América Latina y el Caribe: avances y desafíos*. CEPAL.

Dirección General de Transporte Terrestre. (2022). *Informe de fiscalización del transporte terrestre 2022*. Ministerio de Transportes y Comunicaciones.

Instituto Nacional de Estadística e Informática. (2022). *Perú: estadísticas de seguridad ciudadana 2022*. INEI.

Kimball, R., & Ross, M. (2013). *The data warehouse toolkit: The definitive guide to dimensional modeling* (3.ª ed.). Wiley.

Microsoft. (2023). *Power BI documentation*. https://learn.microsoft.com/en-us/power-bi/

Ministerio de Transportes y Comunicaciones. (2022). *Anuario estadístico de accidentes de tránsito 2022*. MTC.

Ministerio de Transportes y Comunicaciones. (2023). *Plan Estratégico Nacional de Seguridad Vial 2023–2028*. MTC.

Observatorio Nacional de Seguridad Vial. (2023). *Estadísticas de siniestros de tránsito en el Perú*. ONSV.

OpenStreetMap Contributors. (2023). *Nominatim: Open geocoding API*. https://nominatim.openstreetmap.org

Organización Mundial de la Salud. (2023). *Global status report on road safety 2023*. OMS.
