# Clamp Numeric Values Between a Minimum and Maximum

Restricts numeric values to a specified range by replacing any values
below the lower bound with the lower bound, and any value above the
upper bound with the upper bound.

## Usage

``` r
clamp(x, lower, upper)
```

## Arguments

- x:

  A numeric vector

- lower:

  A single numeric value specifying the minimum allowed value.

- upper:

  A single numeric value specifying the maximum allowed value

## Value

A numeric vector with values clamped together between `lower` and
`upper`.

## Examples

``` r
clamp(c(1, 5, 10, 15, 20), lower = 5, upper = 15)
#> [1]  5  5 10 15 15
clamp(c(-2, 0, 1.5, 3.2), lower = 0, upper = 2)
#> [1] 0.0 0.0 1.5 2.0

```
