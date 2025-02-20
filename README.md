
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pbwrangler

<!-- badges: start -->

[![R-CMD-check](https://github.com/Bokola/pbwrangler/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Bokola/pbwrangler/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/Bokola/pbwrangler/branch/main/graph/badge.svg)](https://app.codecov.io/gh/Bokola/pbwrangler?branch=main)
<!-- badges: end -->

The goal of pbwrangler is to curate sweet/potato date for analysis and
archiving to breedbase.

## Installation

You can install the development version of pbwrangler from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")

devtools::install_github("Bokola/pbwrangler")
#> Skipping install of 'pbwrangler' from a github remote, the SHA1 (2d47422c) has not changed since last install.
#>   Use `force = TRUE` to force installation
library(pbwrangler)
```

## Documentation

Full documentation website on: <https://Bokola.github.io/pbwrangler>

## Example

This is a basic example which shows you how to solve a common problem:

``` r

a <- c("sdfghj", "cvbnm")
my_left(a, 3)
#> [1] "sdf" "cvb"
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.
