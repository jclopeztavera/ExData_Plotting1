# JHU's Exploratory Data Analysis course at Coursera
# Course Project 1
# 1 - Producing Plot 3

png(
    filename = "plot3.png",
    width = 480,
    height = 480,
    units = "px"
)

plot(
    x = data$datetime,
    y = data$Sub_metering_1,
    ylab = "Energy sub metering",
    xlab = "Time of the Day",
    type = "n"
)
lines(x = data$datetime, y = data$Sub_metering_1, col = "black")
lines(x = data$datetime, y = data$Sub_metering_2, col = "red")
lines(x = data$datetime, y = data$Sub_metering_3, col = "blue")
legend(x = "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

dev.off()
