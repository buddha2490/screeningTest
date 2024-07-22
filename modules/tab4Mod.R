
tab4UI <- function(id) {
  ns <- shiny::NS(id)
    htmltools::tagList(
      htmltools::h3("Upload exercise"),
      actionButton(ns("Upload"), "save the data")
    )
}

tab4Server <- function(id, myData) {
  shiny::moduleServer(id, function(input, output, session) {
    ns <- shiny::NS(id)

    # TODO:  this needs to be an update button
    observeEvent(input$Upload, {

      myData$final()

    })


  })
}
