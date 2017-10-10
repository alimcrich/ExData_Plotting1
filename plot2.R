#got rid of all data bar what needed already
data <- read.table('household_power_consumption.txt', sep=';', header=TRUE, na.strings='?')
data$Date <- as.Date(data$Date, "%d/%m/%Y")
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)
globalActivePower <- as.numeric(data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(data$Global_active_power~data$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.off()

