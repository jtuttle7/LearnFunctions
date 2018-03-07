#' @title yourAgeIs
#'
#' @param bday The month, day and year a person was born, input in the format: "%b %d %Y" (Ex. "Mar 12 1998" or "Oct 31 1954")
#'
#' @import lubridate
#' @import stringr
#'
#' @export
#'

yourAgeIs <- function(bday = "Jul 4 1776"){

  dayToday  = substr(Sys.time(),1,10)

  daydiff = as.Date(dayToday, "%Y-%m-%d") - as.Date(bday,"%b %d %Y")

  day_num = as.numeric(daydiff,units="days")
  day_year= floor(day_num/365)

  if(day_num < 0){
    print(paste0("This person hasn't been born yet! Congratulations on your upcoming bundle of joy in ", abs(day_num), " days!"))
  } else if(day_num == 0){
    print(paste0("This person will be born today! HOORAY!!!"))
  } else{
    print(paste0("This person is ", day_year, " years old, or ", day_num, " days. Gettin' up there!"))
  }

  return(day_year)

}
