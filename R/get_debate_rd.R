get_debate_rd <- function(){

  # Show what user entered
  writeLines(paste0("\nThe data you have entered is:
                    \nRound: ", RoundNum,
                    "\nRoom: ", RoomNum,
                    "\nWinner: ", WinTeam,
                    "\nAff Speaks: ", AffSpeaks,
                    "\nNeg Speaks: ", NegSpeaks, "\n"))

  # Ask for user to validate
  correctData <- readline("Is the following information correct? (y/n): ")

  # Allow user to cancel entry
  if(correctData == "quit"){return(NULL)}

  # Check to see if user entered valid input
  while(!correctData %in% c("y", "n")){

    # More information about why entry failed
    writeLines("Please type \"y\" if information is correct and \"n\" if data is incorrect")

    # Repeat prompt
    correctData <- readline("Is the following information correct? (y/n): ")

    # Allow user to cancel entry
    if(correctData == "quit"){return(NULL)}

  }

  # TODO: If data is not correct, ask which part and have them reenter it
  while(correctData == "n"){
    # Need to do things here
    writeLines("sorr about that, we will try again")
    correctData <- "y"
    return(NULL)
  }


  # Return the outputs
  return(list(RoundNum, RoomNum, WinTeam, AffSpeaks, NegSpeaks))
}

