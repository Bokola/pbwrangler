---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



# pbwrangler

<!-- badges: start -->
[![R-CMD-check](https://github.com/Bokola/pbwrangler/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Bokola/pbwrangler/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of `pbwrangler` is to curate sweet/potato breeding date for analysis and archiving to breedbase. It was developed to help document functions used to read, wrangle and write data on a daily.

## Installation

You can install the development version of `pbwrangler` from [GitHub](https://github.com/) with: 

``` r
# install.packages("devtools")
devtools::install_github("Bokola/pbwrangler")
```

## Documentation

Full documentation website on: https://Bokola.github.io/pbwrangler


## Documentation

Full documentation website on: https://Bokola.github.io/pbwrangler

## Example

You can for instance read .xlsx and .csv files using 


```r
# devtools::install_github("Bokola/pbwrangler")
library(pbwrangler)

f <- system.file("uon-trial-1.csv", package = "pbwrangler")
d <- read_workbooks(dir = NULL, file_to_read = f)
#> Error in `purrr::map()`:
#> ℹ In index: 1.
#> Caused by error:
#> ! `path` does not exist: ''
```



```r
lapply(d, function(x) x[1:5, 1:5])
#> Error in eval(expr, envir, enclos): object 'd' not found
```



