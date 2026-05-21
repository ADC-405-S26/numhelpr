

percent_change <- function(old, new) {
  checkmate::assert_numeric(old)
  checkmate::assert_numeric(new)

  ((new-old) / old) * 100
}
