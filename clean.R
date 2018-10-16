
library(ggplot2)
barDay <- ggplot(raw_data, aes(x=reorder(stateName, TotalMurders), y=TotalMurders, group = 1, fill = percentOver18)) + geom_col() + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) + ggtitle('Murders Per State - Colored by Percent Over 18')

