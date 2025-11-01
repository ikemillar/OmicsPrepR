#' @title Export Cleaned Omics Data
#' @description Exports processed omics data to a CSV file for downstream analysis.
#' @param data A data frame containing the cleaned omics data.
#' @param file_path A character string specifying the output file path.
#' @return A message confirming export success.
#' @examples
#' \dontrun{
#' export_clean(my_cleaned_data, "output/cleaned_data.csv")
#' }
#' @export
export_clean <- function(data, file_path) {
  cleaned <- data[complete.cases(data), ]
  utils::write.csv(cleaned, file_path, row.names = FALSE)
  message(paste("Data exported successfully to", file_path))
  return(cleaned)
}
