library(dplyr)

setwd("C:/Users/Nacho/Documents/DataScience")

data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, dec=".")

data_plot1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

date <- strptime(paste(data_plot1$Date, data_plot1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

GAP <- as.numeric(as.character(data_plot1$Global_active_power))

GRP <- as.numeric(as.character(data_plot1$Global_reactive_power))

VLTG <- as.numeric(as.character(data_plot1$Voltage))

sm1 <- as.numeric(as.character(data_plot1$Sub_metering_1))
sm2 <- as.numeric(as.character(data_plot1$Sub_metering_2))
sm3 <- as.numeric(as.character(data_plot1$Sub_metering_3))

png("plot4.png", width=503, height=503)

par(mfrow = c(2, 2)) 

plot(date, GAP, xlab="", ylab="Global Active Power (kilowatts)", type="l")

plot(date, VLTG,  ylab="Voltage",xlab="Datetime", type="l")

plot(date, sm1, type="l", ylab="Energy Submetering", xlab="")
lines(date, sm2, type="l", col="red")
lines(date, sm3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=3, col=c("black", "red", "blue"), bty = "n")

plot(date, GRP, ylab="Global Reactive Power", xlab="Datetime", type="l")

dev.off()
