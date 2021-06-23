<<<<<<< HEAD
##' Download Phenocam data
##' 
##' @param URL  web address where data is located
download.phenocam <- function(URL) {
  ## check that we've been passed a URL
  if (length(URL) == 1 & is.character(URL) & substr(URL,1,4)=="http") {
    ## read data
    dat <- read.csv(URL,skip = 22)
    
    ## convert date
    dat$date <- as.Date(as.character(dat$date))
    
    
    
    return(dat)
  } else {
    print(paste("download.phenocam: Input URL not provided correctly",URL))
  }
=======
##' Download Phenocam data
##' 
##' @param URL  web address where data is located
download.phenocam <- function(URL) {
  ## check that we've been passed a URL
  if (length(URL) == 1 & is.character(URL) & substr(URL,1,4)=="http") {
    ## read data
    dat <- read.csv(URL,skip = 22)
    
    ## convert date
    dat$date <- as.Date(as.character(dat$date))
    
    return(dat)
  } else {
    print(paste("download.phenocam: Input URL not provided correctly",URL))
  }
>>>>>>> 89ac1887544dbf81d671f20e8b2ebdb552d89b0d
}