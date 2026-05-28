# Contexto, problemática y objetivos

## 1.1 Contexto del proyecto

La seguridad vial es un tema relevante para la gestión pública, debido a que los siniestros de tránsito generan consecuencias humanas, sociales y económicas. En el Perú, los siniestros con consecuencias fatales representan una problemática que requiere seguimiento constante, ya que cada evento implica la pérdida de vidas humanas y evidencia la existencia de factores de riesgo asociados al territorio, al tiempo, al tipo de vehículo involucrado y a las características de las personas afectadas.

En este contexto, el Observatorio Nacional de Seguridad Vial del Ministerio de Transportes y Comunicaciones cumple un rol importante al sistematizar, analizar y difundir información sobre riesgos, causas y consecuencias de los siniestros viales. Esta información busca servir como insumo para mejorar políticas de prevención, fiscalización y respuesta frente a los hechos de tránsito en el país.

Para el presente proyecto se utilizarán datos abiertos publicados por el Observatorio Nacional de Seguridad Vial, específicamente las bases relacionadas con siniestros de tránsito fatales, personas involucradas y vehículos involucrados para el periodo 2021-2025. Estas bases permiten analizar la siniestralidad vial desde diferentes perspectivas, como ubicación geográfica, evolución temporal, perfil de personas afectadas y tipos de vehículos asociados a los eventos fatales.

## 1.2 Problemática identificada

Actualmente, la información pública sobre siniestros de tránsito fatales se encuentra disponible en bases de datos abiertas; sin embargo, estas fuentes están distribuidas en archivos separados. Por un lado, existe una base con información del siniestro; por otro lado, una base con información de las personas involucradas; y, adicionalmente, una base con información de los vehículos involucrados.

Esta separación dificulta realizar un análisis integral del problema. Analizar únicamente los siniestros permite conocer dónde y cuándo ocurrió el evento, pero no necesariamente permite identificar qué tipo de personas estuvieron involucradas o qué vehículos participaron. Del mismo modo, revisar las bases de personas o vehículos de forma aislada no permite comprender con facilidad la relación entre ubicación, periodo, tipo de vehículo y características de los involucrados.

La falta de integración de estas fuentes limita la identificación de zonas críticas, patrones temporales y factores recurrentes asociados a los siniestros fatales. Como consecuencia, las acciones de prevención, fiscalización o mejora de infraestructura pueden apoyarse en análisis parciales, en lugar de contar con una visión consolidada que facilite la toma de decisiones basada en datos.

Por ello, se propone diseñar un Data Mart de siniestralidad vial que consolide la información de siniestros fatales, personas involucradas y vehículos involucrados. Esta solución permitirá estructurar los datos bajo un modelo multidimensional, facilitando el análisis por tiempo, ubicación, persona, vehículo y tipo de evento.

## 1.3 Propuesta del proyecto

El proyecto propone el diseño de una solución de Business Intelligence orientada al análisis de siniestros de tránsito fatales en el Perú. Para ello, se plantea la construcción de un Data Mart que integre las bases de datos del Observatorio Nacional de Seguridad Vial y permita organizar la información en una estructura analítica.

La solución estará basada en un modelo multidimensional compuesto por una tabla de hechos principal, denominada FACT_SINIESTROS_FATALES, y un conjunto de dimensiones que permitirán analizar los eventos desde distintas perspectivas. Entre las dimensiones propuestas se consideran fecha, ubicación, tipo de siniestro, gravedad, persona, condición de la persona, vehículo y tipo de vehículo.

Esta primera etapa del proyecto se centra en la definición del marco conceptual, la descripción de la institución y el diseño inicial del modelo multidimensional. En etapas posteriores, el Data Mart podrá ser utilizado para construir dashboards en Power BI orientados al monitoreo de indicadores de seguridad vial.

## 1.4 Objetivo general

Diseñar un modelo multidimensional para un Data Mart de siniestralidad vial fatal en el Perú, que integre información sobre siniestros de tránsito fatales, personas involucradas y vehículos involucrados, con el fin de facilitar el análisis territorial, temporal y descriptivo de los eventos.

## 1.5 Objetivos específicos

- Identificar la problemática asociada a la información dispersa sobre siniestros de tránsito fatales en el Perú.
- Describir la institución responsable de la publicación de los datos y las fuentes de información utilizadas.
- Aplicar conceptos de Business Intelligence para proponer una solución analítica orientada a la toma de decisiones.
- Diseñar un modelo multidimensional que permita integrar las bases de siniestros, personas y vehículos involucrados.
- Definir una tabla de hechos y al menos ocho dimensiones para el análisis de la siniestralidad vial fatal.
- Establecer la base conceptual para el posterior desarrollo de dashboards e indicadores de seguridad vial.
