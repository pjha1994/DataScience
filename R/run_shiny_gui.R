
source("~/Desktop/GIT/abhi-jha/DataScience/R/twitter_search.R")

#install.packages("plyr")

runApp(shinyApp(
  ui = fluidPage(
    actionButton("btn", "calculate")
  ),
  server = function(input, output, session) {
    observeEvent(input$btn, {
      search()
    })
  }
))