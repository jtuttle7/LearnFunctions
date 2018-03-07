#' @title daysTilBday
#'
#' @param bday The month and day of your birthday, input in the format: "%b %d" (Ex. "Mar 12" or "Oct 31")
#'
#' @import lubridate
#' @import stringr
#'
#' @export
#'

daysTilBday <- function(bday = "Jul 4"){

  dayToday  = substr(Sys.time(),1,10)
  yearToday = substr(Sys.time(),1,4)
  this_bday = c(bday,yearToday)
  nextbday  = paste(this_bday,collapse=" ")

  if (as.Date(nextbday,"%b %d %Y") < as.Date(dayToday,"%Y-%m-%d")){
    nextYear = tostring(as.numeric(yearToday)+1)
    bday_c   = c(bday,nextYear)
    nextbday = paste(bday_c,collapse=" ")
  }

  daydiff = as.Date(nextbday, "%b %d %Y") - as.Date(dayToday,"%Y-%m-%d")

  day_num = as.numeric(daydiff,units="days")

  print(paste0("There are ", day_num, " days until this birthday!"))

  return(day_num)

}

