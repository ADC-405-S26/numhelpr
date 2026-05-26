test_that("percent returns correct formatted string", {
  expect_equal(percent(0.753), "75.3%")
  expect_equal(percent(0.5), "50%")
})

test_that("percent works on vectors", {
  expect_equal(percent(c(0.1, 0.25)), c("10%", "25%"))
})

test_that("percent respects digits argument", {
  expect_equal(percent(0.1234, digits = 2), "12.34%")
})

test_that("percent errors on non-numeric input", {
  expect_error(percent("hello"))
  expect_error(percent(TRUE))
})

