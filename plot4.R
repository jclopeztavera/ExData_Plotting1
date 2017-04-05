# JHU's Exploratory Data Analysis course at Coursera
# Course Project 1
# 1 - Producing Plot 4

png(
    filename = "plot4.png",
    width = 480,
    height = 480,
    units = "px"
)

par(mfrow = c(2, 2))

## Upper left plot
plot(
    x = data$datetime,
    y = data$Global_active_power,
    type = "l",
    col = "black",
    ylab = "Global Active Power",
    xlab = NA
)

## Upper right plot

plot(
    x = data$datetime,
    y = data$Voltage,
    type = "l" ,
    col = "black",
    ylab = "Voltage",
    xlab = NA
)

## Lower left plot
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
legend(x = "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, bty = "n")

## Lower right plot
plot(
    x = data$datetime,
    y = data$Global_reactive_power,
    type = "l",
    ylab = "Global Reactive Power",
    xlab = "Time of the Day"
)

dev.off()
