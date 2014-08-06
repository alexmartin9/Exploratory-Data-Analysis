data <- read.table("household_power_consumption.txt",sep = ";", header = TRUE)
sub <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
png(filename = "plot3.png",
    width = 480, height = 480)
plot(as.numeric(paste(sub$Sub_metering_1)), ylab = "Energy sub metering", 
     xlab = "",type = "l", xaxt="n")
points (as.numeric(paste(sub$Sub_metering_2)), type = "l", col = "red")
points (as.numeric(paste(sub$Sub_metering_3)), type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = c(1,1,1))
axis(side=1, at=c(1,1440, 2880), labels = c("Thu","Fri", "Sat"))
dev.off()