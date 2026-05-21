
#' Format a Decimal as a Percentage
#'
#'Converts a numeric decimal value into a formatted percentage string.
#'This is a more convenient alternative to manually multiplying by 100 and passing a percent sign.
#'
#' @param x A numeric vector of decimal values (e.g., 0.75 for 75%)
#' @param digits A non-negative number specifying the number of decimal places in the percentage.
#'
#' @returns A character vector of formatted percentage strings.
#'
#' @examples
#' percent(0.753)
#' percent(0.5)
#' percent(c(0.1, 0.25, 0.873))
#' percent(0.1234, digits = 2)
#'
#' @export
percent <- function(x, digits = 1) {
  checkmate::assert_numeric(x)
  checkmate::assert_number(digits, lower = 0)

  paste0(round(x * 100, digits), "%")
}
