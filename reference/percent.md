# Format a Decimal as a Percentage

Converts a numeric decimal value into a formatted percentage string.
This is a more convenient alternative to manually multiplying by 100 and
passing a percent sign.

## Usage

``` r
percent(x, digits = 1)
```

## Arguments

- x:

  A numeric vector of decimal values (e.g., 0.75 for 75%)

- digits:

  A non-negative number specifying the number of decimal places in the
  percentage.

## Value

A character vector of formatted percentage strings.

## Examples

``` r
percent(0.753)
#> [1] "75.3%"
percent(0.5)
#> [1] "50%"
percent(c(0.1, 0.25, 0.873))
#> [1] "10%"   "25%"   "87.3%"
percent(0.1234, digits = 2)
#> [1] "12.34%"
```
