rankall <- function(outcome, num = 'best') {
  ## Read the outcome data 
  data <- read.csv('outcome-of-care-measures.csv', colClasses = 'character')

  states <- levels(factor(data$State))
  hospitals <- c()
  
  for (state in states) {
      hospitals <- c(hospitals, rankhospital(state, outcome, num))
  }
  
  data.frame(hospital = hospitals, state = states)
}