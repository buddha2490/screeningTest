
userUI <- function(id) {
  ns <- shiny::NS(id)
    htmltools::tagList(
      htmltools::h3("User Data"),
      textInput(ns("Fname"), "First Name"),
      textInput(ns("Lname"), "Last Name"),
      textInput(ns("Email"), "Email address"),
      selectInput(ns("SAS1"),
                  label = "Did you have a copy of SAS to use for this assignment",
                  choices = c("", "Yes", "No"),
                  selected = ""),
      textInput(ns("SAS2"), "How many years experience do you have using SAS?"),
      textInput(ns("R"), "How many years experience do you have using R?"),

    actionButton(ns("submit"), "Submit questions section"),
    uiOutput(ns("submitMessage"))
)

}

userServer <- function(id, myData) {
  shiny::moduleServer(id, function(input, output, session) {
    ns <- shiny::NS(id)

    observeEvent(input$submit, {

      answers <- c(input$Fname, input$Lname, input$Email, input$SAS1, input$SAS2, input$R, as.character(Sys.time()))

      questions <- c(paste0("User", 1:6), "startTime")
      users <- data.frame(questions = questions,
                            answers = answers)

      myData$updateUserData(users)

      output$submitMessage <- renderUI({
          helpText("Thank you, please proceed to the next section.")
      })
    })
  })
}
