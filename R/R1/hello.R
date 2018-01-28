#data types are vectors in R: atomic/non-atomic

x<-"Hello World"

y = "Hello World"

"Hello World" -> z
print(paste(x,y))
print(z)

l<-TRUE
i<-123L
n<-1.23
c<-"ABC 123"
d<-as.Date("2018-01-28")
d
typeof(d)
typeof(c)

f<-function(x) x+1
f(2)

v<-c(1,2,3)
v
typeof(v)
str(v)


s<-1:5
m<-matrix(data = 1:6,nrow = 3,ncol = 2)
m

a<-array(data=1:8,dim = c(2,2,2))
a
#how to access data from multidimesional array?
a[1]

l<-list(TRUE,123L,2.34,"abc")
l
str(l[1])
str(l[[1]])
l[[1]]


categories<-c("a","b","ab","a")
factor<-factor(categories)
factor
levels(factor)
unclass(factor)


df<-data.frame(
    Name = c("aifb","sdfisdy","aogb","svljdf"),
    HowMany=c(1,2,3,4),
    IsPet=c(T,T,F,T)
    #stringsAsFactors = FALSE
)
df
df[2,1]
unclass(df[,1])
df[,1]
df$HowMany
df[2:4,]
df[c(2,4),]
df[c(T,F,T,F),]
df[df$IsPet == TRUE,]
df[df$HowMany>2,]
df[df$Name %in% c("aifb","aogb"),]


1+2
c(1,2,3)+c(2,4,6)
m<-matrix(data = 1:6,nrow = 2,ncol = 3)
m
n<-matrix(1:6,2,3)
n
m == n
typeof(m) == typeof(n)
identical(m,n)

install.packages("dplyr")

library("dplyr")
?data.frame
