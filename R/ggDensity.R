#' @title Apply a filter to a data.frame
#'
#' @param df data frame
#'
#' @export
#'
#' @import dplyr
#' @import ggplot2

ggDensity <- function(df = mtcars, filter.var = 'cyl', filter.val = 6, variable = 'wt'){

  if('factor' %in% class(df[,filter.var])){
    filter <- paste0(filter.var, " == '", filter.val, "'")
  } else {
    filter <- paste0(filter.var, " == ", filter.val)
  }

  filter <- paste0(filter.var, " == ", filter.val)

  df2 <-
    df %>%
    filter_(filter)

  ggplot(df2,aes_string(x = noquote(variable))) + geom_density()



}

