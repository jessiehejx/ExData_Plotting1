### EDA Project 1-Plot3
datafile <- "./household_power_consumption.txt"
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

time <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subdata$Global_active_power)
metering1 <- as.numeric(subdata$Sub_metering_1)
metering2 <- as.numeric(subdata$Sub_metering_2)
metering3 <- as.numeric(subdata$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(time, metering1, type="l", ylab="Energy Submetering", xlab="")
lines(time, metering2, type="l", col="red")
lines(time, metering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, lwd=2.5, 
       col=c("black", "red", "blue"))
dev.off()
