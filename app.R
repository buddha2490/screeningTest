

library(shiny)
library(shinydashboard)
library(dplyr)
library(shinyjs)
library(R6)

source("modules/userData.R")
source("modules/tab1Mod.R")
source("modules/tab2Mod.R")
source("modules/tab3Mod.R")
source("modules/tab4Mod.R")
source("appData.R")





# Header UI ------------------------------------------------------------------


header <- dashboardHeader(
  title = HTML("SAS to R Screening Questions"),
  titleWidth = 500
)

header$children[[2]]$children[[2]] <- header$children[[2]]$children[[1]]
header$children[[2]]$children[[1]] <- tags$a(href='https://www.procogia.com/',
                                             tags$img(src = "procogia.png",
                                                      target = "_blank",
                                                      alt = "ProCogia Logo",
                                                      height = "30",
                                                      width = "120",
                                                      style = "vertical-align:middle"))
# Sidebar UI --------------------------------------------------------------

sidebar <- dashboardSidebar(
  width = 150,
  sidebarMenu(
    id = "tabs",
    style = "position: relative; overflow: visible;",
    collapsible = F,
    hr(),
    menuItem("User registration", tabName = "userTab"),
    menuItem("General Questions", tabName = "tab1"),
    menuItem("ADaM Questions", tabName = "tab2"),
    menuItem("SDTM Questions", tabName = "tab3"),
    menuItem("Upload Code", tabName = "tab4")))



# Body UI -----------------------------------------------------------------
body <- dashboardBody(
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "stylesheet.css")),
  tags$style("html, body {overflow: visible !important;"),
  useShinyjs(),
  fluidPage(
    tabItems(
      tabItem(tabName = "userTab",
              userUI("userInfo")),
      tabItem(tabName = "tab1",
              tab1UI("quiz1")),
      tabItem(tabName = "tab2",
              tab2UI("quiz2")),
      tabItem(tabName = "tab3",
              tab3UI("quiz3")),
      tabItem(tabName = "tab4",
              tab4UI(id = "tab4Mod"))
    )))


# Build the UI ------------------------------------------------------------
ui <-
  dashboardPage(
    header,
    sidebar,
    body
  )




# Server code -------------------------------------------------------------
server <- function(input, output, session) {

  myData <- appData$new()

  # Load data ---------------------------------------------------------------

  observeEvent(input$tabs, {
    if (input$tabs == "userTab") {
      userServer("userInfo", myData)
    }
    if (input$tabs == "tab1") {
      tab1Server("quiz1", myData)
    }
    if (input$tabs == "tab2") {
      tab2Server("quiz2", myData)
    }
    if (input$tabs == "tab3") {
      tab3Server("quiz3", myData)
    }
    if (input$tabs == "tab4") {
      tab4Server(id = "tab4Mod", myData)
    }
  })

}



shinyApp(ui = ui, server = server)
