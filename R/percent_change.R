#' Calculate Percent Change Between Two Values
#'
#' Calculates the percentage change from an old value to a new value.
#' This is a convenient alternative to writing the formula manually
#' every time.
#'
#' @param old A numeric vector of starting values. Cannot contain zeros
#'   as this would result in division by zero.
#' @param new A numeric vector of ending values. Must be the same length
#'   as \code{old}.
#'
#' @return A numeric vector of percent changes.
#'
#' @examples
#' percent_change(10, 12.5)
#' percent_change(25, 22)
#' percent_change(c(10, 25, 5), c(12.5, 22, 5.75))
#'
#' @export
percent_change <- function(old, new) {
  checkmate::assert_numeric(old, min.len = 1)
  checkmate::assert_numeric(new, min.len = 1)
  checkmate::assert_true(length(old) == length(new))
  checkmate::assert_true(all(old != 0))

  ((new - old) / old) * 100
}
