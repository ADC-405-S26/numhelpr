# Clamp Numeric Values Between a Minimum and Maximum

Restricts numeric values to a specified range by replacing any value
below the lower bound with the lower bound, and any value above the
upper bound with the upper bound. Base R has no built-in function for
this common operation.

## Usage

``` r
clamp(x, lower, upper)
```

## Arguments

- x:

  A numeric vector.

- lower:

  A single numeric value specifying the minimum allowed value.

- upper:

  A single numeric value specifying the maximum allowed value.

## Value

A numeric vector with values clamped between `lower` and `upper`.

## Details

Clamping is useful in many real-world scenarios where values must stay
within a valid range — for example, ensuring model predictions stay
between 0 and 1, keeping sensor readings within a safe operating range,
or preventing scores from exceeding a maximum value. Unlike filtering,
clamping preserves all data points by adjusting extreme values to the
boundary rather than removing them.

## Examples

``` r
clamp(c(1, 5, 10, 15, 20), lower = 5, upper = 15)
#> [1]  5  5 10 15 15
clamp(c(-2, 0, 1.5, 3.2), lower = 0, upper = 2)
#> [1] 0.0 0.0 1.5 2.0
```
