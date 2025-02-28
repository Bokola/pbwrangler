
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pbwrangler

<!-- badges: start -->

[![R-CMD-check](https://github.com/Bokola/pbwrangler/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Bokola/pbwrangler/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/Bokola/pbwrangler/branch/main/graph/badge.svg)](https://app.codecov.io/gh/Bokola/pbwrangler?branch=main)
<!-- badges: end -->

The goal of pbwrangler is to curate sweet/potato breeding date for
analysis and archiving to breedbase. It was developed to help document
functions used to read, wrangle and write data on a daily.

## Installation

You can install the development version of pbwrangler from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")

devtools::install_github("Bokola/pbwrangler")
#> Warning in untar2(tarfile, files, list, exdir, restore_times): skipping pax
#> global extended headers
#> Warning in untar2(tarfile, files, list, exdir, restore_times): skipping pax
#> global extended headers
#> st4gi      (853c7d403... -> bc8c2610e...) [GitHub]
#> data.table (1.16.4       -> 1.17.0      ) [CRAN]
#> package 'data.table' successfully unpacked and MD5 sums checked
#> Warning: cannot remove prior installation of package 'data.table'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying
#> C:\Users\BasilOkola\AppData\Local\R\cache\R\renv\library\pbwrangler-f866a8e1\R-4.3\x86_64-w64-mingw32\00LOCK\data.table\libs\x64\data_table.dll
#> to
#> C:\Users\BasilOkola\AppData\Local\R\cache\R\renv\library\pbwrangler-f866a8e1\R-4.3\x86_64-w64-mingw32\data.table\libs\x64\data_table.dll:
#> Permission denied
#> Warning: restored 'data.table'
#> 
#> The downloaded binary packages are in
#>  C:\Users\BasilOkola\AppData\Local\Temp\RtmpSOICyK\downloaded_packages
#> Warning in untar2(tarfile, files, list, exdir, restore_times): skipping pax
#> global extended headers
#> Warning in untar2(tarfile, files, list, exdir, restore_times): skipping pax
#> global extended headers
#> fastmap     (1.1.1  -> 1.2.0 ) [CRAN]
#> fs          (1.6.3  -> 1.6.5 ) [CRAN]
#> digest      (0.6.34 -> 0.6.37) [CRAN]
#> jsonlite    (1.8.8  -> 1.9.0 ) [CRAN]
#> cachem      (1.0.8  -> 1.1.0 ) [CRAN]
#> later       (1.3.2  -> 1.4.1 ) [CRAN]
#> bslib       (0.7.0  -> 0.9.0 ) [CRAN]
#> commonmark  (1.9.1  -> 1.9.2 ) [CRAN]
#> fontawesome (0.5.2  -> 0.5.3 ) [CRAN]
#> httpuv      (1.6.14 -> 1.6.15) [CRAN]
#> zip         (2.3.1  -> 2.3.2 ) [CRAN]
#> package 'fastmap' successfully unpacked and MD5 sums checked
#> package 'fs' successfully unpacked and MD5 sums checked
#> package 'digest' successfully unpacked and MD5 sums checked
#> package 'jsonlite' successfully unpacked and MD5 sums checked
#> package 'cachem' successfully unpacked and MD5 sums checked
#> package 'later' successfully unpacked and MD5 sums checked
#> package 'bslib' successfully unpacked and MD5 sums checked
#> package 'commonmark' successfully unpacked and MD5 sums checked
#> package 'fontawesome' successfully unpacked and MD5 sums checked
#> package 'httpuv' successfully unpacked and MD5 sums checked
#> package 'zip' successfully unpacked and MD5 sums checked
#> 
#> The downloaded binary packages are in
#>  C:\Users\BasilOkola\AppData\Local\Temp\RtmpSOICyK\downloaded_packages
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#>          checking for file 'C:\Users\BasilOkola\AppData\Local\Temp\RtmpSOICyK\remotes4b041db46158\reyzaguirre-st4gi-bc8c261/DESCRIPTION' ...  ✔  checking for file 'C:\Users\BasilOkola\AppData\Local\Temp\RtmpSOICyK\remotes4b041db46158\reyzaguirre-st4gi-bc8c261/DESCRIPTION'
#>       ─  preparing 'st4gi': (338ms)
#>    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
#>       ─  checking for LF line-endings in source and make files and shell scripts
#>       ─  checking for empty or unneeded directories
#>       ─  building 'st4gi_3.3.2.tar.gz'
#>      
#> 
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#>          checking for file 'C:\Users\BasilOkola\AppData\Local\Temp\RtmpSOICyK\remotes4b046454349c\Bokola-pbwrangler-97a0653/DESCRIPTION' ...     checking for file 'C:\Users\BasilOkola\AppData\Local\Temp\RtmpSOICyK\remotes4b046454349c\Bokola-pbwrangler-97a0653/DESCRIPTION' ...   ✔  checking for file 'C:\Users\BasilOkola\AppData\Local\Temp\RtmpSOICyK\remotes4b046454349c\Bokola-pbwrangler-97a0653/DESCRIPTION'
#>       ─  preparing 'pbwrangler':
#>    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   ✔  checking DESCRIPTION meta-information
#>       ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>   ─  looking to see if a 'data/datalist' file should be added
#>      NB: this package now depends on R (>=        NB: this package now depends on R (>= 3.5.0)
#>        WARNING: Added dependency on R >= 3.5.0 because serialized objects in
#>      serialize/load version 3 cannot be read in older versions of R.
#>      File(s) containing such objects:
#>        'pbwrangler/data/adv_clones.rda' 'pbwrangler/data/family_code.rda'
#>        'pbwrangler/data/meta.rda'
#> ─  building 'pbwrangler_0.0.0.9000.tar.gz'
#>      
#> 
library(pbwrangler)
```

## Documentation

Full documentation website on: <https://Bokola.github.io/pbwrangler>

## Documentation

Full documentation website on: <https://Bokola.github.io/pbwrangler>

## Example

This is a basic example which shows you how to solve a common problem:

``` r

a <- c("sdfghj", "cvbnm")
my_left(a, 3)
#> [1] "sdf" "cvb"
```

<!-- You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date. `devtools::build_readme()` is handy for this. -->
