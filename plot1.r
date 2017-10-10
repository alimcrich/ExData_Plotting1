#got rid of all data bar what needed already
data <- read.table('household_power_consumption.txt', sep=';', header=TRUE, na.strings = "?")
data$Date <- as.Date(data$Date, "%d/%m/%Y")

png('plot1.png')
hist(data$Global_active_power, col='red', xlab="Global Active Power (kilowatts)", ylab="Frequency",main='Global Active Power')
dev.off()
