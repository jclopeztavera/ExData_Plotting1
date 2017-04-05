# JHU's Exploratory Data Analysis course at Coursera
# Course Project 1
# 0 - Reading the data

## Loading required packages
loader <- function(...) {
    x <- list(...)
    p <- x[sapply(X = x, FUN = is.character)]
    for (i in 1:length(p)) {
        if (!p[[i]] %in% installed.packages()) {
            install.packages(p[[i]])
        }
        if (p[[i]] %in% installed.packages()) {
            library(p[[i]], character.only = TRUE)
        }
    }
}

loader('dplyr', 'data.table')

## Download zip file from URL from the Coursera assignment
## Run only once
# data.url <-
#     "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#
# download.file(url = data.url,
#               destfile = "~/github/ExData_Plotting1/data.zip",
#               method = "curl")
#
# unzip(zipfile = "data.zip") # unzip
# file.remove("data.zip") # save space in repo

## Loading the data from the *.txt file

txt.files <- list.files(pattern = "*.txt")
data.file <- ifelse(length(txt.files) == 1, txt.files, NULL)

data <-
    fread(
        input = data.file,
        sep = ";",
        header = TRUE,
        data.table = TRUE
    )

data <- subset(x = data, subset = Date %in% c('1/2/2007', '2/2/2007'))

datetime <- paste(data$Date, data$Time)
datetime <- strptime(x = datetime, format = "%d/%m/%Y %H:%M:%S")

data$Date <- NULL
data$Time <- NULL

data <-
    data %>% mutate_if(is.character, as.numeric)

data <- cbind(datetime, data)

rm(data.file, txt.files, loader, datetime)
