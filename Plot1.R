### EDA Project 1-Plot1
getwd()
setwd("/Users/Jessie/Dropbox/Github/EDA/Project1")

datafile <- "./household_power_consumption.txt"
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subdata$Global_active_power)

png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
