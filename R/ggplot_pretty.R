#' @title ggplot_pretty
#'
#' @param df The data.frame that contains the data to plot
#' @param x x axis variable
#' @param y y axis variable
#' @param title Character vector representing title of the plot
#' @param titlesize set size of title
#' @param colorby variable within dataset to color scatter points by
#' @param bkg_color set color of area outside of plot
#' @param panel_color set color of plot area
#' @param x_axis_label character vector of text that is the x axis label
#' @param y_axis_label character vector of text that is the y axis label
#' @param font character vector of font to be used on plot. Default choices are "serif", "sans", or "mono".
#' @param legend_title character vector of text to be used as legend title
#' @param legend_position character vector that is the posiiton of the legend
#'
#' @export
#'

ggplot_pretty <- function(df, x, y, title, titlesize, colorby, bkg_color,
                          panel_color, x_axis_label, y_axis_label, font,
                          legend_title, legend_position){

  require(ggplot2)

  pp <- ggplot(df, aes(x = x, y = y, colour = colorby)) +
    geom_point() +
    labs(title = title
         , x = x_axis_label
         , y = y_axis_label
         ) +
    theme(
      plot.title = element_text(size = titlesize)
      , plot.background = element_rect(fill = bkg_color)
      , panel.background = element_rect(fill = panel_color)
      , text = element_text(family = font)
      , legend.position = legend_position)
  pp + scale_colour_discrete(name = legend_title)
}



