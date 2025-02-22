setwd("D:/01 Programming/02 R/01 Johns Hopkings-Coursera/04 Exploratory Data Analysis/01 Week 1/04 Data_Quiz/exdata_data_household_power_consumption")

data <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",na = "?")
##attaching the data: no need to call the variable with "$"
attach(data)
##filter the dates needed
data <- data[Date=="1/2/2007"|Date=="2/2/2007",]

attach(data)

data$Flag_Date_Time <- strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")

rownames(data) <- 1 : nrow(data)

attach(data)

##mergin the new colum "Flag_Date_Time" with the others from column 3 to 9.

data <- cbind(data[, 10], data[, 3:9])

colname <- colnames(data)

colname[1] <- "Date_time"

colnames(data) <- colname

attach(data)

##writing the new data into csv format so it can be loaded with the observations that are needed.

write.csv(data, file = "D:/01 Programming/02 R/01 Johns Hopkings-Coursera/04 Exploratory Data Analysis/01 Week 1/04 Data_Quiz/PowerComsuption.csv", row.names = FALSE)  

data <- read.csv(file = "D:/01 Programming/02 R/01 Johns Hopkings-Coursera/04 Exploratory Data Analysis/01 Week 1/04 Data_Quiz/PowerComsuption.csv", header = TRUE)

attach(data)
