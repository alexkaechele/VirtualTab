get_speaks <- function(){

  # User provides how many speaks Aff got
  AffSpeaks <- readline(prompt="Aff Total Speaks: ")

  # Allow user to cancel entry
  if(AffSpeaks == "quit"){return(AffSpeaks)}

  # Validate Speaks are within an acceptable range
  while(!AffSpeaks %in% as.character(3:7)){

    # More information about why entry failed
    writeLines("Speaks for a team must be integers between 3 and 7")

    # Repeat prompt
    AffSpeaks <- readline(prompt="Aff Total Speaks: ")

    # Allow user to cancel entry
    if(AffSpeaks == "quit"){return(AffSpeaks)}

  }

  # Determine Neg speaks from Aff speaks
  AffSpeaks <- as.numeric(AffSpeaks)
  NegSpeaks <- 10 - AffSpeaks

  # Return speaks
  return(c(AffSpeaks, NegSpeaks))
}

