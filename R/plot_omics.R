#' Plot Omics Data (PCA, Heatmap, or Density)
#'
#' Visualizes omics datasets using PCA, heatmap, or density plot options.
#'
#' @param data A numeric matrix or data frame containing omics measurements.
#' @param type A character string specifying the visualization type. One of "pca", "heatmap", or "density".
#'
#' @return A plot object (for PCA and density) or a heatmap visualization.
#' @examples
#' \dontrun{
#' data <- matrix(rnorm(100), nrow = 10)
#' plot_omics(data, type = "pca")
#' }
#' @importFrom stats prcomp heatmap
#' @importFrom ggplot2 ggplot aes geom_point geom_density theme_minimal
#' @export
utils::globalVariables(c("PC1", "PC2", "value"))
plot_omics <- function(data, type = c("pca", "heatmap", "density")) {
  type <- match.arg(type)

  if (type == "pca") {
    pca <- stats::prcomp(data, scale. = TRUE)
    df <- data.frame(PC1 = pca$x[, 1], PC2 = pca$x[, 2])
    ggplot2::ggplot(df, ggplot2::aes(PC1, PC2)) +
      ggplot2::geom_point() +
      ggplot2::theme_minimal()
  } else if (type == "heatmap") {
    stats::heatmap(as.matrix(data))
  } else {
    df <- data.frame(value = as.vector(as.matrix(data)))
    ggplot2::ggplot(df, ggplot2::aes(value)) +
      ggplot2::geom_density(fill = "blue", alpha = 0.3) +
      ggplot2::theme_minimal()
  }
}
