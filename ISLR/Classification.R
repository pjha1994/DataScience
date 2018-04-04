#LOGISTIC REGRESSION

library(ISLR)
names(Smarket)
dim(Smarket)
summary(Smarket)
pairs(Smarket)
cor(Smarket[,-9])
attach(Smarket)
plot(Smarket)
glm.fit = glm(Direction~.-(Year+Direction+Today), data = Smarket, family = binomial)
summary(glm.fit)
coef(glm.fit)
summary(glm.fit)$coef
summary(glm.fit)$coef[,4]
glm.probe = predict(glm.fit, type = "response")
glm.probe[1:10]
contrasts(Direction)

glm.pred = rep("Down",1250)
glm.pred[glm.probe>.5]="Up"
table(glm.pred, Direction)
(507+145)/11250
mean(glm.pred==Direction)

#Up until this point we trained and tested on the entire dataset.
#Lets split train and test datasets

train = (Year<2005)
Smarket.2005 = Smarket[!train,]
dim(Smarket.2005)
Direction.2005 = Direction[!train]

glm.fit = glm(Direction~.-(Year+Direction+Today), data = Smarket, family = binomial, subset = train)
summary(glm.fit)
glm.probe = predict(glm.fit,Smarket.2005,type = "response")
glm.pred = rep("Down",252)
glm.pred[glm.probe>.5]="Up"
table(glm.pred,Direction.2005)

#Train error rate(It underestimates the test error rate)
mean(glm.pred==Direction.2005)

#Test error rate
mean(glm.pred!=Direction.2005)


glm.fit = glm(Direction~Lag1+Lag2, data = Smarket, family = binomial, subset = train)
summary(glm.fit)
glm.probe = predict(glm.fit,Smarket.2005,type = "response")
glm.pred = rep("Down",252)
glm.pred[glm.probe>.5]="Up"
table(glm.pred,Direction.2005)

#Train error rate(It underestimates the test error rate)
mean(glm.pred==Direction.2005)

#Test error rate
mean(glm.pred!=Direction.2005) #Strange as test-error-rate< training-error-rate

#returns for a particular value of Lag1 and Lag2
predict(glm.fit, newdata = data.frame(Lag1=c(1.2,1.1), Lag2=c(1.1,0.8)), type = "response")


#LINEAR DISCRIMINANT ANALYSIS

library(MASS)
?lda
lda.fit = lda(Direction~Lag1+Lag2, data = Smarket, subset = train)
lda.fit
plot(lda.fit)

lda.pred = predict(lda.fit, Smarket.2005)
names(lda.pred)
lda.class = lda.pred$class
table(lda.class, Direction.2005)

#train error rate
mean(lda.class==Direction.2005)

#test error rate
mean(lda.class!=Direction.2005)

sum(lda.pred$posterior[,1]>=.5)

sum(lda.pred$posterior[,1]<.5)


lda.pred$posterior[1:20,1]
lda.class[1:20]


#QUADRATIC DISCRIMINANT ANALYSIS

qda.fit = qda(Direction~Lag1+Lag2, data = Smarket, subset = train)

qda.fit 

qda.class = predict(qda.fit, Smarket.2005)$class

summary(qda.class)

table(qda.class, Direction.2005)
mean(qda.class==Direction.2005)


# K NEAREST NEIGNBOUR

library(class)
train.X = cbind(Lag1,Lag2)[train,]
test.X = cbind(Lag1,Lag2)[!train,]
train.Direction = Direction[train]

set.seed(1)
knn.prediction = knn(train.X, test.X, train.Direction,k=1)
table(knn.prediction, Direction.2005)
mean(knn.prediction==Direction.2005)
set.seed(1)
knn.prediction = knn(train.X, test.X, train.Direction,k=2)
table(knn.prediction, Direction.2005)
mean(knn.prediction==Direction.2005)
set.seed(1)
knn.prediction = knn(train.X, test.X, train.Direction,k=3)
table(knn.prediction, Direction.2005)
mean(knn.prediction==Direction.2005)



dim(Caravan)
attach(Caravan)
summary(Purchase)
348/5474
standardized.X = scale(Caravan[,-86])
var(Caravan[,1])
var(Caravan[,2])
var(standardized.X[,1])
mean(standardized.X[,1])
sd(standardized.X[,1])
var(standardized.X[,2])


test = 1:1000
train.X = standardized.X[-test,]
test.X = standardized.X[test,]
train.Y = Purchase[-test]
test.Y = Purchase[test]
set.seed(1)
knn.pred = knn(train.X, test.X, train.Y,k=1)
mean(knn.pred!=test.Y)
mean(test.Y!="No")
table ( knn.pred , test.Y )

test = 1:1000
train.X = standardized.X[-test,]
test.X = standardized.X[test,]
train.Y = Purchase[-test]
test.Y = Purchase[test]
set.seed(1)
knn.pred = knn(train.X, test.X, train.Y,k=2)
mean(knn.pred!=test.Y)
mean(test.Y!="No")
table ( knn.pred , test.Y )

test = 1:1000
train.X = standardized.X[-test,]
test.X = standardized.X[test,]
train.Y = Purchase[-test]
test.Y = Purchase[test]
set.seed(1)
knn.pred = knn(train.X, test.X, train.Y,k=3)
mean(knn.pred!=test.Y)
mean(test.Y!="No")
table ( knn.pred , test.Y )

5/25

test = 1:1000
train.X = standardized.X[-test,]
test.X = standardized.X[test,]
train.Y = Purchase[-test]
test.Y = Purchase[test]
set.seed(1)
knn.pred = knn(train.X, test.X, train.Y,k=5)
mean(knn.pred!=test.Y)
mean(test.Y!="No")
table ( knn.pred , test.Y )

4/15


glm.fit = glm ( Purchase~.,data = Caravan , family = binomial ,
                  subset = - test )
glm.probs = predict(glm.fit, Caravan[test,], type = "response")
glm.pred = rep("No",1000)
glm.pred[glm.probs>.5]="Yes"
table(glm.pred, test.Y)

0/7

glm.pred[glm.probs>.25]="Yes"
table(glm.pred, test.Y)

11/33
