
library(ggplot2)
histDay <- ggplot(raw_data, aes(x=Population))
histDay <- histPop + geom_histogram(binwidth=5000000, color="black", fill="white")
histDay <- histPop + ggtitle("State Population Histogram")
