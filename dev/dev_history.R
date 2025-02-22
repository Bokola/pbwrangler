# manage dependencies with {attachment}
# browseURL("https://cran.r-project.org/web/packages/attachment/vignettes/a-fill-pkg-description.html")

usethis::use_build_ignore("dev")

library(attachment)

usethis::use_package("st4gi")
usethis::use_package("purrr")
usethis::use_package("readxl")
usethis::use_package("here")
usethis::use_package("st4gi")

# use configuration file
attachment::att_amend_desc(update.config = T)

# Remotes field - packages not in cran

att_amend_desc()
