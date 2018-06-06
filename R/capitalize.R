#' Capitalize the first letter of a string
#'
#' Credit to the Hmisc package
#'
#' @param string Any string
#'
#' @return Input string with the first letter of the first word capitalized
#'
#' @examples
#' capitalize("scott")
#' capitalize("hello there")
#'
#' @export
capitalize <- function(string) {
  capped <- grep("^[A-Z]", string, invert = TRUE)
  substr(string[capped], 1, 1) <- toupper(substr(string[capped], 1, 1))
  return(string)
}

#' Capitalize the first letter of each word in a string
#'
#' @param string Any string
#'
#' @return Input string with the first letter of each word capitalized
#'
#' @examples
#' capitalize("scott")
#' capitalize("hello there")
#'
#' @export
capitalize_all <- function(string) {
  words <- strsplit(string, " ")[[1]]
  words <- lapply(words, capitalize)
  return(paste(words, collapse = " "))
}
