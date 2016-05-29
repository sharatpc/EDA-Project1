#Plot 2 - Line Plot of Global Active Power against Time, saved as png  

plot(Extract$Time,Extract$Global_active_power,xlab =" ",type="l",ylab = "Global Active Power (kilowats)")
dev.copy(png, file="plot2.png", width=600, height=480)
dev.off()