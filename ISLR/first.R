getwd()
setwd('/home/user/Desktop/GIT/pjha1994/DataScience/ISLR/')
x <- c(1,3,2,5)
x
y = c(1,3,4,5)
y
length(x)
length(y)
x+y
ls()
#ssssrm(x,y)
ls()
#rm(list = ls())

mat<-matrix(data=c(1,2,3,4), nrow = 2, ncol = 2)
mat

mat1<-matrix(data=c(1,2,3,4), nrow = 2, ncol = 2, byrow = TRUE)
mat1

sqrt(mat)
sqrt(mat1)

x^2
mat^2
mat1^2


x = rnorm(50)
x
y = x + rnorm(50, mean = 50, sd = .1)
y
cor(x,y)

set.seed(1303)
rnorm(50)


set.seed(3)
y = rnorm(100)
mean(y)
var(y)

#Two ways to find standard deviation
sd(y)
sqrt(var(y))


#PLOTTING

dev.off()
x = rnorm(100)
y = rnorm(100)
plot(x,y)
plot(x)
plot(x,y,xlab = "x-axis",ylab = "y-axis",main = "Plot X vs Y")

#save image to pdf/jpeg

pdf("figure.pdf")
#jpeg("figure.jpeg")
plot(x,y,col="green")
dev.off()

x = seq(1,10)
x
x = seq(-pi,pi,length = 50)
x
x = 3:11
x
x = seq(3,11)
x


x = seq(-pi,pi,length = 50)

y =  x
f =outer(x,y,function(x,y) cos(y)/(1+x^2))
contour(x,y,f)
?outer
contour(x,y,f,nlevels = 45,add = T)
fa =(f-t(f))/2
contour(x,y,fa,nlevels = 15)

image(x,y,fa)
persp(x,y,fa)
persp(x,y,fa,theta = 30)

persp(x,y,fa,theta = 30,phi = 10)

persp(x,y,fa,theta = 30,phi = 20)

persp(x,y,fa,theta = 30,phi = 30)

persp(x,y,fa,theta = 30,phi = 40)
persp(x,y,fa,theta = 30,phi = 50)
persp(x,y,fa,theta = 30,phi = 60)
persp(x,y,fa,theta = 30,phi = 70)
persp(x,y,fa,theta = 30,phi = 80)
persp(x,y,fa,theta = 30,phi = 90)
persp(x,y,fa,theta = 30,phi = 100)


A = matrix(1:16,4,4)
A
A[2,3]

A[c(1,3),c(2,4)]
A[1:2,]
A[,1:2]

A[1,]
typeof(A[1,])
A[-c(1,3),]
A[-c(1,3),-c(1,3,4)]
dim(A)

#downlaod data from book website
Auto =  read.table("Auto.data")
fix(Auto)

Auto = read.table("Auto.data", header = T, na.strings = "?")
fix(Auto)

Auto = read.table("Auto.csv", header = T, na.strings = "?")
fix(Auto)

Auto = read.csv("Auto.csv")
fix(Auto)
dim(Auto)


Auto[1:3,]


Auto = read.table("Auto.data", header = T, na.strings = "?")
fix(Auto)

Auto = na.omit(Auto)
dim(Auto)

names(Auto)

plot(Auto$cylinders, Auto$mpg)

attach(Auto)

plot(cylinders, mpg)

cylinders = as.factor(cylinders)

cylinders
plot(cylinders, mpg)

plot(cylinders , mpg , col ="red ")

plot(cylinders , mpg , col ="red", varwidth =T)

plot(cylinders , mpg , col ="red", varwidth =T,horizontal =T)

plot(cylinders , mpg , col ="red", varwidth =T, xlab="cylinders ",ylab="MPG")

plot(cylinders)
hist(mpg)

#col = 2 means col ="red"
hist(mpg ,col =2)
hist(mpg ,col=2, breaks =15)

pairs(Auto)

pairs(~mpg + displacement + horsepower + weight +acceleration , Auto)

plot(horsepower ,mpg)
identify (horsepower ,mpg ,name)
summary(Auto)
savehistory()
loadhistory()
q()
