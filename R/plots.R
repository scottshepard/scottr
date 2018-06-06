#' Print a plot to a specific file path
#'
#' This is equivalent to using the export feature in the RStudio plot
#' interface, just faster and easier to program into a script.
#'
#' This function will automatically append today's date using the
#' Sys.Date function to the end of the plot.
#'
#' Many of the eSpark scripts are district specific so this
#' is a way of ensuring that the district name is printed in the plot name
#' without manually specificying each time.
#' If no name is given the function will default to Rplot
#'
#' @param plot The plot object
#' @param name Name of the plot to be printed
#' @param w Width of plot in pixels. Default set to 547
#' @param h Height of plot in pixels. Default set to 438
#'
#' @export
printPlot <- function(plot, name = "Rplot", w = 547, h = 438) {
  name <- stringr::str_replace_all(name, " ", "_")
  name <- paste0(name, "_", Sys.Date(), ".png")
  png(name, width=w, height=h)
  print(plot)
  dev.off()
}
