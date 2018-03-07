context("Testing top_records")

test_that("Number of records shown does not match requested input", {
  ss <- top_records(n = 10, mtcars, "hp")
  expect_equal(nrow(ss),10)
})
