#' Format a Number as a Percentage
#'
#' Converts a numeric value into a formatted percentage string by
#' multiplying by 100 and appending a percent sign. This is a more
#' convenient alternative to manually multiplying by 100 and pasting
#' a percent sign. Works with any numeric input, including decimals
#' greater than 1.
#'
#' @param x A numeric vector of any values (e.g., 0.75 for 75%, or
#'   1.5 for 150%).
#' @param digits A non-negative number specifying the number of decimal
#'   places in the percentage. Defaults to \code{1}.
#'
#' @return A character vector of formatted percentage strings.
#'
#' @examples
#' percent(0.753)
#' percent(0.5)
#' percent(c(0.1, 0.25, 0.873))
#' percent(0.1234, digits = 2)
#' percent(1.5)
#' percent(200)
#'
#' @export
percent <- function(x, digits = 1) {
  checkmate::assert_numeric(x)
  checkmate::assert_number(digits, lower = 0)

  paste0(round(x * 100, digits), "%")
}
