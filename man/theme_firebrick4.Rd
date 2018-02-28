\name{theme_firebrick4}
\alias{theme_firebrick4}
\title{Change theme of a plot to firebrick4 colors}
\description{Change the background color of a plot to the color "firebrick4" in R. As well, changes all the line and text colors to a lightblue. This is done to be less "intense" on the eyes, and is easier to look at}
\usage{theme_firebrick4()}

\examples{
x = seq(0,100,1)
y = x^2
df = data.frame(x,y)
ggplot(df,aes(x,y)) +
theme_firebrick4
}
