\name{getEmptyResultArrayNWCStats}
\alias{getEmptyResultArrayNWCStats}
\title{Function to generate empty list of Arrays to use for stats}
\usage{
getEmptyResultArrayNWCStats(stats, numSites, supportedStats)
}
\arguments{
  \item{stats}{string containing stat groups desired}

  \item{numSites}{number of sites in sites string}

  \item{supportedStats}{list of all supported names}
}
\value{
emptyArrays list of empty arrays for use with stats
}
\description{
This function accepts observed and modeled data frames of
daily flow data and returns a data frame of calculated diff
statistics
}
\examples{
emptyArrays<-getEmptyResultArrayNWCStats("GoF", 2, getSupportedStatNames())
}

