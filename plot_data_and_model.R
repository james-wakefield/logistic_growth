#Script to plot data and model

growth_data <- read.csv("experiment.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <-exp(7.1855445)  #intercept of model 1 (then back transformed)
  
r <-0.0095218 #gradient of model 1
  
K <-exp(-6.00e+10) #intercept of model 2 (then back transformed)

ggplot(aes(t, N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')


