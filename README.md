
<!-- README.md is generated from README.Rmd. Please edit that file -->

# assignmentB2YiminWang

The goal of assignmentB2YiminWang is to provide a function to rescale
numeric vectors proportionally according to a user-specified target
interval.

## Installation

You can install the development version of assignmentB2YiminWang from
[GitHub](https://github.com/UBC-STAT545-F2026/assignmentB2YiminWang)
with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-STAT545-F2026/assignmentB2YiminWang", ref = "0.1.0")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(assignmentB2YiminWang)

# Rescale to default [0, 1] range
rescale_min_max(c(10, 25, 40, 58))
#> [1] 0.0000 0.3125 0.6250 1.0000

# Rescale to [0, 100] while ignoring NA values
rescale_min_max(c(2, NA, 7, 11, 50), y = c(0, 100), na.rm = TRUE)
#> [1]   0.00000        NA  10.41667  18.75000 100.00000
```
