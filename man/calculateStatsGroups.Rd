\name{calculateStatsGroups}
\alias{calculateStatsGroups}
\title{Function to calculate the statistics for a given data set}
\usage{
calculateStatsGroups(stats, sites, startdate, enddate, X_DATA_FUN, x_args,
  DRAIN_AREA_FUN, drain_args, drain_site_param = NULL)
}
\arguments{
  \item{stats}{string containing stat groups desired}

  \item{sites}{list of usgs station ids}

  \item{startdate}{startdate for pulling data}

  \item{enddate}{enddate for pulling data}

  \item{X_DATA_FUN}{function for pulling data from x_args}

  \item{x_args}{urls for pulling observed data}

  \item{DRAIN_AREA_FUN}{function for pulling drainage area}

  \item{drain_args}{url for pulling drainage area}

  \item{drain_site_param}{string for use w/ multiple drain
  urls}
}
\value{
statsout data frame of calculated statistics
}
\description{
This function accepts observed and modeled data frames of
daily flow data and returns a data frame of calculated diff
statistics
}

