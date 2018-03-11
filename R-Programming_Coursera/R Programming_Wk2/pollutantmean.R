pollutantmean <- function(directory, pollutant, id = 1:332){
    # 'directory' - a character vector of length 1 indicating 
    #             the location of the CSV files 
    # 'pollutant' - a character vector of length 1 indicating
    #             the name of the pollutant for which we will
    #             calculate the mean; either "sulfate" or "nitrate"
    # 'id' - an integer vector indicating the monitor ID numbers 
    #        to be used 
  
    # Return the mean of the pollutant across all monitors list 
    # in the 'id' vector (ignoring NA values) 
    # Note: Do not round the result! 
    filepath <- c("C:/Users/japor/Desktop/R programming/Week 2/", directory)
    setwd(paste(filepath, collapse =""))

    p_all <- c()

    for (i in id) {
      data <- read.csv(dir()[i])
      p <- data[pollutant]
      bad <- is.na(p)
      pgood <- p[!bad]
      p_all <- c(p_all, pgood)
    }
    
    mean(p_all)
}