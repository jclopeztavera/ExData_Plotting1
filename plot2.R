# JHU's Exploratory Data Analysis course at Coursera
# Course Project 1
# 1 - Producing Plot 2

png(
    filename = "plot2.png",
    width = 480,
    height = 480,
    units = "px"
)

plot(
    x = data$datetime,
    y = data$Global_active_power,
    col = "black",
    main = NULL,
    ylab = "Global Active Power (kilowatts)",
    xlab = "Time of the Day",
    type = "l"
)

dev.off()
