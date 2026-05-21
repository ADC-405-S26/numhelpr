clamp <- function(x, lower, upper) {
  checkmate::assert_numeric(x)
  checkmate::assert_number(lower)
  checkmate::assert_number(upper)
  checkmate::assert_true(lower < upper)

  pmax(lower, pmin(upper, x))

}
