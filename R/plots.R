#' Print a plot to a specific file path
#'
#' This is equivalent to using the export feature in the RStudio plot
#' interface, just faster and easier to program into a script.
#'
#' This function will automatically append today's date using the
#' Sys.Date function to the end of the plot.
#'
#' @param plot The plot object
#' @param name Name of the plot to be printed
#' @param w Width of plot in pixels. Default set to 547
#' @param h Height of plot in pixels. Default set to 438
#' @param path Base filepath of the directory to be printed to
#'
#' @export
printPlot <- function(plot, name = "Rplot", w = 547, h = 438, path="") {
  name <- stringr::str_replace_all(name, " ", "_")
  name <- file.path(path, paste0(name, "_", Sys.Date(), ".png"))
  png(name, width=w, height=h)
  print(plot)
  dev.off()
}
