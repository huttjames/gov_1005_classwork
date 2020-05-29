#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("My Plot from Q 1Q"),

    # Use imageOutput to place the image on the page
    mainPanel(
        imageOutput("myImage", width = "20%", height = "20%")
    )
)


# Define server logic required to draw a histogram
server <- function(input, output, session) {

    output$myImage <- renderImage({
        list(src = "dist_plot.png", height = 400)
    }, deleteFile = FALSE)
}

# Run the application 
shinyApp(ui = ui, server = server)
