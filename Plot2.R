### EDA Project 1-Plot2
datafile <- "./household_power_consumption.txt"
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

time <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subdata$Global_active_power)

png("plot2.png", width=480, height=480)
plot(time, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
