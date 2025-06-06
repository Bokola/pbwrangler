% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/recode_var.R
\name{filter_geno}
\alias{filter_geno}
\title{Filter clone ids to rid of non-compliant formats}
\usage{
filter_geno(x, pattern = "x|^\\\\*")
}
\arguments{
\item{x}{a dataframe}

\item{pattern}{a character vector containing regular expression}
}
\value{
a dataframe
}
\description{
Filter clone ids to rid of non-compliant formats
}
