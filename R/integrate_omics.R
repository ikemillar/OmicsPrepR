#' Integrate Proteomic and Metabolomic Data
#'
#' @param prot Proteomics data frame.
#' @param met Metabolomics data frame.
#' @return A merged data frame with common samples.
#' @export
integrate_omics <- function(prot, met) {
  common_samples <- intersect(colnames(prot), colnames(met))
  combined <- rbind(prot[, common_samples, drop = FALSE],
                    met[, common_samples, drop = FALSE])
  attr(combined, "integrated") <- TRUE
  return(combined)
}
