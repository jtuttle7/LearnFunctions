context("Testing samplingDist")

test_that("length of samplingDist output does not match parameter", {
  ss <- samplingDist(samples = 50)
  expect_equal(length(ss),50)
})


test_that("Deviations from population mean are extreme", {
  ss <- samplingDist(samples = 5)
  expect_true(all(abs(ss) <= 5))
})

test_that("Error messages are not working properly", {
  testthat::expect_error(samplingDist(0)
    , "The number of samples needs to be greater than 0")

  testthat::expect_error(samplingDist(sd=0)
    , "The standard deviation cannot be <= 0")
})




