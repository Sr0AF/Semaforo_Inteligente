# *Semaforo_Inteligente*
Proyecto - Electrónica Digital I - Universidad Nacional de Colombia
## Contenido :scroll:
### Formulación
+ Identificación del problema
+ Datos
+ Análisis PESTAL
+ Antecedentes
+ Posibles soluciones
### Objetivos
+ Objetivo principal
+ Objetivos secundarios
### Presupuesto
### Diagramas
+ Diagramas de caja negra
+ Diagrama de flujo
+ Máquina de estados
### Implementación
### Problemas presentados
### Conclusiones 
### Referencias

##  Formulación :memo:
### Identificación del problema
Mejorar la seguridad vial en las intersecciones de las calles y avenidas, pues los accidentes de tráfico son una de las principales causas de lesiones y muertes en todo el mundo, y muchas de estas lesiones y muertes ocurren en las intersecciones donde los vehículos, los ciclistas y los peatones se cruzan.
Con un sistema de semáforos adecuado, se puede reducir significativamente el número de accidentes y lesiones en las intersecciones, lo que a su vez puede ayudar a mejorar la calidad de vida de la comunidad. Además, al tener un sistema de semáforos funcionando a la par con dispositivos como sensores ultrasónicos, se pueden reducir los tiempos de espera y mejorar el flujo vehicular, además de asegurar el bienestar del peatón.

### Datos
El problema propuesto gira principalmente entorno a los problemas de movilidad y seguridad vial en la ciudad de Bogotá, los cuales dan lugar a accidentes e imprudencias en la vía, contribuyendo así, la impaciencia tanto de conductores como de peatones. Como soporte se presentan los siguientes datos:

- De acuerdo con el índice INRIX Global Traffic Scorecard, se reveló que en el año 2022 Bogotá ocupó el sexto lugar de las ciudades con más tiempo de retraso de tráfico a nivel mundial con retrasos de 122 horas por conductor, convierto a Bogotá en la ciudad con más retrasos en América Latina por culpa del tráfico.
- En agosto del año 2022 Bogotá entró en una nueva crisis de movilidad dadas las más de 500 construcciones que buscan dar solución a los problemas de movilidad ya presentes dada la obsolescencia de la malla vial, dentro de estas construcciones se encuentran puentes, túneles, ciclovía, transporte público y la primera línea del metro, es decir, grandes obras que comprometen aún más la movilidad en la ciudad.
- De acuerdo con la lista del Urban Reform Institute, Bogotá ocupa el puesto 39 de las ciudades más densamente pobladas en el mundo, contando con cerca de 18.000 habitantes por kilometro cuadrado, lo cual tiene una significativa influencia en la movilidad y el flujo de transporte dada la cantidad de personas que se movilizan diariamente.

### Análisis PESTAL
+ **Político:** Para el desarrollo del proyecto, deben de tenerse en cuenta ciertas reglamentaciones en el contexto colombiano, con el objetivo de que lo que se haga se encuentre dentro del margen de las distintas leyes y decretos que rigen el diseño de los sistemas de semáforos en el país.  Algunos de estos reglamentos se mencionan a continuación:
  - **Decreto 1079 de 2015:** Regula la instalación y uso de semáforos y otros dispositivos de control de tráfico en Colombia.
  - **Ley 1383 de 2010:** Esta ley establece las sanciones y multas que se pueden imponer a los conductores que infrinjan las normas de tráfico.
  - **Resolución 3888 de 2013:** Esta resolución establece los tiempos mínimos y máximos que deben durar las señales de los semáforos en Colombia.
  - **Resolución 0115 de 2015:** Esta resolución establece los requisitos técnicos que deben cumplir los semáforos peatonales en Colombia.
