#Plot 4 - Assortment of plots, saved as png  

par(mfrow=c(2,2),lty="solid",family="sans")

plot(Extract$Time,Extract$Global_active_power,xlab =" ",type="l",ylab = "Global Active Power (kilowats)")

plot(Extract$Time,Extract$Voltage,type="l",xlab="datetime",ylab="Voltage")

plot(Extract$Time,Extract$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1), lwd=c(1,1))
lines(Extract$Time,Extract$Sub_metering_2,col="red")
lines(Extract$Time,Extract$Sub_metering_3,col="blue")

plot(Extract$Time,Extract$Global_reactive_power,,type="l",xlab="datetime",ylab="Global Reactive Power")
dev.copy(png, file="plot4.png", width=600, height=480)
dev.off()
