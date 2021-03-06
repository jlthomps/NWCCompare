\name{nameStatsArray}
\alias{nameStatsArray}
\title{Function to generate names for the stats in tempArrays}
\usage{
nameStatsArray(stats, sites, tempArrays)
}
\arguments{
  \item{stats}{string containing stat groups desired}

  \item{sites}{list of usgs station ids}

  \item{tempArrays}{list of stats arrays}
}
\value{
statsout data frame of calculated statistics
}
\description{
Function to generate names for the stats in tempArrays
}
\examples{
stats<-"magnifSeven,magStat,flowStat,durStat,timStat,rateStat,otherStat"
sites<-"031401020800,031401020800"
sites<-read.csv(header=FALSE,colClasses=c("character"),text=sites)
tempArrays<-getEmptyResultArrayNWCStats(stats, 1, getSupportedStatNames())
nameStatsArray(stats, sites, tempArrays)
}

