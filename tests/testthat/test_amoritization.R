context("Testing amoritization")

test_that("Number of months determined is not correct", {
  ss <- amoritization(50000,3.9,821,150)
  expect_equal(ss,57)
})
