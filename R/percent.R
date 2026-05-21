
percent <- function(x, digits = 1) {
  checkmate::assert_numeric(x)
  checkmate::assert_number(digits, lower = 0)

  paste0(round(x * 100, digits), "%")
}
