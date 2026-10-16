# 🍃 Plan de Acopio Kosñipata 2026 - ENACO S.A.

> **Sistema de Automatización, Estandarización y Semaforización Operativa en VBA**

## 📌 Descripción General

Este proyecto consiste en un **sistema automatizado desarrollado en VBA (Visual Basic for Applications) para Microsoft Excel**, diseñado para la **Empresa Nacional de la Coca (ENACO S.A.) - Sede Kosñipata**.

El sistema optimiza el flujo de trabajo operativo transformando datos crudos de acopio en reportes estratégicos y visuales por sector. Permite evaluar el cumplimiento de entregas mensuales de los productores mediante una regla de negocio basada en **semáforos tricolor**, facilitando la toma de decisiones, la auditoría interna y el seguimiento del Plan de Acopio 2026.

## 🚀 Características Clave

*  Carga Dinámica e Importación Limpia: Selección de archivos externos (`.xlsx`) mediante cuadro de diálogo interactivo, creando pestañas independientes etiquetadas con marca de tiempo (ej. `DATA 154110`).

*  Depuración Estructurada de Datos: Eliminación masiva de columnas redundantes y mapeo mediante `Scripting.Dictionary` para homologar cabeceras técnicas a etiquetas comerciales legibles.

*  Conversión Automática de Unidades: Métricas de acopio convertidas de Kilogramos ($\text{kg}$) a Arrobas ($\text{@}$) aplicando el factor corporativo oficial ($11.5 \text{ kg} = 1 \text{ arroba}$).

*  Motor Analítico y Semaforización Condicional: Evaluación mensual automática por productor aplicando conjuntos de íconos y códigos de color corporativos.

*  Agrupación y Reportes Sectorizados: Estructuración dinámica de subtotales por Sector con salto de página automático para impresión o exportación a PDF.

*  Reporte Especial de Cero Entregas: Identificación y aislamiento inmediato en una pestaña independiente de productores con inactivación o cero entregas en el año.

## 🛠️ Arquitectura del Código (Módulos VBA)

El backend en VBA se compone de dos grandes bloques operativos:

### Módulo 1: Importación, Limpieza y Transformación

1. `ImportarHojaCompleta`:

   * Utiliza `Application.GetOpenFilename` con filtro estricto `.xlsx`.

   * Copia la estructura preservando el `UsedRange` original.

   * Aplica formato automático: cabeceras con fondo gris `RGB(200, 200, 200)`, bordes continuos y autoajuste inteligente de columnas (límite máximo de 25 caracteres).

2. `BorrarColumnasPorNombre`:

   * Recorrido inverso (`ultimaCol To 1 Step -1`) para evitar inconsistencias de índice al eliminar columnas irrelevantes (`EXP`, `CPDESCRIPC`, etc.).

   * Utiliza un diccionario de equivalencias para redefinir nombres de columnas (ej. `CPID PRODU` $\rightarrow$ `CÓDIGO`, `KILOS1` $\rightarrow$ `ENERO`).

3. `ConvertirKilosAArrobas`:

   * Realiza la transformación matemática masiva sobre el rango mensual (Columnas `F` a `Q`).

   * Métrica: $\text{Arrobas} = \frac{\text{Kilos}}{11.5}$.

### Módulo 2: Motor de Reportes y Semaforización

4. `ReemplazarEstadoUltimaHojaIII`:

   * **Optimización de Rendimiento:** Desactiva `ScreenUpdating`, eventos y conmuta el cálculo a manual (`xlCalculationManual`) para ejecución en milisegundos.

   * **Lógica de Semaforización:** Aplica `xl3TrafficLights1` bajo la siguiente regla de negocio:

| Estado Semáforo | Condición (Arrobas) | Significado Operativo | 
| ----- | ----- | ----- | 
| 🔴 **Rojo** | $< 5.00 \text{ @}$ | Incumplimiento de cuota mínima | 
| 🟡 **Amarillo** | $5.00 - 6.99 \text{ @}$ | Cumplimiento Parcial | 
| 🟢 **Verde** | $\ge 7.00 \text{ @}$ | Cumplimiento Pleno | 
| ⚪ **Cero Entregas** | $= 0.00 \text{ @}$ | Inactividad registrada | 

* **Maquetación Automática:** Inserta 11 filas de encabezado institucional con cuadros resúmenes consolidados antes de cada cambio de sector y genera el desglose detallado listo para impresión.

## 📑 Flujo de Operación (Guía de Uso)

```

[ Inicio: Panel de Control Excel ]
               │
               ▼
┌────────────────────────────────────────────────────────┐
│  Paso 1: Seleccionar Excel / Importar Data Cruda      │
└────────────────────────────────────────────────────────┘
               │
               ▼
┌────────────────────────────────────────────────────────┐
│  Paso 2: Depurar Columnas y Convertir Kg a Arrobas     │
└────────────────────────────────────────────────────────┘
               │
               ▼
┌────────────────────────────────────────────────────────┐
│  Paso 3: Generar Reporte Sectorizado y Semaforización  │
└────────────────────────────────────────────────────────┘
               │
               ▼
[ Resultado: Hoja Sectorizada + Hoja Productores 0 Entregas ]

```

1. **Importación:** Hacer clic en `SELECCIONAR EXCEL`, buscar la base de datos descargada del sistema central.

2. **Transformación:** Correr la depuración para limpiar campos y estandarizar la unidad a **Arrobas**.

3. **Generación de Reporte:** Presionar `GENERAR REPORTE GENERAL`. El sistema creará:

   * Una hoja organizada por sectores con la semaforización y cuadro resumen.

   * Una hoja independiente consolidando a los representantes/productores con **0 entregas**.

## 📊 Estructura de Salida del Reporte

Cada bloque sectorizado incluye un resumen ejecutivo superior con el formato:

```
========================================================================================
 RECORD DE ENTREGAS [FECHA] - SECTOR [NOMBRE DEL SECTOR]
========================================================================================
 [🟢 VERDE (>=7 @)] | [🟡 AMARILLO (5-6 @)] | [🔴 ROJO (<5 @)] | [⚪ PRODUCTORES CON 0 ENTREGAS]
----------------------------------------------------------------------------------------
       [Total]       |        [Total]       |      [Total]     |             [Total]
========================================================================================

```

## 👤 Autor y Créditos

* **Organización:** Empresa Nacional de la Coca (ENACO S.A.)

* **Sede:** Kosñipata, Cusco, Perú

* **Desarrollado:** Vladimir CP.

* **Año de Ejecución:** 2026
