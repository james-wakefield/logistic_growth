#Script to estimate the model parameters using a linear approximation

#library(dplyr),

growth_data <- read.csv("experiment.csv")

#Case 1. K >> N0, t is small
#this is when the growth is exponential

data_subset1 <- growth_data %>% filter(t<2000) %>% mutate(N_log = log(N))

model1 <- lm(N_log ~ t, data_subset1)
summary(model1)
#gradiant of this gives growth rate of r


#Case 2. N(t) = K
#this is once the growth rate has reached zero and the population is equal to the carrying capacity K

data_subset2 <- growth_data %>% filter(t>2500)

model2 <- lm(N ~ 1, data_subset2)
summary(model2)
