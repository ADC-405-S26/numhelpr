test_that("percent_change calculates correct positive change", {
  expect_equal(percent_change(10, 12.5), 25)
})

test_that("percent_change calculates correct negative change", {
  expect_equal(percent_change(25, 22), -12)
})

test_that("percent_change works on vectors", {
  expect_equal(percent_change(c(10, 25, 5), c(12.5, 22, 5.75)), c(25, -12, 15))
})

test_that("percent_change errors on non-numeric input", {
  expect_error(percent_change("hello", 10))
  expect_error(percent_change(10, "hello"))
})

test_that("percent_change errors on vectors of different length", {
  expect_error(percent_change(c(10, 25, 5), c(12.5, 22, 5.75, 10)))
})

test_that("percent_change errors when old contains zero", {
  expect_error(percent_change(c(10, 0, 5), c(12.5, 22, 5.75)))
})
