#got rid of all data bar what needed already
data <- read.table('household_power_consumption.txt', sep=';', header=TRUE, na.strings='?')
data$Date <- as.Date(data$Date, "%d/%m/%Y")
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

png('plot3.png')
plot(data$Sub_metering_1~data$Datetime, type="l",
     ylab="Energy Sub metering", xlab="")
lines(data$Sub_metering_2~data$Datetime,col='Red')
lines(data$Sub_metering_3~data$Datetime,col='Blue')

legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()