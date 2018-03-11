best <- function(state, outcome, num = 1) {
  
    ## Read the outcome data 
    data <- read.csv('outcome-of-care-measures.csv', colClasses = 'character')
    data[,11] <- as.numeric(data[,11]) # heart attack (coerce to numeric)
    data[,17] <- as.numeric(data[,17]) # heart failure
    data[,23] <- as.numeric(data[,23]) # pneumonia 
    
    
    ## Check the state and outcome are valid 
    if (any(data$State == state)) {
        state_data <- data[data$State == state,]
    
        ## Return the hospital name in the state with lowest 30-day death rate
        # col 11 = 30 day mortality from heart attack
        if (outcome == 'heart attack'){
            good <- complete.cases(state_data[,2], state_data[,11]) 
            ccStateData <- state_data[good,c(2,11)]
            rank <- order(ccStateData[,2],ccStateData[,1])
            ccStateData[rank,][num,1]
        }
    
        # col 17 = 30 day mortality from heart failure 
        else if (outcome == 'heart failure'){
            good <- complete.cases(state_data[,2], state_data[,17]) 
            ccStateData <- state_data[good,c(2,17)]
            rank <- order(ccStateData[,2],ccStateData[,1])
            ccStateData[rank,][num,1]
        }
    
        # col 23 = 30 day mortality from pneumonia
        else if (outcome == 'pneumonia') {
            good <- complete.cases(state_data[,2], state_data[,23]) 
            ccStateData <- state_data[good,c(2,23)]
            rank <- order(ccStateData[,2],ccStateData[,1])
            ccStateData[rank,][num,1]
        }
    
        # Invalid outcome 
        else {stop('invalid outcome')}
    }
    
    # Invalid state 
    else {stop("invalid state")}
  
  
}
