#Simplpe regression model
library(datasets)
iris
head(iris)
data(iris)

plot(
  x = iris$Petal.Length,
  y = iris$Petal.Width,
  main = "Iris Petal length vs. width",
  xlab = "Petal length",
  ylab = "Petal width"
)

model<-lm(
  formula = Petal.Width ~ Petal.Length,
  data = iris
)

summary(model)

lines(
  x = iris$Petal.Length,
  y = model$fitted.values,
  col = "red",
  lwd = 3
)

cor(
  x = iris$Petal.Length,
  y = iris$Petal.Width
)

predict(
  object = model,
  newdata = data.frame(Petal.Length = c(2,5,7))
)
