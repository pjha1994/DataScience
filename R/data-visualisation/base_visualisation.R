df<-data.frame(
  Name = c("a","b","c"),
  Value = c(1,2,3)
)

print(df)

plot(df)

plot(df$Name,df$Value)

plot(
  x = df$Name,
  y = df$Value
)


plot(
  y = df$Name,
  x = df$Value
)


barplot(
  names  = df$Name,
  height = df$Value,
  col = 'skyBlue',
  main = "Hello Plot",
  xlab = "Name",
  ylab = "Value"
)


?plot
?barplot


install.packages('lattice',dependencies = TRUE)
?lattice
library(lattice)

df<-data.frame(
  Name = c("a","b","c"),
  Value = c(1,2,3)
)

plot(df)

?dotplot
dotplot(
  x = Value ~ Name,
  data = df
)


dotplot(
  x = Value ~ Name,
  data = df,
  main = "Hello Plot",
  xlab = "Name",
  ylab = "Value"
)



barchart(
  x = Value ~ Name,
  data = df,
  main = "Hello Plot",
  xlab = "Name",
  ylab = "Value"
)
