getwd()
setwd("/home/piyush/Desktop/GIT/abhi-jha/DataScience/R/R1")
data("iris")
set.seed(42)
indexes<-sample(
  x = 1:150,
  size = 100
)
print(indexes)
train<-iris[indexes,]
test<-iris[-indexes,]
install.packages("tree",dependencies = TRUE)
library('tree')

model<-tree(
  formula = Species ~ .,
  data = train
)
summary(model)
plot(model)
text(model)

library(RColorBrewer)
palette = brewer.pal(3, "Set2")
plot(
  x = iris$Petal.Length,
  y = iris$Petal.Width,
  pch = 19,
  col = palette[as.numeric(iris$Species)],
  main = "Iris Petal Length vs Width",
  xlab = "Petal Length (cm)",
  ylab = "Petal Width (cm)"
)
partition.tree(
  tree = model,
  label = "Species",
  add  = TRUE
)

predcitions <- predict(
  object = model,
  newdata = test,
  type = "class"
)
table(
  x = predcitions,
  y = test$Species
)

install.packages("caret",dependencies = TRUE)
library(caret)


confusionMatrix(
  data = predcitions,
  reference = test$Species
)
getwd()
save(model,file= "Tree.RData")
save(train, file = "Train.RData")
#How to load the data back?
#m<-load("Tree.RData", envir = e <- new.env())
#print(m)
#identical(m, model, ignore.environment = TRUE)