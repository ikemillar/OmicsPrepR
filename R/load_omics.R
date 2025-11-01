#' Load Proteomics or Metabolomics Data
#'
#' @param file Path to data file (.csv or .tsv)
#' @param type Type of omics data ("proteomics" or "metabolomics")
#' @return A data frame containing the omics dataset
#' @examples
#' \dontrun{
#' data <- load_omics("data.csv", type = "proteomics")
#' }
#' @export
load_omics <- function(file, type = c("proteomics", "metabolomics")) {
  type <- match.arg(type)
  data <- read.csv(file, header = TRUE, stringsAsFactors = FALSE)
  attr(data, "omics_type") <- type
  return(data)
}
