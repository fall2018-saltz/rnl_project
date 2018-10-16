
library(ggplot2)
barDay <- ggplot(raw_data, aes(x=Day.of.Month, y=Satisfaction, group = 1)) + geom_col() + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1), axis.text.y = element_text(angle = 90, hjust = 1)) + 
  ggtitle('Day of Month')

