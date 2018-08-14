#' Statistical Mode
#' 
#' Calculate the mode of a vector
#' 
#' @export
statsmode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}