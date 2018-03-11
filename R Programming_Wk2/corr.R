corr <- function(directory, threshold = 0) {
    # 'directory' - a character vector of length 1 indicating 
    #               the location of the CSV files 
    # 'threshold' - a numeric vector of length 1 indicating 
    #               the number of completely observed observations 
    #               (on all variables) required to complete the 
    #               correlation between nitrate and sulfate; 
    #               default is 0 
  
    # Return a numeric vector of correlations 
    # NOTE: Do not round the result! 
  
    filepath <- c("C:/Users/japor/Desktop/R programming/Week 2/", directory)
    setwd(paste(filepath, collapse =""))
    
    cc <- complete(directory)
    
    findcorr <- subset(cc, cc$nobs > threshold)
    goodID <-findcorr$id
    
    correlations <- c()
    for (i in goodID) {
      data <- read.csv(dir()[i])
      corrval <- cor(data$sulfate, 
                     data$nitrate, 
                     use = 'pairwise.complete.obs')
      correlations <- c(correlations, corrval)
    }
    
    correlations 
}