---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



# pbwrangler

<!-- badges: start -->
[![R-CMD-check](https://github.com/Bokola/pbwrangler/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Bokola/pbwrangler/actions/workflows/R-CMD-check.yaml)
[![Codecov test coverage](https://codecov.io/gh/Bokola/pbwrangler/branch/main/graph/badge.svg)](https://app.codecov.io/gh/Bokola/pbwrangler?branch=main)
<!-- badges: end -->

The goal of pbwrangler is to curate sweet/potato breeding date for analysis and archiving 
to breedbase. It was developed to help document functions used to read, wrangle and write data on a daily.

## Installation

You can install the development version of pbwrangler from [GitHub](https://github.com/) with:


``` r
# install.packages("devtools")

devtools::install_github("Bokola/pbwrangler")
#> Downloading GitHub repo Bokola/pbwrangler@HEAD
#> Warning in untar2(tarfile, files, list, exdir, restore_times): skipping pax global extended headers
#> Warning in untar2(tarfile, files, list, exdir, restore_times): skipping pax global extended headers
#> These packages have more recent versions available.
#> It is recommended to update all of them.
#> Which would you like to update?
#> 
#> 1: All                                               
#> 2: CRAN packages only                                
#> 3: None                                              
#> 4: st4gi      (853c7d403... -> bc8c2610e...) [GitHub]
#> 5: data.table (1.16.4       -> 1.17.0      ) [CRAN]  
#> 
#> ── R CMD build ─────────────────────────────────────────────────────────────────────────────────────
#>          checking for file 'C:\Users\BasilOkola\AppData\Local\Temp\Rtmpoz96Rg\remotes127076f53ace\Bokola-pbwrangler-73124f6/DESCRIPTION' ...  ✔  checking for file 'C:\Users\BasilOkola\AppData\Local\Temp\Rtmpoz96Rg\remotes127076f53ace\Bokola-pbwrangler-73124f6/DESCRIPTION'
#>       ─  preparing 'pbwrangler':
#>    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   ✔  checking DESCRIPTION meta-information
#>       ─  checking for LF line-endings in source and make files and shell scripts
#>       ─  checking for empty or unneeded directories
#>       ─  looking to see if a 'data/datalist' file should be added
#>      NB: this package now depends on R (>=        NB: this package now depends on R (>= 3.5.0)
#>        WARNING: Added dependency on R >= 3.5.0 because serialized objects in
#>      serialize/load version 3 cannot be read in older versions of R.
#>      File(s) containing such objects:
#>        'pbwrangler/data/adv_clones.rda' 'pbwrangler/data/family_code.rda'
#>        'pbwrangler/data/meta.rda'
#> ─  building 'pbwrangler_0.0.0.9000.tar.gz'
#>      
#> 
#> Warning: package 'pbwrangler' is in use and will not be installed
library(pbwrangler)
```


## Documentation

Full documentation website on: https://Bokola.github.io/pbwrangler

## Documentation

Full documentation website on: https://Bokola.github.io/pbwrangler

## Example

This is a basic example which shows you how to solve a common problem:


``` r

a <- c("sdfghj", "cvbnm")
my_left(a, 3)
#> [1] "sdf" "cvb"
```


<!-- You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date. `devtools::build_readme()` is handy for this. -->

