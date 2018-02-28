\name{amoritization}
\alias{amoritization}
\title{
Calculate amount paid to interest and time to pay off a loan from amoritization schedule
}
\description{
Determine how long it will take to pay off a loan of a given amount, with a specified interest rate, while making extra payments to principle each month. Also calculate the total amount paid toward interest over the life of the loan, assuming that interest is compounded monthly (for easier calculation).
}
\usage{amoritization(P = 30000, int = 5, mth_pay = 500, xtra = 0)}
\arguments{
  \item{P}{Initial Principle owed on loan}
  \item{int}{interest rate on loan (\%) }
  \item{mth_pay}{Required monthly payment}
  \item{xtra}{Any extra $ to be paid each month}}
\examples{
amoritization(P=31156,int=3.95,mth_pay=487.53,xtra=500)

## The function is currently defined as
function (P = 30000, int = 5, mth_pay = 500, xtra = 0)
{
    P_init = P
    eff_int = int/100/12
    tot_int = 0
    mth_cnt = 0
    while (P > 0) {
        cur_int = P * eff_int
        tot_int = tot_int + cur_int
        princ_py = mth_pay - cur_int
        P = P - (princ_py + xtra)
        mth_cnt = mth_cnt + 1
    }
    mth_pay = format(round(mth_pay, 2), nsmall = 2)
    xtra = format(round(xtra, 2), nsmall = 2)
    P_init = format(round(P_init, 2), nsmall = 2)
    tot_int = format(round(tot_int, 2), nsmall = 2)
    print(paste0("With a monthly payment of $", mth_pay, ", while paying an additional $",
        xtra, " to principle each month, the original loan of $",
        P_init, " is paid off in ", mth_cnt, " months, and $",
        tot_int, " is paid in interest"))
  }
}
