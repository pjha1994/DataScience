#get and set working directory
getwd()
setwd("/home/piyush/Desktop/GIT/abhi-jha/DataScience/R/data/9-r-programming-fund-m9-exercise-files")
#setwd(file.path("~","Desktop","GIT/abhi-jha","DataScience/R","data"))
file<-file.path("data","01Sample.csv")
my.data<-read.csv(file)
str(my.data)
my.data
my.data["student.physics.marks"]
my.data$student.chemistry.marks
typeof(my.data$student.physics.marks)
x<-my.data$student.physics.marks
x[4]


file<-file.path("data","02Sample.txt")

#can pass url
my.data<-read.table(file, header = TRUE, skip = 1,
                    colClasses = c("character","factor","numeric","integer","integer")
                    )
my.data
str(my.data)


#get data from a remote url
url<-"https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"
localfile<-file.path("data","03DownloadedFile.data")


download.file(url,localfile)
my.data<-read.table(localfile,sep=",")
my.data
str(my.data)
my.data$V1[142]
typeof(my.data)

#rcurl for advanced downloading mechanisms like auth, redirection, scraping


file<-file.path("data","04Sample.xml")
install.packages("XML",dependencies = TRUE)
library(XML)
my.data<-xmlToDataFrame(file,
                        colClasses = c("character","integer","integer"),
                        stringsAsFactors = FALSE
                        )
my.data


install.packages("XLConnect",dependencies = TRUE)
library("XLConnect")
file<-file.path("data","titanic3.xls")
my.data<-readWorksheetFromFile(file,sheet = 1)
my.data
str(my.data)

#for proprietary data format reading
library(foreign)
#my.data<-read.spss()


library(datasets)
data(package = "datasets")
x<-data(iris)
x
str(iris)
x<-iris
x

library(RODBC)
install.packages(c("RMySQL","ROracle","RPostgreSQL","RSQLite","RMongo","rmongodb",
                   "RCassandra","R4CouchDB","rhbase"
                   )
                 )

#library(RODBC)
#install.packages("RSQLServer")

#library("RSQLServer")
#connect<-odbcConnect("mysqlconnection")
#con <- dbConnect(odbc(),Driver = "SQLServer",Server = "localhost",Database = "mysql",
#                UID = "root",
#                PWD = rstudioapi::askForPassword("root"),
#                Port = 1433)

install.packages("RMySQL")
library(RMySQL)
mydb <- dbConnect(MySQL(), user='root', password='root', dbname='mysql', host='localhost')
dbListTables(mydb)
dbListResults(mydb)
dbListFields(mydb)
dbListTables(mydb, table_name = "f%")
x<-dbListFields(mydb,name = "mysql")
x
x["Host"]
data <- dbWriteTable(mydb, "iris", iris)
data
x<-dbListFields(mydb,table_name="f%")

