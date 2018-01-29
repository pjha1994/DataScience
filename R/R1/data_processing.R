#install.packages(c("base","tidyr","reshape2","stringr","lubridate","validate"))
#install.packages(c("base","plyr","dplyr","data.table","sqldf"))
library(base)
getwd()
setwd("/home/piyush/Desktop/GIT/abhi-jha/DataScience/R/R1")

cars<-read.table(
  file = "Cars.txt",
  header = TRUE,
  sep = "\t",
  quote = "\""
)

cars
str(cars)
str(unclass(cars$Name))
x<-unclass(cars$Name)
x[1]
x[2]
for(i in x) print(i)


head(cars)

library(dplyr)

temp<-select(.data = cars,
             Transmission,
             Cylinders,
             Fuel.Economy
             )
head(temp)

#typeof(temp)

#temp<-temp[cars$Transmission == "Automatic"]

temp<-filter(.data = temp,Transmission == "Automatic")
head(temp)

temp<-mutate(.data = temp,Consumption = Fuel.Economy*0.425)

temp<-group_by(.data = temp, Cylinders)
temp

temp<-summarise(.data = temp,Avg.Consumption = mean(Consumption))
head(temp)
temp

temp<-arrange(.data = temp,desc(Avg.Consumption)
              )
temp
efficency<-as.data.frame(temp)
temp
head(efficency)



efficiency<- cars %>%
  select(Transmission,Cylinders,Fuel.Economy) %>%
  filter(Transmission == "Automatic") %>%
  mutate(Consumption = Fuel.Economy*0.425) %>%
  group_by(Cylinders) %>%
  summarise(Avg.Consumption = mean(Consumption)) %>%
  arrange(desc(Avg.Consumption)) %>%
  as.data.frame()
head(efficiency)
print(efficiency)

write.csv(x = efficiency,
          file  = "Fuel-Efficiency.csv",
          row.names = FALSE
          )  
