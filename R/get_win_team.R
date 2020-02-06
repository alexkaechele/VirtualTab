get_win_team <- function(){

  # User provides winning team
  WinTeam <- readline(prompt="Winning Team (Aff/Neg): ")

  # Validate Winner is Aff or Neg
  while(!WinTeam %in% c("Aff", "Neg", "quit")){

    # More information about why entry failed
    writeLines("Please write either `Aff` or `Neg`.")

    # Repeat prompt
    WinTeam <- readline(prompt="Winning Team (Aff/Neg): ")

  }

  return(WinTeam)

}
