# JHU's Exploratory Data Analysis course at Coursera
# Course Project 1
# 1 - Producing Plot 1


png(
    filename = "plot1.png",
    width = 480,
    height = 480,
    units = "px"
)

hist(
    data$Global_active_power,
    col = "red",
    main = "Global Active Power",
    ylab = "Frequency",
    xlab = "Global Active Power (kilowatts)"
)

dev.off()
