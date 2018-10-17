
DayofMonth <- raw_data[,c(1,14)]
library(dplyr)
df.GroupByDays <- group_by(DayofMonth, Day.of.Month)
SatisfactionByDay <- summarize(df.GroupByDays, Satisfaction = sum(Satisfaction>=0, na.rm = TRUE))


tapply <- tapply(raw_data$Satisfaction>=0, raw_data$Day.of.Month, sum, na.rm = TRUE)

tapply <- tapply(as.numeric(DayofMonth$Satisfaction), DayofMonth$Day.of.Month, mean, na.rm = TRUE)
tapply <- tapply(as.numeric(DayofMonth$Satisfaction), DayofMonth$Day.of.Month, median, na.rm = TRUE)
tapply <- tapply(as.numeric(DayofMonth$Satisfaction), DayofMonth$Day.of.Month, sd, na.rm = TRUE)
