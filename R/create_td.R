# WARNING - Generated by {fusen} from dev/flat_full.Rmd: do not edit by hand # nolint: line_length_linter.

#' A wrapper for `statgenSTA::createTD` for a `row-col` design model fitting
#'
#' @param x datframe of trial data
#' @param design character vector of experimental design e.g `"rowcol"`, `"rcbd"`
#'
#' @return a list object of class TD
#' @export 
#'
create_td <-  function(x, design){
  statgenSTA::createTD(
    x,
    genotype = "geno",
    trial = "trial",
    loc = "loc",
    year = "year",
    repId = "rep",
    rowCoord = "row",
    colCoord = "col",
    rowId = "row",
    colId = "col"
    ,trDesign = design
  )
}

#' extract BLUPs from a `REML` model
#'
#' @param x an object of class `STA` from `fit_td`
#' @param pred a character vector of predictors: `c("BLUEs", "seBLUEs)` or `c("BLUPs", "seBLUPs)`
#'
#' @return a dataframe
#' @export
#'
extract_blups <- function(x, pred){
  statgenSTA::STAtoTD(
    x,
    what = pred,
    keep = "trial"
  )
}



#' A wrapper for `statgenSTA::fitTD` for REML analysis
#'
#' @param x TD object generated by `create_td`
#' @param trait a character vector phenotypic traits to model e.g `ttyna`
#' @param spatial logical, whether to fit spatial structure
#'
#' @return an object of class STA
#' @export
#' @seealso [create_td()]
fit_td <- function(x, trait, spatial = FALSE){
  statgenSTA::fitTD(
    x,
    traits = trait,
    design = "res.rowcol"
    ,what = c("fixed", "random"),
    spatial = spatial
  )
}

#' Join predictor and heritability (`h2`) data objects to one dataframe
#'
#' @param x first data object either predictors or `h2`
#' @param y  second data object 
#'
#' @return a dataframe
#' @export
#'
#' @examples
#' f <- system.file("uon-trial-1.csv", package = "pbwrangler")
#' df <- read_workbooks(dir = NULL, file_to_read = f) %>%
#'   purrr::map(
#'     ., ~dplyr::mutate(
#'       ., year = "2024", loc = "UON", trial = "lbht"
#'     )
#'   ) %>%
#'   purrr::map(
#'     .,
#'     ~ dplyr::mutate(
#'       .,
#'       space_between_ridges = "0.75m",
#'       space_between_plants_in_ridges = "0.3m",
#'       number_of_plants_per_plot = 10
#'     )
#'   )
#' df_out <- pre_process_trials(df) |> process_trials() %>%
#'   purrr::map(., run_data_processes) %>% `[[`(1) 
#' # trial design object
#' TD <- create_td(df_out, design = "rowcol")
#' # fit 
#' fit_TD <- fit_td(TD, trait = "mtwp")
#' # extract predictions
#'
#' pred_TD <- extract_blups(fit_TD, pred = c("BLUEs", "seBLUEs"))
#'
#' pred_TD[[1]][1:5,]
#'
join_by_keys <- function(x, y){
  keys <- unique(c(names(x), names(y)))
  out <- purrr::map2(
    x[keys], y[keys], dplyr::full_join
  ) %>% magrittr::set_names(keys)
  out
}

#' join data and meta data 
#'
#' @param data_lst a list of trial dfs
#' @param meta_lst a list of accompanying meta data
#'
#' @return a list
#' @export
#'
#' @examples
join_data_meta <- function(data_lst, meta_lst){
  names_lst = names(data_lst)
  meta <- meta_lst[names(meta_lst) %in% names(data_lst)]
  df_lst <- purrr::imap(
    data_lst, ~ .x %>% dplyr::mutate(
      trial_name = .y
    )
  )
  out = vector("list", length = length(data_lst))
  for(i in seq(data_lst)){
    pattern = names(data_lst)[i]
    out[[i]] <- dplyr::left_join(df_lst[[pattern]], meta[[pattern]])
  }
   names(out) <- names_lst
   return(out)
}

