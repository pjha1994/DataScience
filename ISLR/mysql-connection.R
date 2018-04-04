#library(devtools)
#install_github('r-dbi/odbc')
#install.packages("RODBC", dependencies = TRUE)
#library(RODBC)
#install.packages('RMySQL')
library(RMySQL)

?RMySQL
mydb = dbConnect(MySQL(), user='root', password='root', dbname='hn', host='127.0.0.1')

dbListTables(mydb)

dbListFields(mydb, 'DATA')

#rs = dbSendQuery(mydb, 'select title,id,time,score from DATA where score>1000')
x = dbGetQuery(mydb, 'select title,id,time,score from DATA where score>1000')
summary(x)
#dbClearResult(dbListResults(mydb)[[1]])
#data = fetch(rs, n=-1)
