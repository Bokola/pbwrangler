% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/randomize_row_col.R
\name{randomize_res_row_col}
\alias{randomize_res_row_col}
\title{resolvable row column design: plots = row by col; test clones replicated once, checks more than once}
\usage{
randomize_res_row_col(
  clones,
  tot,
  trial,
  totReps,
  trtrepP,
  block_lst,
  rowD,
  n_dummies = 0,
  season,
  path = t_dir,
  check = c("Shangi", "Unica", "Sagitta", "Sherekea"),
  dummy = c("Unica", "Shangi"),
  to_add = 4
)
}
\arguments{
\item{clones}{a dataframe with \code{geno} column}

\item{tot}{integer. total number of unique clones/genotypes to be randomized to field}

\item{trial}{character. trial}

\item{totReps}{integer. total number of plots: row by col}

\item{trtrepP}{numeric vector. replications of \code{ins} given in the form
\verb{rep(c(vector of reps), c(vector of number of clones))} e.g.,
\code{rep(c(1,8), c(304, 4))}}

\item{block_lst}{a list specifying blocking of the field}

\item{rowD}{integer. number of rows in the field}

\item{n_dummies}{integer. number of dummies to complete a rectangular layout}

\item{season}{season of trial}

\item{path}{character specifying path to write the design}

\item{check}{a character vector of checks to fill rectangular grid}

\item{dummy}{a character vector of dummy checks to fill rectangular grid}

\item{to_add}{integer. number of checks to add to complete the rectangular grid}
}
\description{
resolvable row column design: plots = row by col; test clones replicated once, checks more than once
}
\examples{


data("ilri")
dat <- ilri \%>\% dplyr::select(geno) 
# dat \%>\% dplyr::pull() 


rrc80 <- randomize_res_row_col(
  clones = dat,
  tot = 62,
  trial = "KE24ILR-BW-ST01",
  totReps = 80,
  trtrepP = rep(c(1, 4, 3), c(55, 4, 3)),
  block_lst = list(c(16,5), c(8,5)),
  rowD = 16,
  # rowsinR = 4,
  # colsinR = 1,
  n_dummies = 3,
  season = "season-2025",
  path = NULL
  
)

head(rrc80$fieldbook)
}
