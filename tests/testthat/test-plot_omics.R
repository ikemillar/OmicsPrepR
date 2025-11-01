test_that("plot_omics returns a ggplot object", {
  df <- data.frame(PC1 = rnorm(10), PC2 = rnorm(10), value = rnorm(10))
  p <- plot_omics(df)

  expect_s3_class(p, "ggplot")
})
