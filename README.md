# Formación en R: estadística básica

Curso de R con teoría y laboratorios. El repositorio irá creciendo con nuevos temas, incluidos los específicos de la carrera.

## Índice

| Tema | Teoría | Laboratorio | Estado |
|------|--------|-------------|--------|
| 1. Introducción a R | [teoría](temas/01-introduccion-r/teoria.qmd) | [laboratorio](temas/01-introduccion-r/laboratorio.qmd) | borrador |
| 2. Estadística descriptiva | [teoría](temas/02-estadistica-descriptiva/teoria.qmd) | [laboratorio](temas/02-estadistica-descriptiva/laboratorio.qmd) | borrador |
| 3. Probabilidad y distribuciones | [teoría](temas/03-probabilidad/teoria.qmd) | [laboratorio](temas/03-probabilidad/laboratorio.qmd) | borrador |
| 4. Inferencia | [teoría](temas/04-inferencia/teoria.qmd) | [laboratorio](temas/04-inferencia/laboratorio.qmd) | borrador |
| 5. Correlación y regresión | [teoría](temas/05-regresion/teoria.qmd) | [laboratorio](temas/05-regresion/laboratorio.qmd) | borrador |

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
