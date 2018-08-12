#' Take a dataset and split it randomly into train and test sets
#' The size of the training set is the smp_size argument
#'
#' @param data
#' @param smp_size A proportion or number of rows to be in the training set
#' @return A named list of datasets with the original train and test
#'
#' @export
splitData <- function(data, smp_size) {
  if(smp_size < 1) {
    smp_size <- round(smp_size * nrow(data))
  }

  train_ind <- sample(seq_len(nrow(data)), size = smp_size)
  train <- data[ train_ind, ]
  test  <- data[-train_ind, ]

  list("train"=train, "test"=test)
}

#' Create a randomizer column on a data frame
#'
#' TRUE/FALSE indicator on a dataset that shows if that row is to be selected
#' or not. Can be used in train/test validation.
#'
#' @param data A data frame
#' @param smp_prop Sample size proportion to be selected
#'
#' @export
randomizer <- function(data, smp_prop) {
  data$randomizer <- runif(nrow(data)) > smp_prop

  data
}
