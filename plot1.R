require(lubridate)

# load and format data times to POSIXct, assumes original file name has not changed
# and is in the working directory.
source("loadData.R")


png(filename = "plot1.png", width = 480, height = 480)

hist(pwrCon$Global_active_power, 
     col = "red", 
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     xaxt = "n",
     yaxt = "n")

axis(1,at = seq(0,6,2))
axis(2,at = seq(0,1200,200))

dev.off()