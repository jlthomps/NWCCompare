\name{getScenarioDates}
\alias{getScenarioDates}
\title{Function to return NWC Intercomparison portal start and end dates for a given model}
\usage{
getScenarioDates(scenario_url)
}
\arguments{
  \item{scenario_url}{url for SOS service for desired model
  data}
}
\value{
getdate list of start and end dates for the chosen model
}
\description{
This function accepts a url and returns a start and end
date for modeled data
}
\examples{
scenario_url <- "http://cida.usgs.gov/nwc/thredds/sos/watersmart/stats/stats-SE-DENSE1-2.03.nc?request=GetCapabilities&service=SOS&version=1.0.0"
getScenarioDates(scenario_url)
}

