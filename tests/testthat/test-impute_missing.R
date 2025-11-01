test_that("impute_missing replaces NA values", {
  df <- data.frame(A = c(1, NA, 3), B = c(NA, 2, 3))
  imputed <- impute_missing(df)

  expect_false(any(is.na(imputed)))
  expect_equal(ncol(imputed), ncol(df))
})
