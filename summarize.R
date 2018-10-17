
DayofMonth <- raw_data[,c(1,14)]
library(dplyr)
df.GroupByDays <- group_by(DayofMonth, Day.of.Month)
SatisfactionByDay <- summarize(df.GroupByDays, Satisfaction = sum(Satisfaction, na.rm = TRUE))
