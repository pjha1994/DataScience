install.packages('ggplot2',dependencies = TRUE)

library(ggplot2)

df<-data.frame(
  Name = c("a","b","c"),
  Value = c(1,2,3)
)
ggplot(
  data = df,
  aes(
    x = Name,
    y = Value)
  ) +
  geom_point()


ggplot(
  data = df,
  aes(
    x = Name,
    y = Value)
) +
  geom_point() + 
  ggtitle("Hello Plot") + 
  xlab("Name") + 
  ylab("Value")



?geom_bar
?ggtitle
ggplot(
  data = df,
  aes(
    x = Name,
    y = Value)
) +
  geom_bar(
    stat = "identity",
    fill = "skyblue"
  ) + 
  ggtitle("Hello Plot") + 
  xlab("Name") + 
  ylab("Value")