## ---- echo=FALSE, results='asis', eval=TRUE-----------------------------------
pkg.info <- drop(read.dcf(file = "../DESCRIPTION", fields = c("Title", "Version", "Date")))
t <- rbind(
  c("`dictionary`", "Estrutural", "Descarregar os padrões de codificação e nomenclatura do FEBR"),
  c("`unit`", "Estrutural", "Descarregar os padrões de unidades de medida do FEBR"),
  c("`readFEBR`", "Acesso", "Descarregar tabelas de dados um ou mais conjuntos de dados"),
  c("`identification`", "Acesso", "Descarregar dados de identificação um conjunto de dados"),
  c("`metadata`", "Acesso", "Descarregar metadados de um conjunto de dados"),
  c("`observation`", "Acesso", "Descarregar dados das observações do solo de um conjunto de dados"),
  c("`layer`", "Acesso", "Descarregar dados das camadas das observações do solo de um conjunto de dados"),
  c("`febr2sf`", "Auxiliar", "Criar objeto de classe `sf`"),
  c("`goto`", "Auxiliar", "Visitar páginas do FEBR na Internet")
  )
if (!requireNamespace("knitr", quietly = TRUE)) {
  # stop("knitr package is missing")
  print(t)
} else {
  knitr::kable(
    x = t, caption = paste0("Funções disponíveis no pacote febr ", pkg.info["Version"], "."),
    col.names = c("Função", "Grupo", "Descrição"))
}

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  pad <- dictionary(variable = c("argila", "densidade", "carbono", "ph"))

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  uni <- unit(source = "Mg/m^3", target = "kg/dm^3")

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  conj <- identification(data.set = c("ctb0003", "ctb0036"))

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  meta <- metadata(data.set = c("ctb0003", "ctb0036"))

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  obs <- observation(data.set = "ctb0003", variable = "taxon")

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  cam <- layer(data.set = c("ctb0003", "ctb0036"), variable = c("argila", "carbono", "densidade"))

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  obs <- observation(data.set = "ctb0003", variable = "taxon")
#  obs <- febr2sf(obs)

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  goto(data.set = "ctb0003")

