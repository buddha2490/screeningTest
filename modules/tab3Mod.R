
tab3UI <- function(id) {
  ns <- shiny::NS(id)
    htmltools::tagList(
      htmltools::h3("SDTM Questions"),

      radioButtons(ns("Q1"),
                   selected = 0,
        label = "Which of the following is not a date/time?",
        choices = c(
          "-DTC" = 0,
          "-ENDTC" = 0,
          "-STDTC" = 0,
          "-STRF" = 1,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q2"),
                   selected = 0,
                   label = "Which kind of variable holds values that provide the standard set of 'keys' for the dataset, including a surrogate key?",
        choices = c(
          "Identifier" = 1,
          "Topic" = 0,
          "Qualifier" = 0,
          "Timing" = 0,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q3"),
                   selected = 0,
                   label = "What is the Topic variable for the Findings class?",
        choices = c(
          "TRT" = 0,
          "TERM" = 0,
          "TESTCD" = 1,
          "TEST" = 0,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q4"),
                   selected = 0,
                   label = "What is the Topic variable for the Interventions class?",
        choices = c(
          "TRT" = 1,
          "TERM" = 0,
          "TESTCD" = 0,
          "TEST" = 0,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q5"),
                   selected = 0,
                   label = "Which type of qualifier variable holds the result of a planned test or measurement?",
        choices = c(
          "Grouping Qualifier" = 0,
          "Result Qualifier" = 1,
          "Synonym Qualifier" = 0,
          "Variable Qualifier" = 0,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q6"),
                   selected = 0,
                   label = "Which kind of variable holds the information about dates, times and visits?",
        choices = c(
          "Identifier" = 0,
          "Topic" = 0,
          "Qualifier" = 0,
          "Timing" = 1,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q7"),
                   selected = 0,
                   label = "SDTM provides a standard way to organize and format whatever is collected in a study. What is collected is determined by science and regulation.",
        choices = c(
          "True" = 1,
          "False" = 0,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q8"),
                   selected = 0,
                   label = "Referencing the SDTM Table of Contents, how many general 'Observation Classes' are there?",
        choices = c(
          "3" = 1,
          "5" = 0,
          "7" = 0,
          "12" = 0,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q9"),
                   selected = 0,
                   label = "SDTM tells us what data we must collect for all studies. True or False?",
        choices = c(
          "True" = 0,
          "False" = 1,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q10"),
                   selected = 0,
                   label = "Which of the following statements is true?",
        choices = c(
          "SDTM has a standard structure for 'non-standard' data" = 1,
          "The 'non-standard' data collected in a study has no place in SDTM" = 0,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q11"),
                   selected = 0,
                   label = "Referencing the SDTM Table of Contents, which of the following is not a general 'Observation Class' in SDTM?",
        choices = c(
          "Interventions" = 0,
          "Events" = 0,
          "Findings" = 0,
          "Trial Design" = 1,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q12"),
                   selected = 0,
                   label = "Referencing the SDTM Table of Contents, which of the following is not a Special Purpose data structure in SDTM?",
        choices = c(
          "Demographics" = 0,
          "Comments" = 0,
          "Subject Events" = 0,
          "Vital Signs" = 1,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q13"),,
                   selected = 0,
                   label = "Which variable is a surrogate key and ensures uniqueness for the record?",
        choices = c(
          "-REFID" = 0,
          "-SPID" = 0,
          "-LNKID" = 0,
          "-SEQ" = 1,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q14"),
                   selected = 0,
                   label = "What is the correct order for variables in SDTM?",
        choices = c(
          "Identifiers, Timing, Topic, Qualifiers" = 0,
          "Identifiers, Topic, Qualifiers, Timing" = 1,
          "Topic, Rule, Qualifiers, Timing" = 0,
          "Topic, Timing, Qualifiers, Identifiers" = 0,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q15"),
                   selected = 0,
                   label = "Which class of data holds data about substances that the subject self-administers?",
        choices = c(
          "Interventions" = 1,
          "Events" = 0,
          "Findings" = 0,
          "Special Purpose" = 0,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q16"),
                   selected = 0,
                   label = "Which variable holds a value that uniquely identifies a human subject across all domains, studies and submissions?",
        choices = c(
          "STUDYID" = 0,
          "DOMAIN" = 0,
          "USUBJID" = 1,
          "SUBJID" = 0,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q17"),
                   selected = 0,
                   label = "What is the Topic variable for the Events class?",
        choices = c(
          "-TRT" = 0,
          "-TERM" = 1,
          "-TESTCD" = 0,
          "-TEST" = 0,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q18"),
                   selected = 0,
                   label = "Which kind of variable holds the focus of the observation?",
        choices = c(
          "Identifier" = 0,
          "Topic" = 1,
          "Qualifier" = 0,
          "Timing" = 0,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q19"),
                   selected = 0,
                   label = "Which General Observation class is for data from planned measurements, tests and observations?",
        choices = c(
          "Interventions" = 0,
          "Events" = 0,
          "Findings" = 1,
          "Special Purpose" = 0,
          "No Answer" = 0)
      ),
      radioButtons(ns("Q20"),
                   selected = 0,
                   label = "Which domain should be used to hold height, weight and BMI?",
        choices = c(
          "Physical Exam (PE)" = 0,
          "Medical History (MH)" = 0,
          "Demographics (DM)" = 0,
          "Vital Signs (VS)" = 1,
          "No Answer" = 0)
      ),
    actionButton(ns("submit"), "Submit questions section"),
    uiOutput(ns("submitMessage")))
}

tab3Server <- function(id, myData) {
  shiny::moduleServer(id, function(input, output, session) {
    ns <- shiny::NS(id)
    observeEvent(input$submit, {

      answers <- c(input$Q1, input$Q2, input$Q3, input$Q4, input$Q5, input$Q6,
                   input$Q7, input$Q8, input$Q9, input$Q10, input$Q11, input$Q12,
                   input$Q13, input$Q14, input$Q15, input$Q16, input$Q17, input$Q18,
                   input$Q19, input$Q20)

      questions <- paste0("SDTM", 1:20)

      sdtm <- data.frame(questions = questions,
                         answers = answers)

      myData$updateSDTMData(sdtm)

      output$submitMessage <- renderUI({
       helpText("You have completed the SDTM section.  Please proceed to the upload section.")
      })
    })
  })
}
