# Instala los paquetes necesarios para el curso y comprueba que quedan disponibles.
paquetes <- c("tidyverse", "palmerpenguins", "MASS", "knitr", "rmarkdown")

pendientes <- setdiff(paquetes, rownames(installed.packages()))
if (length(pendientes) > 0) install.packages(pendientes)

faltan <- paquetes[!vapply(paquetes, requireNamespace, logical(1), quietly = TRUE)]
if (length(faltan) > 0) {
  stop("No se pudieron instalar: ", paste(faltan, collapse = ", "),
       ". Revisa los mensajes de error (suelen faltar librerías del sistema).")
}
message("Paquetes listos: ", paste(paquetes, collapse = ", "))
