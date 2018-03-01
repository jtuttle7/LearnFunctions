#' @title top_records
#'
#' @param n number of top records from dataset to return
#' @param df data.frame object containing the data of interest
#' @param groupings character vector that is the variable(s) by which to group_by for analysis
#'
#' @export
#'

top_records <- function(n = 5, df, groupings){

  vals <-
    df %>%
    group_by_at(vars(groupings)) %>%
    summarize(
      count = n()
      ) %>%
    arrange(desc(count)) %>%
    head(n)

  return(vals)

}






