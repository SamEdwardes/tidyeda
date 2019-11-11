test_that("Correct size data frame returned", {
  expect_equal(nrow(better_summary(iris)), 4)
  expect_equal(ncol(better_summary(iris)), 8)
})
