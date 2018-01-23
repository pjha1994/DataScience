install.packages(c("devtools", "rjson", "bit64", "httr"))
install.packages("httpuv")
library("devtools")
install_github("pjha1994/twitteR")
library(twitteR)

api_key <- "b3c5v1KaXUKHTKzJbt1ZSuKxO"

api_secret <- "NUPczTHVsnbDYpL1OwkkfT7Gk0z4FEGRkjxqvjbDjL7n7uoF6X"

access_token <- "153462023-JLtASN3e2DPRXBjwFoZGxXOu1rhhTEcZs0aw6NAi"

access_token_secret <- "CHNVb5TU28UkYJNVJZ87N03wnEdtsviXgyKR8Wyp98dQ9"

setup_twitter_oauth(api_key,api_secret)

searchTwitter("modi",n=30)

