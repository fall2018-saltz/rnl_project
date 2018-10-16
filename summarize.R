
library(dplyr)
df.GroupByDays <- group_by(raw_data, Day.of.Month)
SatisfactionByDay <- summarize(df.GroupByDays, Satisfaction = mean(Satisfaction))
