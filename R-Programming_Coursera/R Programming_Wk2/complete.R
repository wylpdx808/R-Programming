complete <- function(directory, id =1:332) {
    # 'directory' - a character vector of length 1 indicating
    #               the location of the CSV files 
    # 'id' - an integer vector indicating the monitor ID 
    #        numbers to be used 
  
    # Return a date frame of the form: 
    # id  nobs 
    # 1   117 
    # 2   1041
    # ...
    # where 'id' is the monitor ID number and 'nobs' is the 
    # number of complete cases 
  
    filepath <- c("C:/Users/japor/Desktop/R programming/Week 2/", directory)
    setwd(paste(filepath, collapse =""))
    
    ID <- c()
    NOBS <- c()
    
    for (i in id) {
      data <- read.csv(dir()[i])
      ngood <- complete.cases(data$sulfate, data$nitrate)
      n <- length(data[ngood,2])
      ID <- c(ID, i)
      NOBS <- c(NOBS, n)
    }
    
    data.frame(id = ID, nobs = NOBS )
  
}