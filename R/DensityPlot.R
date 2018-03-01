#' @title Density Plot
#'
#' @param df The data.frame that contains the variable of interest
#' @param var The variable to produce a density plot of
#'
#' @export
#'
#' @import ggplot2
#'

DensityPlot <- function(df, var){

  ggplot(df, aes_string(var)) +
    geom_density(fill = 'navy blue') +
    theme_bw()# Plot the density

}
