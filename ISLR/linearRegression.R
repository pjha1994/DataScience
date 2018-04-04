#Never do attach()

LoadLibraries= function (){
   library(ISLR)
   library(MASS)
   print("The libraries have been loaded .")
}

LoadLibraries()

library(MASS)
#install.packages('ISLR', dependencies = TRUE)
library(ISLR)
#attach(Carseats)
fix(Boston)
summary(Boston)
names(Boston)
nrow(Boston)
dim(Boston)
Boston$lstat
#lm(y~x, data)
lm(medv~lstat, data=Boston )
attach(Boston)
lm.fit  = lm(medv~lstat)
lm.fit
summary(lm.fit)
names(lm.fit)
typeof(lm.fit)
coef(lm.fit)
lm.fit$coefficients
confint (lm.fit)
predict (lm.fit ,data.frame(lstat=c(5,10 ,15)),
         interval ="confidence")

predict (lm.fit ,data.frame(lstat=c(5,10 ,15)),
         interval ="prediction")
plot(lstat ,medv)
abline(lm.fit)

#plot.new()
#abline(1,-89)
abline (lm.fit ,lwd =5, col = 'blue')
abline (lm.fit ,lwd=3,col ="red")
plot(lstat ,medv ,col="red")
plot(lstat ,medv ,pch =20)
plot(lstat ,medv ,pch ="+")
plot(1:20,1:20,pch =1:20)

plot.new()
abline(1:500,1:500, col = 'red', pch = '4')
plot(lm(lm.fit))
par(mfrow=c(2,2)) 
plot(lm.fit)     
plot(predict (lm.fit), residuals (lm.fit))
plot(predict (lm.fit), rstudent (lm.fit))
plot(hatvalues (lm.fit))
?hatvalues
which.max(hatvalues (lm.fit))



#MULTIPLE LINEAR REGRESSION

lm.fit = lm(medv~lstat+age ,data=Boston )
summary(lm.fit)
lm.fit=lm(medv~.,data=Boston)
summary(lm.fit)
?summary.lm
#R-square
summary(lm.fit)$r.sq

#RSE
summary(lm.fit)$sigma
#install.packages("car", dependencies = TRUE)
library('car')
#install.packages("nloptr", dependencies = TRUE, INSTALL_opts = c('--no-lock')) 
#install.packages("testthat",dependencies = TRUE)
#install.packages("git2r", dependencies = TRUE)
#library("git2r")
#install.packages("devtools",dependencies = TRUE)
#library("devtools")
#install_github("nloptr")
sessionInfo()
#install.packages("car",dependencies=TRUE)
#install.packages("car", dependencies=TRUE, repos='http://cran.rstudio.com/')
library(tools)
#db <- CRAN_package_db()
#db
version

vif(lm.fit)

lm.fit1=lm(medv~.-(age+tax+indus) ,data=Boston )
summary(lm.fit1)
vif(lm.fit1)
coef(lm.fit1)
confint (lm.fit)
#predict (lm.fit1 ,data.frame(lstat=c(5,10 ,15)),
#         interval ="confidence")

#predict (lm.fit1 ,data.frame(lstat=c(5,10 ,15)),
#         interval ="prediction")

lm.fit1=update(lm.fit , ~.-age)
predict (lm.fit1, Boston)

summary (lm(medv~(lstat:age) ,data=Boston))
summary (lm(medv~(lstat + age + lstat:age) ,data=Boston))
summary (lm(medv~(lstat*age) ,data=Boston))
?I

lm.fit2=lm(medv~lstat+I(lstat^2))
summary(lm.fit2)
predict (lm.fit2, Boston)
lm.fit=lm(medv~lstat)
anova(lm.fit, lm.fit2)

par(mfrow=c(2,2))
plot(lm.fit2)

lm.fit5 = lm(medv~poly(lstat, 5))
summary(lm.fit5)
plot(lm.fit5)

#attach(ISLR::Carseats)
sessionInfo()
Carseats = ISLR::Carseats
Carseats
fix(Carseats)
names(Carseats)
summary(Carseats)
packageVersion("ISLR")
package_version(R.version)
getRversion()
lm.fit=lm(Sales~.+Income :Advertising +Price:Age ,data=Carseats )
plot(lm.fit)
summary(lm.fit)
predict(lm.fit, Carseats)
contrasts (ShelveLoc)

