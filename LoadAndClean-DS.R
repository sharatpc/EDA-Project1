#Load data and format date
PowerCons <- read.table("household_power_consumption.txt",sep=";",header = TRUE,as.is = TRUE,colClasses = c("character"),na.strings = "?")
PowerCons$Date <- as.Date(PowerCons$Date, format="%d/%m/%Y")

#Subsetting data for the two days and formatting time 
Extract <- subset(PowerCons,PowerCons$Date>="2007-02-01" & PowerCons$Date<="2007-02-02")
Extract$Time <- as.POSIXct(paste(Extract$Date,Extract$Time),"%d/%m/%Y %H:%M:%S")
#Clean up
rm(PowerCons)

#covert all otehr variables as numeric 
for(i in 3:length(Extract))
{
  Extract[,i] <- as.numeric(Extract[,i])
}

