require(lubridate)

# load and format data times to POSIXct, assumes original file name has not changed
# and is in the working directory.
source("loadData.R")

png(filename = "plot2.png", width = 480, height = 480)

plot(pwrCon$DateTime, pwrCon$Global_active_power,
     type = "l",
     ylab = "Global Active Power(kilowatts)",
     xlab = "")

dev.off()