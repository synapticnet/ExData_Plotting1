require(lubridate)

## Function to load and format data.
#loadData.R <- function(){
  pwrCon <-
    read.csv("household_power_consumption.txt",sep = ";", na.strings = "?")
  pwrCon$DateTime <-
    as.POSIXct(paste(pwrCon$Date,pwrCon$Time),format = "%d/%m/%Y %H:%M:%S", tz = "GMT")
  
  pwrCon <- pwrCon[pwrCon$DateTime >= ymd("2007-02-01") &
                     pwrCon$DateTime < ymd("2007-02-03"),]
#}