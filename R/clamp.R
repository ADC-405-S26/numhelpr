#' Clamp Numeric Values Between a Minimum and Maximum
#'
#' Restricts numeric values to a specified range by replacing any values
#' below the lower bound with the lower bound, and any value above the
#' upper bound with the upper bound.
#'
#' @param x A numeric vector
#' @param lower A single numeric value specifying the minimum allowed value.
#' @param upper A single numeric value specifying the maximum allowed value
#'
#' @returns A numeric vector with values clamped together between \code{lower} and
#'   \code{upper}.
#'
#' @examples
#' clamp(c(1, 5, 10, 15, 20), lower = 5, upper = 15)
#' clamp(c(-2, 0, 1.5, 3.2), lower = 0, upper = 2)
#'
#'
#' @export
clamp <- function(x, lower, upper) {
  checkmate::assert_numeric(x)
  checkmate::assert_number(lower)
  checkmate::assert_number(upper)
  checkmate::assert_true(lower < upper)

  pmax(lower, pmin(upper, x))

}
