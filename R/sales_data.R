#' Sales Data for numhelpr Examples
#'
#' A small dataset containing product sales information that can be used
#' to practice the functions in the numhelpr package.
#'
#' @format A data frame with 4 rows and 5 variables:
#' \describe{
#'   \item{product}{Name of the product}
#'   \item{price_old}{Original price of the product, in US dollars}
#'   \item{price_new}{New price of the product, in US dollars}
#'   \item{rating}{Customer satisfaction rating, as a decimal between 0 and 1}
#'   \item{raw_score}{Raw performance score, in arbitrary units}
#' }
#'
#' @examples
#' sales_data
#' percent(sales_data$rating)
#' percent_change(sales_data$price_old, sales_data$price_new)
#' clamp(sales_data$raw_score, lower = 0, upper = 2)
"sales_data"
