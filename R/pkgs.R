library()
packages<-installed.packages()
View(packages)

search()
library("twitteR")
library("parallel")
library(curl)
detach(package:parallel, unload = TRUE)
detach(package:twitteR, unload = TRUE)
detach(package:curl, unload = TRUE)

library(newpackage)
if(!require("newpackage")){
  #ccan install a list of packages at once install.packages(c("a","b","c"))
  install.packages("curl")
}

#can install and download repos from sudo apt-get install and then linking to be accesed in R


setRepositories()
install.packages("plyr")
install.packages(c("ggplot2","randomForest","RColorBrewer"))
install.packages("devtools")
library(devtools)
library(curl)

#install_github("ramnathv/slidify",dependencies = TRUE) #repo and username
#install_github("slidify","ramnathv")


update.packages()
update.packages(ask=FALSE)
remove.packages("ggplot2")
remove.packages(c("sos","ggplot2"))
