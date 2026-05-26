test_that("clamp restricts values to range", {
  expect_equal(clamp(c(1, 5, 10, 15, 20), lower = 5, upper = 15), c(5, 5, 10, 15, 15))
})

test_that("clamp handles values already within range", {
  expect_equal(clamp(c(5, 10, 15), lower = 0, upper = 20), c(5, 10, 15))
})

test_that("clamp works with decimal values", {
  expect_equal(clamp(c(-2, 0, 1.5, 3.2), lower = 0, upper = 2), c(0, 0, 1.5, 2))
})

test_that("clamp errors on non-numeric input", {
  expect_error(clamp("hello", lower = 0, upper = 10))
})

test_that("clamp errors when lower is greater than upper", {
  expect_error(clamp(c(1, 2, 3), lower = 10, upper = 5))
})
