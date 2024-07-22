
tab2UI <- function(id) {
  ns <- shiny::NS(id)
    htmltools::tagList(
      htmltools::h3("ADaM Questions"),


      radioButtons(ns("Q1"),
        label = "Why is ADaM submitted as SAS Version 5 transport files?",
        selected = 0,
        choices = c(
          "Because FDA standardized to this format in 1999." = 1,
          "Because SAS is the only format that is usable by review software" = 0,
          "Because the ADaM team made this decision" = 0,
          "Because other formats could confuse the reviewers" = 0,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q2"),
        label = "Which of the following is not part of the goals and mission of ADaM?",
        selected = 0,
        choices = c(
          "Support SAS software tools" = 1,
          "Support efficient generation, replication and review of analysis results" = 0,
          "Transparency, Traceability, and clear communication" = 0,
          "Meet the needs of FDA Reviewers" = 0,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q3"),
        label = "How does ADaM help FDA reviewers (select the best response)?",
        selected = 0,
        choices = c(
          "Analysis data from all companies can be in the same structure" = 0,
          "Data can be combined across companies and by therapeutic areas" = 0,
          "Supports the larger vision of an FDA data repository" = 0,
          "All of the above" = 1,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q4"),
        label = "Which of the following is not a fundamental principle of ADaM?",
        selected = 0,
        choices = c(
          "Includes all raw data" = 1,
          "Clear communication and traceability" = 0,
          "Support efficient generation, replication and review of analysis results" = 0,
          "Meet the needs of FDA Reviewers" = 0,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q5"),
        label = "ADaM datasets are designed for what primary purpose?",
        selected = 0,
        choices = c(
          "Production of primary efficacy and safety analyses that are specified in the statistical analysis plan" = 1,
          "Replication of all SDTM data with the addition of derived data" = 0,
          "Exploratory analysis" = 0,
          "Production of all statistical tables and listings" = 0,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q6"),
        label = "What is the first step to take when deciding on the name for a derived variable in ADaM?",
        selected = 0,
        choices = c(
          "Study the ADaM implementation guide and determine if there is a variable name or fragment that is appropriate for the variable concept" = 1,
          "Use a variable name that is an abbreviation for the variable concept" = 0,
          "Look for a variable name in the SDTM implementation guides that is a good fit for the variable concept" = 0,
          "None of the above" = 0,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q7"),
        label = "What is one of the two ways to achieve traceability?",
        selected = 0,
        choices = c(
          "Informative metadata" = 1,
          "Double programming" = 0,
          "A list of SDTM domains used for dataset creation" = 0,
          "A diagram" = 0,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q8"),
        label = "BDS differs from ADSL in that it allows which of the following?",
        selected = 0,
        choices = c(
          "Multiple records per subject" = 1,
          "No treatment variables" = 0,
          "One record per subject" = 0,
          "Subject level data" = 0,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q9"),
        label = "What is a possible reason for why the value of VISIT will differ from AVISIT for a given observation?",
        selected = 0,
        choices = c(
          "AVISIT can be a completely derived concept." = 0,
          "AVISIT value may be based on windowing algorithm which results in a different visit window description than the nominal VISIT value." = 0,
          "The text of AVISIT may more clearly define the timing of the visit than the text of VISIT. For example, AVISIT=“Month 3” and VISIT=“Visit 3”. " = 0,
          "All of the above." = 1,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q10"),
        label = "Which of the following is the ADaM variable used to represent the treatment a subject actually received?",
        selected = 0,
        choices = c(
          "TRTxxA" = 1,
          "TRTxxP" = 0,
          "APxxSDT" = 0,
          "TRTSEQA" = 0,
          "ACTARM" = 0,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q11"),
        label = "Which is the variable used to indicate whether a subject is included in the Intent-to-treat population?",
        selected = 0,
        choices = c(
          "ITTFL" = 1,
          "INTENTFL" = 0,
          "POPINTFL" = 0,
          "POPFLAG1" = 0,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q12"),
        label = "What data set name should be used for the subject level analysis dataset?",
        selected = 0,
        choices = c(
          "ADSL" = 1,
          "ADSUBJ" = 0,
          "SUBJLEV" = 0,
          "ADSL1" = 0,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q13"),
        label = "Which of the following variables are required to be included in ADSL and copied directly from SDTM DM?",
        selected = 0,
        choices = c(
          "AGE, SEX, AGEU, ARM" = 1,
          "DMDTC, AGE, RFSTDTC, ARM" = 0,
          "USUBJID, SITEID, AGEU, AGEGROUP" = 0,
          "ACTARM, ACTARMCD, ARM, ARMCD" = 0,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q14"),
        label = "Which of the following pairs of variables are BOTH required for a BDS dataset?",
        selected = 0,
        choices = c(
          "PARAM and PARAMCD" = 1,
          "PARAM and PARAMN" = 0,
          "PARCATy and PARAMCD" = 0,
          "PARAMN and PARCATy" = 0,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q15"),
        label = "Which group of variables must always be present in a BDS dataset?",
        selected = 0,
        choices = c(
          "PARAM, PARAMCD, AVAL and/or AVALC" = 1,
          "PARAM, AVALCAT1, AVAL" = 0,
          "AVAL, BASE, SUBJID" = 0,
          "USUBJID, SAFFL, AVAL" = 0,
          "No answer" = 0
        )
      ),
      radioButtons(ns("Q16"),
        label = "PARAM must meet which of the following criteria?",
        selected = 0,
        choices = c(
          "It must be a complete text description of the parameter." = 1,
          "It must be a short code value of the parameter." = 0,
          "It must include information on covariates or other predictor variables." = 0,
          "All of the above." = 0,
          "No answer" = 0
        )
      ),
      actionButton(ns("submit"), "Submit questions section"),
      uiOutput(ns("submitMessage"))


    )
}

tab2Server <- function(id, myData) {
  shiny::moduleServer(id, function(input, output, session) {
    ns <- shiny::NS(id)
    observeEvent(input$submit, {

      answers <- c(input$Q1, input$Q2, input$Q3, input$Q4, input$Q5, input$Q6,
                   input$Q7, input$Q8, input$Q9, input$Q10, input$Q11, input$Q12,
                   input$Q13, input$Q14, input$Q15, input$Q16)
      questions <- paste0("ADAM", 1:16)
      adam <- data.frame(questions = questions,
                            answers = answers)

      output$submitMessage <- renderUI({
        helpText("You have completed the ADaM section.  Please proceed to the next section.")
      })
    })
  })
}
