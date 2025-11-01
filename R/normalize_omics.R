#' Normalize Omics Data
#'
#' @param data A numeric data frame of omics values.
#' @param method Normalization method ("zscore", "log2", "quantile").
#' @return Normalized data frame.
#' @export
normalize_omics <- function(data, method = c("zscore", "log2")) {
  method <- match.arg(method)
  if (method == "zscore") {
    data_norm <- scale(data)
  } else if (method == "log2") {
    data_norm <- log2(data + 1)
  }
  return(as.data.frame(data_norm))
}
