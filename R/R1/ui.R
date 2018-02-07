#ui + server + shinyApp
library(shiny)
ui<-fluidPage(
  titlePanel("This is title panel"),
  sidebarLayout(
    sidebarPanel("Sidebar panel"),
    mainPanel("Main Panel")
  )
)

ui<-fluidPage(
  titlePanel("Input and Output"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        inputId = "number",
        label = "choose a number",
        min = 0,
        max = 100,
        value = 25
      )
    ),
    mainPanel(
      textOutput(
        outputId = "text"
      )
    )
  )
)

server<-function(input,output){
  output$text<-renderText({paste("You selected ",input$number)})
}

shinyApp(ui = ui,server = server)
