#' @title Firebrick4 Theme
#'
#' @export
#'


theme_firebrick4 <- function ()
{
    mytheme <- theme(plot.background = element_rect(fill = "firebrick4")

      , axis.text = element_text(colour = "lightblue")

      , axis.ticks = element_line(colour = "lightblue")

      , axis.title = element_text(colour = "lightblue")

      , panel.background = element_rect(fill = "firebrick4",
                                          colour = NA ), panel.border = element_rect(fill = NA,
                                                                                    colour = "lightblue"), panel.grid.major = element_line(colour = "lightblue"),
          panel.grid.minor = element_line(colour = "lightblue",
                                          size = 0.25), strip.background = element_rect(fill = "grey85",
                                                                                        colour = "grey20"), legend.key = element_rect(fill = "lightblue",
                                                                                                                                      colour = NA), complete = TRUE)

}
