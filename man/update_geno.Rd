% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/update_geno.R
\name{update_geno}
\alias{update_geno}
\title{Update accession names to conform to naming convention}
\usage{
update_geno(x)
}
\arguments{
\item{x}{a dataframe}
}
\value{
a dataframe
}
\description{
Update accession names to conform to naming convention
}
\examples{
f <- system.file("uon-trial-1.csv", package = "pbwrangler")
df <- read_workbooks(dir = NULL, file_to_read = f) \%>\%
  `[[`(1)
df_checked <- update_geno(df)
}
