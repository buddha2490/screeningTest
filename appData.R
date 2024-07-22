# Data object
appData <- R6Class(

  "screeningData",

  public = list(

    user = NULL,
    general = NULL,
    ADAM = NULL,
    SDTM = NULL,

    # Initialize Data
    initialize = function() {
      self$user <- NULL
      self$general <- NULL
      self$ADAM <- NULL
      self$SDTM <- NULL
      invisible(self)
    },

    updateUserData = function(dat) {
      self$user <- dat
      invisible(self)
    },

    updateGeneralData = function(dat) {
      self$general <- dat
      invisible(self)
    },

    updateADAMData = function(dat) {
      self$ADAM <- dat
      invisible(self)
    },

    updateSDTMData = function(dat) {
      self$SDTM <- dat
      invisible(self)
    },

    # TODO: this needs to write to a database
    final = function() {
      finalDat <- rbind(
        self$user,
        self$general,
        self$ADAM,
        self$SDTM
      )
      time <- data.frame(questions = "endTime", answers = as.character(Sys.time()))

      finalDat <- rbind(finalDat, time)

      saveRDS(finalDat, file = "finalData.RDS")
    }



  )
)