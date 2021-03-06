\name{rsr}
\alias{rsr}
\title{Function to return the ratio of the root mean square error to the standard deviation}
\usage{
rsr(timeseries1, timeseries2)
}
\arguments{
  \item{timeseries1}{data frame containing value data for
  the observed timeseries}

  \item{timeseries2}{data frame containing value data for
  the modeled timeseries}
}
\value{
rsr root mean square error/standard deviation for the two
timeseries
}
\description{
This function accepts observed and modeled daily data
series and returns the root mean square error/standard
deviation
}
\examples{
obs_data<-obs_data
mod_data<-mod_data
timeseries1<-obs_data$discharge
timeseries2<-mod_data$discharge
rsr(timeseries1,timeseries2)
}

