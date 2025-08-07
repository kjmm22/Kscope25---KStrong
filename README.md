# Kscope25 — APEX Mobile Template Components

Este repositorio reúne los archivos utilizados en la sesión **Building BOOM-worthy APEX Mobile Apps with Template Components** presentada en Kscope 2025.

Los archivos SQL permiten importar una aplicación de demostración y dos plug-ins de Template Component que ilustran:

- un menú móvil responsivo (`template_component_plugin_tc_mobile_menu.sql`)
- un gráfico de seguimiento de actividad física (`template_component_plugin_fitness_chart.sql`)

También se incluyen las diapositivas de la presentación (`KScope25_KristhalMeng_FV.pdf`).

## Contenido

- `f235647.sql` y `f235647.zip`: export de la aplicación APEX (ID 235647). La aplicación está configurada como PWA e incluye los plug-ins anteriores. Requiere APEX 24.2.5 o superior.
- `template_component_plugin_tc_mobile_menu.sql`: plug-in "TC Mobile Menu" para construir un menú deslizable optimizado para móviles.
- `template_component_plugin_fitness_chart.sql`: plug-in "Fitness Chart" que muestra progresos y métricas.
- `KScope25_KristhalMeng_FV.pdf`: diapositivas de la charla.

## Requisitos

- Oracle APEX 24.2.5 o superior.
- Acceso al esquema donde se importará la aplicación y los plug-ins.

## Instalación

1. Clona o descarga este repositorio.
2. Importa cada archivo `template_component_plugin_*.sql` desde **SQL Workshop > Plug-ins**.
3. Importa la aplicación mediante `f235647.sql` o el paquete `f235647.zip` desde **App Builder > Import**.
4. Ejecuta la aplicación para explorar los componentes móviles.

## Licencia

Este código se proporciona con fines educativos. Úsalo bajo tu propio riesgo.

