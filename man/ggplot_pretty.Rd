\name{ggplot_pretty}
\alias{ggplot_pretty}
\title{Customize appearnace of ggplot's geom_point()}
\description{
Control many of the common features of a plot all in one, intuitive function!
}
\usage{
ggplot_pretty(df, x, y, title, titlesize, colorby, bkg_color, panel_color, x_axis_label, y_axis_label, font, legend_title, legend_position)
}
\arguments{
  \item{df}{The data.frame that contains the data to plot}
  \item{x}{x axis variable}
  \item{y}{y axis variable}
  \item{title}{Character vector representing title of the plot}
  \item{titlesize}{set size of title}
  \item{colorby}{must be a variable within dataset to color scatter points by}
  \item{bkg_color}{set color of area outside of plot}
  \item{panel_color}{set color of plot area}
  \item{x_axis_label}{character vector of text that is the x axis label}
  \item{y_axis_label}{character vector of text that is the y axis label}
  \item{font}{character vector of font to be used on plot. Default choices are "serif", "sans", or "mono".}
  \item{legend_title}{character vector of text to be used as legend title}
  \item{legend_position}{character vector that is the posiiton of the legend}
}

\examples{
df = mtcars

x = df$hp
y = df$disp

title = "Engine Displacement vs Horsepower"
titlesize = 20
colorby = factor(df$cyl)
bkg_color = "lightblue"
panel_color = "bisque"
x_axis_label = "Engine Horsepower"
y_axis_label = "Engine Displacement"
font = "serif"
legend_title = "Engine Cylinders"
legend_position = "bottom"

ggplot_pretty(df, x, y, title, titlesize, colorby, bkg_color,
                          panel_color, x_axis_label, y_axis_label, font,
                          legend_title, legend_position)

## The function is currently defined as
function (df, x, y, title, titlesize, colorby, bkg_color, panel_color,
    x_axis_label, y_axis_label, font, legend_title, legend_position)
{
    require(ggplot2)
    pp <- ggplot(df, aes(x = x, y = y, color = colorby)) + geom_point() +
        labs(title = title, x = x_axis_label, y = y_axis_label) +
        theme(plot.title = element_text(size = titlesize), plot.background = element_rect(fill = bkg_color),
            panel.background = element_rect(fill = panel_color),
            text = element_text(family = font), legend.position = legend_position)
    pp + scale_colour_discrete(name = legend_title)
  }
}

