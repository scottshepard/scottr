#' Run All Chunks
#'
#' Run all chuncks of code in a R markdown file and load them into the
#' console for exploration and development
#'
#' @export
runAllChunks <- function(rmd, envir=globalenv()){
  tempR <- tempfile(tmpdir = ".", fileext = ".R")
  on.exit(unlink(tempR))
  knitr::purl(rmd, output=tempR)
  sys.source(tempR, envir=envir)
}
