# Marco teórico

**1. Business Intelligence**
Business Intelligence (BI) es el conjunto de estrategias, procesos y tecnologías que permiten transformar datos brutos en información útil para la toma de decisiones. Un sistema de BI integra datos de múltiples fuentes, los estandariza y los presenta mediante interfaces visuales e interactivas. En el presente proyecto, BI se aplica al dominio de la seguridad vial, convirtiendo los registros del Observatorio Nacional de Seguridad Vial (ONSV) en un tablero analítico que facilita la identificación de patrones de riesgo.

**2. Data Warehouse y Data Mart**
El Data Warehouse (DW) es un repositorio centralizado que consolida datos históricos provenientes de distintos sistemas operacionales, transformados para garantizar consistencia y calidad analítica (Kimball & Ross, 2013). Un Data Mart es un subconjunto del DW orientado a un área específica del negocio, más rápido de implementar y enfocado en necesidades concretas. Para este proyecto se diseña un Data Mart de Siniestralidad Vial que integra las bases de siniestros, personas y vehículos del ONSV correspondientes al período 2021–2025.

**3. Modelado Dimensional**
El modelado dimensional organiza los datos analíticos en torno a una tabla de hechos —que contiene las métricas cuantitativas del proceso, como el número de fallecidos o vehículos involucrados— rodeada de tablas de dimensiones que proveen el contexto descriptivo: tiempo, lugar, vehículo, vía, persona y características de siniestro. El modelo en estrella, adoptado en este proyecto, ubica la tabla de hechos al centro con las dimensiones directamente conectadas que garantiza simplicidad y alto rendimiento en consultas analíticas.

**4. Proceso ETL**
El proceso ETL (Extracción, Transformación y Carga) es el responsable de mover los datos desde las fuentes origen hasta el Data Mart. La extracción obtiene los registros del ONSV; la transformación realiza limpieza, estandarización e integración de las tres bases de datos, así como el enriquecimiento geográfico mediante geocodificación inversa con OpenStreetMap para identificar las vías asociadas a cada siniestro; y la carga inserta los datos en las tablas dimensionales y de hechos. La implementación utiliza Visual Studio 2019 con proyectos SQL Server Integration Services (SSIS) y SQL Server como motor de base de datos.
**5. Herramientas: Power BI y OpenStreetMap**
Power BI es la plataforma de visualización de Microsoft que permite conectar el Data Mart, crear métricas con DAX y publicar dashboards interactivos con mapas georreferenciados, filtros dinámicos e indicadores clave (Microsoft, 2023). OpenStreetMap, a través de su API Nominatim, proporciona geocodificación inversa gratuita que enriquece los registros de siniestros con información sobre calles y tipos de vía, permitiendo identificar corredores viales de alta peligrosidad en el análisis espacial.

# Referencias
Kimball, R., & Ross, M. (2013). The data warehouse toolkit: The definitive guide to dimensional modeling (3.ª ed.). Wiley.

Microsoft. (2023). Power BI documentation. https://learn.microsoft.com/en-us/power-bi/ 

Observatorio Nacional de Seguridad Vial. (2023). Estadísticas de siniestros de tránsito en el Perú. ONSV. https://www.onsv.gob.pe/datosabiertos 

OpenStreetMap Contributors. (2023). Nominatim: Open geocoding API. https://nominatim.openstreetmap.org
