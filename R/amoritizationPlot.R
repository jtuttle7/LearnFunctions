#' @title amoritizationPlot
#'
#' @param P Initial Principle owed on loan
#' @param int interest rate on loan (%)
#' @param mth_pay Required monthly payment
#' @param xtra Any extra $ to be paid each month
#'
#' @import ggplot2
#' @export
#'

amoritizationPlot <- function(P=30000,int=5.0,mth_pay=500,xtra=0){

  P_init = P

  eff_int = int/100/12

  tot_int = 0
  mth_cnt = 0
  mth_trk = 0
  P_trk   = P
  int_trk = 0
  P_pay   = 0

  while (P > 0) {

    cur_int = P*eff_int
    tot_int = tot_int + cur_int
    princ_py= mth_pay - cur_int

    P = P - (princ_py+xtra)

    mth_cnt = mth_cnt + 1
    mth_trk[mth_cnt+1] = mth_cnt
    P_trk[mth_cnt+1] = P
    int_trk[mth_cnt+1] = cur_int
    P_pay[mth_cnt+1] = princ_py + xtra

  }

  allData = data.frame(mth_trk,P_trk,int_trk,P_pay)
  notlast = allData[-nrow(allData),]
  df = notlast[-1,]

  pp <- ggplot(df, aes(x=mth_trk)) +
    geom_line(aes(y = int_trk,colour = 'green')) +
    geom_line(aes(y = P_pay,colour = 'red')) +
    theme_bw() +
      labs(title = "Amoritization Schedule"
           , x = "Time (months)"
           , y = "$"
      ) +
    theme(plot.title = element_text(hjust = 0.5))

  pp + scale_color_discrete(name = " ", labels=c("Interest Payment","Principal Payment"))

}
