#Plot 1 - Histogram of Range of Global Active Power saved as png  

hist(Extract$Global_active_power,col="RED",main = "Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width=600, height=480)
dev.off()