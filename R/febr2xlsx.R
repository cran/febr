#' Write data to an Excel workbook
#' 
#' Write data downloaded from the Free Brazilian Repository for Open Soil Data -- ___febr___, 
#' \url{http://www.ufsm.br/febr} -- to an Excel workbook.
#' 
#' @param x A `data.frame` or `list` of `data.frame`s to write to the Excel workbook.
#' 
#' @param file Character string indicating the path to the output XLSX file.
#' 
#' @param row.names (optional) Logical value indicating whether the row names of `x` are to be written along 
#' with `x` to the file.
#' 
#' @param ... (optional) Further arguments passed to write function.
#' 
#' @note THIS FUNCTION IS DEPRECATED. PLEASE USE \code{\link[openxlsx]{write.xlsx}} INSTEAD.
#' 
#' @author Alessandro Samuel-Rosa \email{alessandrosamuelrosa@@gmail.com}
#' @export
#' @examples
#' \donttest{
#' # dts <-
#' #   febr(dataset = "ctb0013",
#' #        variable = "all",
#' #        merge = TRUE,
#' #        progress = FALSE, verbose = FALSE)
#' # febr2xlsx(x = dts, file = tempfile(fileext = ".xlsx"))
#' }
###############################################################################################################
febr2xlsx <-
  function (x, file, row.names = FALSE, ...) {
    
    .Deprecated(new = 'openxlsx::write.xlsx')
    
    # if (inherits(x, what = "list")) {
    # 
    #   # Multiplas tabelas
    #   for (i in 1:length(x)) {
    #     xlsx::write.xlsx(
    #       x[[i]], file = file,
    #       # sheetName = glue::glue("sheet{i}"),
    #       sheetName = paste("sheet", i, sep = ""),
    #       append = TRUE, row.names = row.names, ...)
    #   }
    # } else {
    #   # Uma tabela
    #   xlsx::write.xlsx(x, file = file, row.names = row.names, ...)
    # }
  }
