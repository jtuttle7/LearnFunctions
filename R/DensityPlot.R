#' @title Density Plot
#'
#' @param df The data.frame that contains the variable of interest
#' @param var The variable to produce a density plot of
#'
#' @export
#'

DensityPlot <- function(df, var){

  require(ggplot2)

  ggplot(df, aes(var)) +
    geom_density()                # Plot the density
}
