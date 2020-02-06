
#' Get the Round Number
#'
#' This function asks a user to input the round number for a completed
#' debate round. If \arg{maxRounds} checks to see if the input is less than
#' the maximum number of rounds in the tournament, greater than 0, and
#' that all debates in the previous round has been completed. If any of
#' these conditions are not satisfied, it will ask the user to input a
#' different round number. To exit the loop, the user can type
#' \kbd{quit} and the function will return NULL.
#'
#' @param maxRounds: The maximum number of rounds in the tournament (numeric)
#' @return The user inputed round number
#' @export
#' @examples
#' get_rd_num()
#' get_rd_num(maxRounds=5)
get_rd_num <- function(maxRounds=NULL){

  # Throw an error if maxRounds is not numeric or null
  if(!(is.numeric(maxRounds) | is.null(maxRounds))){
    stop("maxRounds must be a numeric value")
  }

  # User provides round number
  RoundNum <- readline(prompt="Round Number: ")

  # If maxRounds numeric, check it is between 1 and maxRounds
  if(is.numeric(maxRounds) & RoundNum!="quit"){

    # Validate Round Number between 1 and max round
    while(!RoundNum %in% as.character(1:maxRounds)){

      # Information about why input is invalid
      writeLines(paste0("Please write a round between 1 and ", maxRounds))

      # Repeat prompt
      RoundNum <- readline(prompt="Round Number: ")

    }

  }

  # TODO: check if all entries in previous round are filled

  # Return the Round number
  return(RoundNum)
}
