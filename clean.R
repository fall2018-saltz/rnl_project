
library(ggplot2)
histDay <- ggplot(raw_data, aes(x=Day.of.Month))
histDay <- histDay + geom_histogram(binwidth=1, color="black", fill=Satisfaction)
histDay <- histDay + ggtitle("Day of Month Histogram")
