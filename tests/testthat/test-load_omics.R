test_that("load_omics reads data correctly", {
  tmpfile <- tempfile(fileext = ".csv")
  write.csv(data.frame(A = 1:3, B = c("x", "y", "z")), tmpfile, row.names = FALSE)

  df <- load_omics(tmpfile)
  expect_s3_class(df, "data.frame")
  expect_true(all(c("A", "B") %in% names(df)))
})
