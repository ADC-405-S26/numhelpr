# Calculate Percent Change Between Two Values

Calculates the percentage change from an old value to a new value. This
is a convenient alternative to writing the formula manually every time.

## Usage

``` r
percent_change(old, new)
```

## Arguments

- old:

  A numeric vector of starting values. Cannot contain zeros as this
  would result in division by zero.

- new:

  A numeric vector of ending values. Must be the same length as `old`.

## Value

A numeric vector of percent changes.

## Examples

``` r
percent_change(10, 12.5)
#> [1] 25
percent_change(25, 22)
#> [1] -12
percent_change(c(10, 25, 5), c(12.5, 22, 5.75))
#> [1]  25 -12  15
```
