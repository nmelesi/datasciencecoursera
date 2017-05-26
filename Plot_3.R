library(dplyr)

setwd("C:/Users/Nacho/Documents/DataScience")

data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, dec=".")

data_plot1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot3.png", width=503, height=503)

x <- strptime(paste(data_plot1$Date, data_plot1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

sm1 <- as.numeric(as.character(data_plot1$Sub_metering_1))
sm2 <- as.numeric(as.character(data_plot1$Sub_metering_2))
sm3 <- as.numeric(as.character(data_plot1$Sub_metering_3))

plot(x, sm1, type="l", ylab="Energy Submetering", xlab="")
lines(x, sm2, type="l", col="red")
lines(x, sm3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=3, col=c("black", "red", "blue"))

dev.off()


