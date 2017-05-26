library(dplyr)

setwd("C:/Users/Nacho/Documents/DataScience")

data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, dec=".")

data_plot1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot1.png", width=503, height=503)

Columna <- as.numeric(as.character(data_plot1$Global_active_power))

hist(Columna,xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")

dev.off()


