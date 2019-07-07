##Plot1

png(filename = "Plot1.png", width = 480, height = 480, units = "px")

hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", breaks = 12, ylim = c(0, 1200))

dev.off()
##---------------------------------------------------------------------------------------------------------------
##---------------------------------------------------------------------------------------------------------------
##Plot2

png(filename = "Plot2.png", width = 480, height = 480, units = "px")

plot(Date_time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", xaxt = "n")

axis(1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))

lines(Date_time, Global_active_power, col = "black")

dev.off()
##---------------------------------------------------------------------------------------------------------------
##---------------------------------------------------------------------------------------------------------------
##Plot3
png(filename = "Plot3.png", width = 480, height = 480, units = "px")

plot(Date_time, Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering", xaxt = "n")

lines(Date_time, Sub_metering_1, col = "black")

lines(Date_time, Sub_metering_2, col = "red")

lines(Date_time, Sub_metering_3, col = "blue")

legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)

axis(side = 1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))

dev.off()
