# JHU's Exploratory Data Analysis course at Coursera
# Course Project 1
# 1 - Producing Plot 1

png(
    filename = "plot2.png",
    width = 480,
    height = 480,
    units = "px"
)

plot(
    x = data$datetime,
    y = data$Global_active_power,
    col = "red",
    main = NULL,
    ylab = "Global Active Power (kilowatts)",
    xlab = "Time",
    type = "l"
)

dev.off()
