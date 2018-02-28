\name{top_records}
\alias{top_records}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Provide the top number of records grouped by certain variables}
\usage{
top_records(n = 5, df, groupings)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{number of top records from dataset to return}
  \item{df}{data.frame object containing the data of interest}
  \item{groupings}{character vector that is the variable(s) by which to group_by for analysis}
}
\details{
I don't know why it won't work. The code below works just fine:

Wine_raw <- read.csv('C:/R/PracticalDataScience/data/winemag-data-130k-v2.csv')

test <-
  Wine_raw %>%
  group_by_at(
    vars(one_of(c("points","price")))
  ) %>%
  summarise(
    count = n()
  ) %>%
  arrange(desc(count)) %>%
  head(5)

This code is exactly the same as how I've built the function, yet it keeps giving me an error. It has to be something to do with passing a character vetor into a function, but I don't know what to do about that. Nothing online talks about actually putting a character vector as input to a function, unless it's just printing something out.
}
\value{Table summarized by specified variable and arranged by highest count to lowest count of occurence (as many as you specify)}
\examples{
## The function is currently defined as
function (n = 5, df, groupings)
{
    vals <- group_by_at(vars(one_of(groupings))) \%>\% summarize(count = n()) \%>\%
        arrange(desc(count)) \%>\% head(n)
    return(vals)
  }
}

