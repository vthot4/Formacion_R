# Formación en R: modelos estadísticos

Curso de R con teoría y laboratorios para la asignatura *Modelos estadísticos* (Grado en Inteligencia Artificial). Va de la probabilidad y la simulación a la estimación, los contrastes, los índices de riesgo, las técnicas diagnósticas, la regresión y los modelos lineales generalizados, con un nivel de grado avanzado. El repositorio irá creciendo con nuevos temas.

## Leer el libro

- Web: <https://vthot4.github.io/Formacion_R/>
- PDF para imprimir: <https://vthot4.github.io/Formacion_R/formacion-r.pdf>

Ambos se regeneran solos con cada cambio en `main` (workflow `.github/workflows/publicar.yml`).

## Índice

| Tema | Teoría | Laboratorio | Estado |
|------|--------|-------------|--------|
| 1. Introducción a R | [teoría](temas/01-introduccion-r/teoria.qmd) | [laboratorio](temas/01-introduccion-r/laboratorio.qmd) | borrador |
| 2. Estadística descriptiva | [teoría](temas/02-estadistica-descriptiva/teoria.qmd) | [laboratorio](temas/02-estadistica-descriptiva/laboratorio.qmd) | borrador |
| 3. Variables aleatorias | [teoría](temas/03-variables-aleatorias/teoria.qmd) | [laboratorio](temas/03-variables-aleatorias/laboratorio.qmd) | borrador |
| 4. Modelos de probabilidad | [teoría](temas/04-modelos-probabilidad/teoria.qmd) | [laboratorio](temas/04-modelos-probabilidad/laboratorio.qmd) | borrador |
| 5. Transformaciones de variables y simulación | [teoría](temas/05-transformaciones-simulacion/teoria.qmd) | [laboratorio](temas/05-transformaciones-simulacion/laboratorio.qmd) | borrador |
| 6. Vectores aleatorios | [teoría](temas/06-vectores-aleatorios/teoria.qmd) | [laboratorio](temas/06-vectores-aleatorios/laboratorio.qmd) | borrador |
| 7. Operaciones con variables aleatorias y teoremas límite | [teoría](temas/07-operaciones-limites/teoria.qmd) | [laboratorio](temas/07-operaciones-limites/laboratorio.qmd) | borrador |
| 8. Estimación puntual y por intervalos | [teoría](temas/08-estimacion/teoria.qmd) | [laboratorio](temas/08-estimacion/laboratorio.qmd) | borrador |
| 9. Contrastes de hipótesis | [teoría](temas/09-contrastes/teoria.qmd) | [laboratorio](temas/09-contrastes/laboratorio.qmd) | borrador |
| 10. Índices de riesgo | [teoría](temas/10-indices-riesgo/teoria.qmd) | [laboratorio](temas/10-indices-riesgo/laboratorio.qmd) | borrador |
| 11. Técnicas diagnósticas | [teoría](temas/11-tecnicas-diagnosticas/teoria.qmd) | [laboratorio](temas/11-tecnicas-diagnosticas/laboratorio.qmd) | borrador |
| 12. Regresión lineal | [teoría](temas/12-regresion/teoria.qmd) | [laboratorio](temas/12-regresion/laboratorio.qmd) | borrador |
| 13. Modelos lineales generalizados | [teoría](temas/13-modelos-lineales-generalizados/teoria.qmd) | [laboratorio](temas/13-modelos-lineales-generalizados/laboratorio.qmd) | borrador |

## Requisitos

- [R](https://cran.r-project.org/) 4.3 o superior y [RStudio](https://posit.co/download/rstudio-desktop/).
- [Quarto](https://quarto.org/docs/get-started/).
- Para el PDF: una distribución LaTeX (`quarto install tinytex`).
- Paquetes del curso: `source("scripts/instalar.R")`.

## Generar el libro

```bash
quarto render              # HTML y PDF en _book/
quarto render --to html    # solo web
quarto render --to pdf     # solo PDF imprimible
quarto preview             # vista previa en el navegador
```

## Añadir un tema nuevo

1. Copia `plantillas/tema/` a `temas/NN-nombre-del-tema/`.
2. Escribe `teoria.qmd` y `laboratorio.qmd` (empiezan con un título de nivel 2, `## Teoría` y `## Laboratorio`, y el resto de títulos bajan un nivel) y pon el título del tema en `tema.qmd`, que los une.
3. Añade `temas/NN-nombre-del-tema/tema.qmd` en `book.chapters` de `_quarto.yml`.
4. Añade una fila en la tabla de este README.
