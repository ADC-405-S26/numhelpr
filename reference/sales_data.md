# Sales Data for numhelpr Examples

A small dataset containing product sales information that can be used to
practice the functions in the numhelpr package.

## Usage

``` r
sales_data
```

## Format

A data frame with 4 rows and 5 variables:

- product:

  Name of the product

- price_old:

  Original price of the product, in US dollars

- price_new:

  New price of the product, in US dollars

- rating:

  Customer satisfaction rating, as a decimal between 0 and 1

- raw_score:

  Raw performance score, in arbitrary units

## Examples

``` r
sales_data
#>       product price_old price_new rating raw_score
#> 1      Widget        10     12.50  0.873       1.8
#> 2      Gadget        25     22.00  0.654      -0.5
#> 3   Doohickey         5      5.75  0.921       3.2
#> 4 Thingamajig       100    115.00  0.102       0.7
percent(sales_data$rating)
#> [1] "87.3%" "65.4%" "92.1%" "10.2%"
percent_change(sales_data$price_old, sales_data$price_new)
#> [1]  25 -12  15  15
clamp(sales_data$raw_score, lower = 0, upper = 2)
#> [1] 1.8 0.0 2.0 0.7
```
