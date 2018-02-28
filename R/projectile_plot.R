#' @title projectile_plot
#'
#' @param x0 Initial x position (m)
#' @param y0 Initial y position (m)
#' @param vx0 Initial x velocity (m/s)
#' @param vy0 Initial y velocity (m/s)
#' @param ax Acceleration in x direction (m/s2)
#' @param ay Acceleration in y direction (m/s2)
#' @param starttime Beginning time for plot (sec)
#' @param endtime End time for plot (sec)
#'
#' @export
#'

projectile_plot <- function(x0=0,y0=0,vx0=10,vy0=50,ax=0,ay=-9.8,starttime=0,endtime=15){

times = seq(starttime,endtime,(endtime-starttime)/100)

ypos = y0 + vy0*times + 0.5*ay*times^2

xpos = x0 + vx0*times + 0.5*ax*times^2

ggplot() +
  geom_line(aes(x=xpos,y=ypos, colour = "Trajectory")) +
  # geom_line(aes(x=times,y=ypos)) +
  scale_color_manual(name = " ", breaks = "Trajectory", values = "blue")




}




