#' @title amoritization
#'
#' @param P Initial Principle owed on loan
#' @param int interest rate on loan (%)
#' @param mth_pay Required monthly payment
#' @param xtra Any extra $ to be paid each month
#'
#' @export
#'

amoritization <- function(P=30000,int=5.0,mth_pay=500,xtra=0){

  P_init = P

  eff_int = int/100/12

  tot_int = 0
  mth_cnt = 0

  while (P > 0) {

    cur_int = P*eff_int
    tot_int = tot_int + cur_int
    princ_py= mth_pay - cur_int

    P = P - (princ_py+xtra)

    mth_cnt = mth_cnt + 1

  }


  # Round all the values to look like dollars and cents for display

  mth_pay = format(round(mth_pay,2),nsmall =2)
  xtra = format(round(xtra,2),nsmall =2)
  P_init = format(round(P_init,2),nsmall =2)
  tot_int = format(round(tot_int,2),nsmall =2)

  print(paste0("With a monthly payment of $", mth_pay, ", while paying an additional $", xtra, " to principle each month, the original loan of $", P_init, " is paid off in ", mth_cnt, " months, and $", tot_int, " is paid in interest"))

}


