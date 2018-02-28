\name{DensityPlot}
\alias{DensityPlot}
\title{Density Plot of a specified variable}
\description{Generate a density plot of a specific variable, which is contained within a data.frame object}
\usage{DensityPlot(df, var)}

\arguments{
  \item{df}{The data.frame object that contains the variable of interest}
  \item{var}{The path to the variable of interest, must be the data.frame connected to the variable itself}
}

\examples{
DensityPlot(diamonds, diamonds$carat)
}
