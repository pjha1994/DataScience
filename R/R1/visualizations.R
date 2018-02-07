#base
#lattice
#ggplot
#animated
#interactive

#`%foo%` <- function(x, y) paste("foo", x, "and foo", y)
#> 1 %foo% 2
#[1] "foo 1 and foo 2"

getwd()
setwd("/home/piyush/Desktop/GIT/abhi-jha/DataScience/R/R1")
cars <- read.csv("Cars.csv")

library(ggplot2)

ggplot(
  data = cars,
  aes(x = Transmission)) + 
  geom_bar()+
  ggtitle("Count of Cars by Transmission type") +
  xlab("transmission type")+
  ylab("Count of cars")


ggplot(
  data = cars,
  aes(x = Fuel.Economy))+
  geom_histogram(bins = 20)+
  ggtitle("Distribution of fuel economy")+
  xlab("Fuel economy in (mpg)")+
  ylab("Count of cars")


ggplot(
  data = cars,
  aes(x = Fuel.Economy))+
  geom_density()+
  ggtitle("Distribution of fuel economy")+
  xlab("Fuel economy in (mpg)")+
  ylab("Density")


ggplot(
  data = cars,
  aes(x = Cylinders,y = Fuel.Economy))+
  geom_point()+
  ggtitle("Fuel economy by cylinders")+
  xlab("Number of cylinders")+
  ylab("Fuel economy in (mpg)")