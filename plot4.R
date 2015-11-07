require(lubridate)

# load and format data times to POSIXct, assumes original file name has not changed
# and is in the working directory.
source("loadData.R")

png(filename = "plot4.png", width = 480, height = 480)


par(mfrow = c(2,2))

# same as plot2.R plot
plot(pwrCon$DateTime, pwrCon$Global_active_power,
     type = "l",
     ylab = "Global Active Power(kilowatts)",
     xlab = "")

# plot of votage
plot(pwrCon$DateTime, pwrCon$Voltage,
     type = "l",
     ylab = "Voltage",
     xlab = "datetime")

# same as plot3.R plot with smaller legend
plot(pwrCon$DateTime, pwrCon$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")

lines(pwrCon$DateTime, pwrCon$Sub_metering_2, col = "red")
lines(pwrCon$DateTime, pwrCon$Sub_metering_3, col = "blue")
legend("topright", legend = names(pwrCon[,7:9]), 
       col = c("black","red","blue"), lty = 1,
       bty = "n")

# plot of reactive power
plot(pwrCon$DateTime, pwrCon$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")


dev.off()