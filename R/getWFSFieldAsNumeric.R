#' Function to return the drainage area as a numeric
#' 
#' @param wfs_url url of WFS
#' @param wfsTypename type to paste into url
#' @param wfsProperty property to paste into url
#' @param wfsLiteral site_no to paste into url
#' @param wfsPropertyname property name to paste into url
#' @return drain_area numeric of site drainage area
#' @export
#' @examples
#' wfs_url<-'http://cida.usgs.gov/nwc/geoserver/NHDPlusHUCs/ows'
#' wfsTypename='NHDPlusHUCs:huc12_SE_Basins_v2'
#' wfsProperty='NHDPlusHUCs:HUC12'
#' wfsPropertyname='NHDPlusHUCs:mi2'
#' wfsLiteral='031401020800'
#' area<-getWFSFieldAsNumeric(wfs_url,wfsTypename,wfsProperty,wfsLiteral,wfsPropertyname)
getWFSFieldAsNumeric<-function(wfs_url,wfsTypename,wfsProperty,wfsLiteral,wfsPropertyname){
  service_string <- '?service=WFS&version=1.0.0&request=GetFeature&typeName=TYPENAME_REPLACE&outputFormat=csv&filter=%3Cogc:Filter%20xmlns:ogc=%22http://www.opengis.net/ogc%22%3E%20%3Cogc:PropertyIsEqualTo%3E%20%3Cogc:PropertyName%3EPROPERTY_REPLACE%3C/ogc:PropertyName%3E%3Cogc:Literal%3ELITERAL_REPLACE%3C/ogc:Literal%3E%3C/ogc:PropertyIsEqualTo%3E%20%3C/ogc:Filter%3E&propertyName=PROPERTYNAME_REPLACE'
  wfs_url <- paste(wfs_url,service_string,sep="")
  wfs_url <- gsub('TYPENAME_REPLACE',wfsTypename,wfs_url)
  wfs_url <- gsub('PROPERTY_REPLACE',wfsProperty,wfs_url)
  wfs_url <- gsub('LITERAL_REPLACE',wfsLiteral,wfs_url)
  wfs_url <- gsub('PROPERTYNAME_REPLACE',wfsPropertyname,wfs_url)
  if ( grepl(':',wfsPropertyname)){
    wfs_col<-strsplit(wfsPropertyname,':')[[1]][2]
  } else {
    wfs_col<-wfsPropertyname
  }
  drain_area <- as.numeric(read.delim(wfs_url, header=TRUE, sep=",", colClasses=c("character"))[wfs_col]) # Note that this is in square miles as required by underlying package.
  return(drain_area)
}