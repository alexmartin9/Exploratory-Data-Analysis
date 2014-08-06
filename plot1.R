data <- read.table("household_power_consumption.txt",sep = ";", header = TRUE)
sub <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
library(datasets)
png(filename = "plot1.png",
    width = 480, height = 480)
hist(as.numeric(paste(sub$Global_active_power)), col = "red", breaks = 12,  
     xlab = "Global active power (kilowatts)", main = "Global Active Power",xaxt="n")
axis(side=1, at=seq(0, 6, by=2))
axis(side=2, at=seq(0, 1200, by=200))plot1