# WARNING - Generated by {fusen} from dev/flat_full.Rmd: do not edit by hand # nolint: line_length_linter.

#' read accession files that have been fixed and confirmed correct
#'
#' @param dir a character vector of path to accession files
#'
#' @return a dataframe of fixed accession names
#' @export
#'
read_accessions <- function(dir = out_dir){
  files <- list.files(file.path(dir, "accessions", "fixed"),
                      pattern = "^accession_", full.names = TRUE)
  fixed <- purrr::map(files, readr::read_csv) %>% purrr::reduce(., dplyr::bind_rows) %>%
    dplyr::distinct(., geno, .keep_all = TRUE) %>% dplyr::arrange(old_family_code) %>% 
    dplyr::filter(!grepl("CIP317036.096", geno, ignore.case = T))
  # write_csv(out, file.path(out_dir, "accessions", paste0("missing_accessions", ".csv")))
  return(fixed)
}

