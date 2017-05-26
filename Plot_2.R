library(dplyr)

setwd("C:/Users/Nacho/Documents/DataScience")

data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, dec=".")

data_plot1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot2.png", width=503, height=503)

y <- as.numeric(as.character(data_plot1$Global_active_power))

x <- strptime(paste(data_plot1$Date, data_plot1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

plot(x, y, xlab="", ylab="Global Active Power (kilowatts)", type="l")

dev.off()