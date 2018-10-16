
library(ggplot2)
histDay <- ggplot(raw_data, aes(x=Day.of.Month, Satisfaction))
histDay <- histDay + geom_histogram(binwidth=1, color="black", fill="white")
histDay <- histDay + ggtitle("Day of Month Histogram")
