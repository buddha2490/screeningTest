
tab1UI <- function(id) {
  ns <- shiny::NS(id)
    htmltools::tagList(
      htmltools::h3("General Questions"),

        radioButtons(ns("Q1"),
                     selected = 0,
          label = "Which CDISC standard is a structure for creating data that is ready for analysis?",
          choices = c(
            "ICH" =0,
            "ADaM" = 1,
            "DEFINE-XML" =0,
            "CDASH" =0,
            "SDTM" = 0,
            "No answer" = 0)
        ),
        radioButtons(ns("Q2"),
                     selected = 0,
          label = "What is Controlled terminology?",
          choices = c(
            "The set of codelists and valid values used with data items within CDISC-defined datasets" = 1,
            "Fully Controlled list of values to be used with data items within CDISC-defined datasets" =0,
            "Controlled list of variables for data items within CDISC-defined datasets" =0,
            "Controlled list of standards to be used within CDISC standards" =0,
            "Controlled list of terms that can be used with data items within CDISC-defined datasets" = 0,
            "No answer" = 0)

        ),
        radioButtons(ns("Q3"),
                     selected = 0,
          label = "How many classes are in Standard Data Tabulation Model (SDTM) standards?",
          choices = c(
            "Demographics, Exposure, and Events" =0,
            "Demographics, Safety, and Efficacy" =0,
            "Interventions, Events, and Findings" = 1,
            "Interventions, Exposure, and Vitals" =0,
            "Data Collection, Standards, and Analysis" = 0,
            "No answer" = 0)
        ),
        radioButtons(ns("Q4"),
                     selected = 0,
          label = "Concomitant/Prior Medications (CM) is a component of which SDTM class?",
          choices = c(
            "Findings" =0,
            "Events" =0,
            "Interventions" = 1,
            "Special Purpose" = 0,
            "No answer" = 0)
        ),
        radioButtons(ns("Q5"),
                     selected = 0,
          label = "Exposure data pertaining to body temperature associated with a fever should reside in which SDTM domain?",
          choices = c(
            "Exposure (EX)" =0,
            "Clinical Events (CE)" =0,
            "Adverse Events (AE)" =0,
            "Vital Signs (VS)" = 1,
            "Demography (DM)" = 0,
            "No answer" = 0)
        ),
        radioButtons(ns("Q6"),
                     selected = 0,
          label = "What is the main focus of Good Clinical Practices (GCP)?",
          choices = c(
            "Protection of subjects" = 1,
            "Harmonized data collection" =0,
            "Standard analysis practices" =0,
            "Standard monitoring practices" = 0,
            "No answer" = 0)
        ),
        radioButtons(ns("Q7"),
                     selected = 0,
          label = "Which of these CRAN packages is used for Clinical Reporting Submissions to FDA?",
          choices = c(
            "exporter" =0,
            "r2rtf" = 1,
            "submissions" =0,
            "reporting" =0,
            "render" = 0,
            "No answer" = 0)
        ),
        radioButtons(ns("Q8"),
                     selected = 0,
          label = "What data format is recommended for regulatory submissions by the FDA?",
          choices = c(
            ".xlm" =0,
            ".csv" =0,
            ".R" =0,
            ".RData" = 1,
            "All of the above" = 0,
            "No answer" = 0)
        ),
        radioButtons(ns("Q9"),
                     selected = 0,
          label = "From the fmtr package, what is the purpose of the format catalog?",
          choices = c(
            "Save user defined formats for later use" = 1,
            "Augto-generate formats" =0,
            "Create list of formats" =0,
            "Use SAS formats for reporting" =0,
            "Create user defined formats" = 0,
            "No answer" = 0)
        ),

    actionButton(ns("submit"), "Submit questions section"),
    uiOutput(ns("submitMessage"))
)

}

tab1Server <- function(id, myData) {
  shiny::moduleServer(id, function(input, output, session) {
    ns <- shiny::NS(id)

    observeEvent(input$submit, {

      answers <- c(input$Q1, input$Q2, input$Q3, input$Q4, input$Q5, input$Q6,
                   input$Q7, input$Q8, input$Q9)
      questions <- paste0("General", 1:9)
      general <- data.frame(questions = questions,
                            answers = answers)

      myData$updateGeneralData(general)

      output$submitMessage <- renderUI({
          helpText("You have completed the General Questions section.  Please proceed to the next section.")
      })
    })
  })
}
