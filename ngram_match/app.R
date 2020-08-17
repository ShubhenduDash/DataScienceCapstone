#' ---
#' title: 'Task 06: Data Product'
#' author: "Shubhendu Dash"
#' date: "17-08-2020"
#' output: github_document
#' ---

#' ## Shiny App 
#' This is a Shiny App that takes a word or phrase as the input in a text box
#' and gives the predicted next word as outputs. 

library(shiny)
suppressPackageStartupMessages({
   library(tidyverse)
   library(stringr)
 })

#' Source ngram matching function
source("ngram.R")

#' Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Text Prediction Model"),
   p("This is a Shiny App that takes a word or phrase as the input in a text box and gives the predicted next word as outputs."),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
        h2("Instructions:"), 
        h5("1. Enter a word or words in the text box."),
        h5("2. The predicted next word is in blue text."),
        h5("3. A question mark means no prediction, typically due to mis-spelling"),
        h5("4. Additional tabs show plots of the top ngrams in the dataset"),
        br(),
        a("Review the Source Code", href = "https://github.com/ShubhenduDash/DataScienceCapstone/ngram_match")
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
        tabsetPanel(
          tabPanel("predict",
            textInput("user_input", h3("Your Input:"), 
                    value = "Your words"),
            h3("Predicted Next Word:"),
            h4(em(span(textOutput("ngram_output"), style="color:blue")))),
        
          tabPanel("top quadgrams",
            br(),
            img(src = "quadgrams.png", height = 500, width = 700)),
        
          tabPanel("top trigrams",
            br(),       
            img(src = "trigrams.png", height = 500, width = 700)),
      
          tabPanel("top bigrams",
            br(),
            img(src = "bigrams.png", height = 500, width = 700))
          )   
    )
  )
)

#' Define server logic required to draw a histogram
server <- function(input, output) {
   
  output$ngram_output <- renderText({
      ngrams(input$user_input)
  })
  
}
  
#' Run the application 
shinyApp(ui = ui, server = server)

