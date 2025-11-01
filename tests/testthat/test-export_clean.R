test_that("export_clean writes cleaned data correctly", {
  tmpfile <- tempfile(fileext = ".csv")
  df <- data.frame(A = c(1, 2, NA), B = c("a", "b", "c"))

  cleaned <- export_clean(df, tmpfile)
  expect_true(file.exists(tmpfile))
  expect_s3_class(cleaned, "data.frame")
})
