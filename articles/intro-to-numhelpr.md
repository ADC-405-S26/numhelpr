# Introduction to numhelpr

``` r

library(numhelpr)
```

## Why numhelpr?

Working with numbers in R often requires writing the same small formulas
over and over again. `numhelpr` solves three of the most common
annoyances.

- Formatting decimals as percentages
- Calculating percent change between two values
- Clamping values within a specified range

## The Dataset

We will use the built-in `sales_data` dataset to demonstrate each
function.

``` r

sales_data
#>       product price_old price_new rating raw_score
#> 1      Widget        10     12.50  0.873       1.8
#> 2      Gadget        25     22.00  0.654      -0.5
#> 3   Doohickey         5      5.75  0.921       3.2
#> 4 Thingamajig       100    115.00  0.102       0.7
```

## `percent()`

Converting a decimal rating to a readable percentage normally requires
multiplying by 100 and pasting a `%` sign.
[`percent()`](https://adc-405-s26.github.io/numhelpr/reference/percent.md)
does this in one step.

``` r

percent(sales_data$rating)
#> [1] "87.3%" "65.4%" "92.1%" "10.2%"
```

You can also control the number of decimal places:

``` r

percent(sales_data$rating, digits = 2)
#> [1] "87.3%" "65.4%" "92.1%" "10.2%"
```

## `percent_change()`

Calculating percent change between old and new prices normally requires
writing out the formula every time.
[`percent_change()`](https://adc-405-s26.github.io/numhelpr/reference/percent_change.md)
handles this cleanly.

``` r

percent_change(sales_data$price_old, sales_data$price_new)
#> [1]  25 -12  15  15
```

Positive values indicate a price increase, negative values a decrease.

## `clamp()`

Sometimes raw scores need to be restricted to a valid range.
[`clamp()`](https://adc-405-s26.github.io/numhelpr/reference/clamp.md)
caps values between a lower and upper bound.

``` r

clamp(sales_data$raw_score, lower = 0, upper = 2)
#> [1] 1.8 0.0 2.0 0.7
```

Any values below 0 is set to 0, and any value above 2 is set to 2.
