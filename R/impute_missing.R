#' Impute Missing Values in Omics Data
#'
#' @param data Omics data frame with missing values.
#' @param method Imputation method ("mean", "median").
#' @return Data frame with imputed values.
#' @export
impute_missing <- function(data, method = c("mean", "median")) {
  method <- match.arg(method)
  for (i in seq_along(data)) {
    if (method == "mean") {
      data[is.na(data[, i]), i] <- mean(data[, i], na.rm = TRUE)
    } else {
      data[is.na(data[, i]), i] <- median(data[, i], na.rm = TRUE)
    }
  }
  return(data)
}
