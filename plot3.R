require(lubridate)

# load and format data times to POSIXct, assumes original file name has not changed
# and is in the working directory.
source("loadData.R")

png(filename = "plot3.png", width = 480, height = 480)

plot(pwrCon$DateTime, pwrCon$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")

lines(pwrCon$DateTime, pwrCon$Sub_metering_2, col = "red")
lines(pwrCon$DateTime, pwrCon$Sub_metering_3, col = "blue")
legend("topright", legend = names(pwrCon[,7:9]), 
       col = c("black","red","blue"), lty = 1)


dev.off()