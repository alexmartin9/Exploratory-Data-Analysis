data <- read.table("household_power_consumption.txt",sep = ";", header = TRUE)
sub <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
png(filename = "plot2.png",
    width = 480, height = 480)
plot(as.numeric(paste(sub$Global_active_power)), ylab = "Global Active Power (kilowatts)", 
     xlab = "",type = "l", xaxt="n")
axis(side=1, at=c(1,1440, 2880), labels = c("Thu","Fri", "Sat"))
dev.off()