#install.packages(deplyr)
#library(dplyr)
#getwd()
data<-read.table(file = "test.txt",header = FALSE,col.names = c("a","b"),sep = "\t",stringsAsFactors = FALSE)

audience<-data[data$b == "Avataar",1]
#unclass(audience)

#list(audience)

movies<-data[data$a %in% audience,2]
#fin
#list(fin)
unique(movies[movies != "Avataar"])
#list(unclass(fin))


#data[is.element(data$a, audience),]

#audience

#str(fin)
#indices <- which(data$a == list(unclass(audience)))
#indices
#str(list(unclass(audience)))
#k<-list(unclass(audience))
#k
#str(audience)
#movies<-data[,as.data.frame(data$a) == audience]
#movies

#x<-c(unclass(audience))
#x
#apply(data, 2, function(r) any(r %in% c(audience)))


#audience

#data$a %in%  audience 
#fin<-data[data$a==list(audience),2]
#fin
