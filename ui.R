library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Weather prediction"),
  
    sidebarPanel(
      textInput('city', "Please specify the name of a city and optionally its country code." , "New York,USA"),
      submitButton('Submit')
    ),
    mainPanel(
        h4("You have searched for:"),
        verbatimTextOutput("inputValue"),
        h4('Available Weather Results are displayed below:'),
        verbatimTextOutput("prediction")
    )
  )
)
