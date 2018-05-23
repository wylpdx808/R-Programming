# R-Programming

These are assignments from the R programming course taught by Dr. Roger Peng, Dr. Jeff Leek, and Dr. Brian Caffo of Johns Hopkins University on Coursera. 

### Week 2: Programming with R
* *Part 1*: 
    * Write a function named `pollutantmean` that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA.
 * *Part 2*: 
     * Write a function that reads a directory full of files and reports the number of completely observed cases in each data file. The function should return a data frame where the first column is the name of the file and the second column is the number of complete cases. 
 * *Part 3*: 
     * Write a function that takes a directory of data files and a threshold for complete cases and calculates the correlation between sulfate and nitrate for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold. The function should return a vector of correlations for the monitors that meet the threshold requirement. If no monitors meet the threshold requirement, then the function should return a numeric vector of length 0. For this function you will need to use the 'cor' function in R which calculates the correlation between two vectors. 
      <br>
### Week 3: Loop functions and debugging 
  * Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than computing it repeatedly (there are also alternatives to matrix inversion that we will not discuss here). Your assignment is to write a pair of functions that cache the inverse of a matrix.
  * *Part 1*: 
      * Write a function named `makeCacheMatrix` that creates a special "matrix" object that can cache its inverse.
  * *Part 2*: 
      * Write a function named `cacheSolve` that computes the inverse of the special "matrix" returned by `makeCacheMatrix` above. If the inverse has already been calculated (and the matrix has not changed), then `cacheSolve` should retrieve the inverse from the cache.
       <br>
### Week 4: Simulation and Profiling 
  * *Part 1*: 
      * Plot the 30-day mortality rates for heart attack.
  * *Part 2*: 
      * Write a function called `best` that take two arguments: the 2-character abbreviated name of a state and an outcome name. The function reads the `outcome-of-care-measures.csv` file and returns a character vector with the name of the hospital that has the best (i.e. lowest) 30-day mortality for the specified outcome in that state. The hospital name is the name provided in the `Hospital.Name` variable. The outcomes can be one of "heart attack", "heart failure", or "pneumonia". Hospitals that do not have data on a particular outcome should be excluded form the set of hospitals when deciding the rankings. 
  * *Part 3*: 
      * Write a function called `rankhospital` that takes three arguments: the 2-character abbreviated name of a
state (state), an outcome (outcome), and the ranking of a hospital in that state for that outcome (num).
The function reads the `outcome-of-care-measures.csv` file and returns a character vector with the name
of the hospital that has the ranking specified by the num argument. For example, the call `rankhospital("MD", "heart failure", 5)`
would return a character vector containing the name of the hospital with the 5th lowest 30-day death rate
for heart failure. The num argument can take values "best", "worst", or an integer indicating the ranking
(smaller numbers are better). If the number given by num is larger than the number of hospitals in that
state, then the function should return NA. Hospitals that do not have data on a particular outcome should be excluded from the set of hospitals when deciding the rankings. 
  * *Part 4*: 
       * Write a function called `rankall` that takes two arguments: an outcome name (`outcome`) and a hospital rank-
ing (`num`). The function reads the `outcome-of-care-measures.csv` file and returns a 2-column data frame
containing the hospital in each state that has the ranking specified in `num`. For example the function call
`rankall("heart attack", "best")` would return a data frame containing the names of the hospitals that
are the best in their respective states for 30-day heart attack death rates. The function should return a value
for every state (some may be NA). The first column in the data frame is named hospital, which contains
the hospital name, and the second column is named state, which contains the 2-character abbreviation for
the state name. Hospitals that do not have data on a particular outcome should be excluded from the set of
hospitals when deciding the rankings.
       