+ **Económico:** Existen distintos costos que deben de considerarse en la solución a este problema.  En primer lugar, el costo de los materiales y la instalación, donde se incluyen componentes electrónicos, sensores, cables, circuitos integrados, entre otros. También debe tenerse en cuenta la mano de obra y el mantenimiento del sistema. Por otra parte, un semáforo inteligente que ayuda a regular el flujo vehicular, también ayuda a reducir costos de tiempo y energía (trayectos más cortos para los conductores, menos gasolina, etc.), lo que ayudaría a todos los propietarios de automóviles.
+ **Social:** Uno de los principales objetivos de los semáforos es garantizar la seguridad vial, especialmente en zonas de alto tráfico y circulación peatonal. Es importante que el sistema de semáforos pueda mejorar la seguridad vial y reducir el riesgo de accidentes de tráfico. También debe de tenerse en cuenta la accesibilidad de esta propuesta a las personas, es decir, que el sistema sea amigable, sencillo y entendible para la mayoría de las personas.
+ **Tecnológico:** En cuanto a los aspectos tecnológicos, se usarán sensores ultrasónicos con el objetivo de detectar la presencia de flujo vehicular en tiempo real. A partir del uso de la tarjeta FPGA, se coordinarán las señales de entrada y los colores del semáforo, con el objetivo de que todo funcione de manera sincronizada.  Otro aspecto importante es que, debido a que el sistema de semáforos está propuesto para trabajar con luces LED de bajo consumo, se estaría evitando un consumo de energía alto.
+ **Ambiental:** Como se mencionó anteriormente, en esta propuesta se busca de distintas maneras la eficiencia energética (uso de LEDS, reducción de tráfico).  Además, un sistema de semáforos que funcione correctamente y que permita el flujo vehicular, también reducirá la emisión de gases en las zonas donde sea implementado. También debe de tenerse en cuenta los materiales a utilizar durante la implementación, de tal manera que estos sean amigables con el medio ambiente.
+ **Legal:** Este aspecto va de la mano con el político, pues la propuesta deberá cumplir con todas las normas y regulaciones aplicables a nivel local y nacional. Además, no se deberán usar tecnologías patentadas previamente, para no ir en contra de los derechos de autor.
### Antecedentes:
Entorno a la problemática propuesta, distintos países en Europa ya han propuesto y puesto en marcha distintas soluciones como es el caso de Barcelona, España en donde se han instalado diversos elementos tecnológicos de regulación de tráfico, como lo son puntos de medida con detectores de tipo infrarrojo, visión artificial, bluetooth, etc. Así como sistemas que brindan información y estadísticas de tráfico, del ambiente y gestión de vías.
Otro caso de implementación de tecnologías con el fin de mejorar el tráfico y la seguridad vial es Alemania, en donde se han implementado semáforos con tecnologías que permiten medir el flujo y la velocidad del trafico con el fin de adaptar los tiempos de espera de los semáforos mediante sistemas autosuficientes, así como sistemas que permiten detectar peatones vulnerables (mayores de edad, personas con problemas de movilidad), para así darles prioridad y aumentar los tiempos de espera para que puedan cruzar la vía con tranquilidad y seguridad .
### Posibles soluciones:
Principalmente se propone una malla vial más inteligente, en donde los semáforos e intersecciones, posean sistemas digitales los cuales se compongan de sensores y nuevas tecnologías las cuales permitan detectar ya sea flujo de carros o de peatones y así dar prioridades ya sea para evitar tráfico como para permitir al peatón movilizarse de manera rápida y segura de acuerdo a las condiciones del momento, en dicha solución es importante detectar los niveles de tráfico y los tiempos de espera tanto del tráfico como de los peatones, para lo cual es importante poner en uso sistemas de conteo, sensores de detección y otras herramientas tanto digitales como análogas. 
Como solución secundaria que apremia por la seguridad del peatón, podría llegarse a implementar un sistema que detecte los niveles de velocidad de los automotores, y de acuerdo con dicha información, si se es necesario, dar un aviso mediante sistemas inalámbricos a la autoridad competente y a su vez tanto al tráfico vial como peatonal de posibles peligros y/o accidentes.
## Objetivos :white_check_mark:
### Objetivo principal:
Implementar un sistema digital semiautomático para control de tráfico que reduzca el tiempo de espera de los peatones y estimule el flujo vehicular en diversas situaciones de movilidad.
### Objetivos secundarios:
+ Diseñar un sistema de sensores de ultrasonido que determinen el estado de tráfico mediante la detección de obstáculos y permitan intervenir en la decisión de los semáforos.
+ Adaptar un mecanismo manual mediante un pulsador para dar prioridad al paso de peatones teniendo en cuenta el estado de tráfico actual.
+ Implementar un contador descendente mediante un display 7 segmentos que establezca los cambios del semáforo tomando en cuenta las salidas de los sensores y el mecanismo manual, y permita visualizar los tiempos de espera de los peatones.
## Presupuesto:
| Elemento                        | Precio unitario (COP) | Cantidad    | Precio total (COP) |
| :-----------------------------: | :-------------------: | :---------: | :----------------: | 
| Tarjeta FPGA Altera Cyclone IV  | $ 700 000             | 1           | $ 700 000          |
| Sensor de ultrasonido HC- SR04  | $ 7 000               | 1           | $ 7 000            | 
| Pulsador 4 pines                | $ 1 000               | 1           | $ 1 000            |
| Módulo Leds para Semáforo       | $ 8 000               | 1           | $ 8 000            |
| Jumpers                         | $ 500                 | 15          | $ 7 500            |
| Maqueta                         | $ 20 000              | 1           | $ 20 000           |
| Protoboard                      | $ 7 000               | 1           | $ 7 000            |
| Mano de obra                    | $ 700 000             | 3           | $ 2 100 000        |
| TOTAL                           |                       |             | $ 2 850 500        |



