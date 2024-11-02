#Script to plot the logistic growth data

growth_data <- read.csv("experiment.csv")

install.packages("ggplot2")
library(ggplot2)

#plots population level over time
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  theme_bw()

#plots the log10 of the population level against time so that logistic growth appears linear
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  scale_y_continuous(trans='log10')
