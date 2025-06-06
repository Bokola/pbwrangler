% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/format_accessions.R
\name{format_accessions}
\alias{format_accessions}
\title{organize accessions to export}
\usage{
format_accessions(
  x,
  dir = t_dir,
  sub_dir = file.path("Archive", "data-quality-assessment", "accessions"),
  season,
  filename = "accession_miss"
)
}
\arguments{
\item{x}{a list of trial dataframes for a \code{season}}

\item{dir}{output directory}

\item{sub_dir}{output sub directory}

\item{season}{trial season}

\item{filename}{name of output file}
}
\value{
a dataframe
}
\description{
organize accessions to export
}
