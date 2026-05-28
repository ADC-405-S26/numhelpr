# Format a Number as a Percentage

Converts a numeric value into a formatted percentage string by
multiplying by 100 and appending a percent sign. This is a more
convenient alternative to manually multiplying by 100 and pasting a
percent sign. Works with any numeric input, including decimals greater
than 1.

## Usage

``` r
percent(x, digits = 1)
```

## Arguments

- x:

  A numeric vector of any values (e.g., 0.75 for 75%, or 1.5 for 150%).

- digits:

  A non-negative number specifying the number of decimal places in the
  percentage. Defaults to `1`.

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
percent(1.5)
#> [1] "150%"
percent(200)
#> [1] "20000%"
```
