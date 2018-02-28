\name{projectile_plot}
\alias{projectile_plot}
\title{Build a simple trajectory plot}
\description{Plot the trajectory of some object given the initial conditions (ignore drag)}
\usage{
projectile_plot(x0 = 0, y0 = 0, vx0 = 10, vy0 = 50, ax = 0, ay = -9.8, starttime = 0, endtime = 15)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x0}{Initial x position (m)}
  \item{y0}{Initial y position (m)}
  \item{vx0}{Initial x velocity (m/s)}
  \item{vy0}{Initial y velocity (m/s)}
  \item{ax}{Acceleration in x direction (m/s2)}
  \item{ay}{Acceleration in y direction (m/s2)}
  \item{starttime}{Beginning time for plot (sec)}
  \item{endtime}{End time for plot (sec)}
}
\examples{
projectile_plot(x0 = 0, y0 = 0, vx0 = 10, vy0 = 50, ax = 0, ay = -9.8,
    starttime = 0, endtime = 15)
    }
