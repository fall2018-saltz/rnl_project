
library(dplyr)
library(ggplot2)
DayofMonth <- raw_data[,c(1,14)]

mean <- data.frame(tapply(as.numeric(DayofMonth$Satisfaction), DayofMonth$Day.of.Month, mean, na.rm = TRUE))
colnames(mean) <- "Satisfaction"
mean$Day.of.Month <- rownames(mean)
barMean <- ggplot(mean, aes(x=Day.of.Month, y=Satisfaction, group = 1)) + geom_col() 

median <- data.frame(tapply(as.numeric(DayofMonth$Satisfaction), DayofMonth$Day.of.Month, median, na.rm = TRUE))
colnames(median) <- "Satisfaction"
median$Day.of.Month <- rownames(median)
barMedian <- ggplot(median, aes(x=Day.of.Month, y=Satisfaction, group = 1)) + geom_col() 

