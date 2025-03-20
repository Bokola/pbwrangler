
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pbwrangler

<!-- badges: start -->

[![R-CMD-check](https://github.com/Bokola/pbwrangler/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Bokola/pbwrangler/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of `pbwrangler` is to curate sweet/potato breeding date for
analysis and archiving to breedbase. It was developed to help document
functions used to read, wrangle and write data on a daily.

## Installation

You can install the development version of `pbwrangler` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Bokola/pbwrangler")
```

## Documentation

Full documentation website on: <https://Bokola.github.io/pbwrangler>

## Documentation

Full documentation website on: <https://Bokola.github.io/pbwrangler>

## Documentation

Full documentation website on: <https://Bokola.github.io/pbwrangler>

## Documentation

Full documentation website on: <https://Bokola.github.io/pbwrangler>

## Example

You can for instance read .xlsx and .csv files using

``` r
# devtools::install_github("Bokola/pbwrangler")
library(pbwrangler)

f <- system.file("uon-trial-1.csv", package = "pbwrangler")
d <- read_workbooks(dir = NULL, file_to_read = f)
```

``` r
lapply(d, function(x) x[1:5, 1:5])
#> $`uon-trial-1`
#>           unique plot          geno entry row
#> 1 1CIP317004.001    1 CIP317004.001    12   1
#> 2 2CIP317005.036    2 CIP317005.036    14   2
#> 3 3CIP317007.103    3 CIP317007.103    20   3
#> 4 4CIP317013.120    4 CIP317013.120    23   4
#> 5 5CIP317026.004    5 CIP317026.004    28   5
```
