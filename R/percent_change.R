#' Calculate Percent Change Between Two Values
#'
#' Calculates the percentage change from an old value to a new value.
#' This is a convenient alternative to writing the formula manually every time.
#'
#' @param old A numeric vector of starting values.
#' @param new A numeric vector of ending values.
#'
#' @returns A numeric vector of percent changes.
#'
#' @examples
#' percent_change(10, 12.5)
#' percent_change(25, 22)
#' percent_change(c(10, 25, 5), c(12.5, 22, 5.75))
#'
#' @export
percent_change <- function(old, new) {
  checkmate::assert_numeric(old)
  checkmate::assert_numeric(new)

  ((new-old) / old) * 100
}
