## remove_missing function
# This function removes missing values from the input vector and returns it. 
# Input: 
# Output:
remove_missing <- function(x){
  if(is.character(x = 'NA')){
    return()
  }
}


## get_minimum function
# This function takes a numeric vector, and an optional logical (bold)na.rm(bold) 
# argument, to find the minimum value.
# Input: Vector
# Output: Minimum integer in vector
get_minimum <- function(x){
  return(sort(x)[1])
}

## get_maximum function
# This function takes a numeric vector, and an optional logical (bold)na.rm(bold) 
# argument, to find tahe maximum value.
# Input: Vector
# Output: Maximum integer in vector
get_maximum <- function(x){
  return(sort(x, decreasing = TRUE)[1])
}

## get_range function
# This function takes a numeric vector to compute the overall range of the input vector
# Input: numeric vector
# Output: Range of vector
get_range <- function(x){
  return(get_maximum(x)-get_minimum(x))
}

## get_percentile10 function
# This function takes a numeric vector  and computes the 10th percentile of the input vector
# Input: Numeric vector
# Output: tenth percentile of vector
get_percentile10 <- function(x){
  quantile(x, prob = seq(0, 1, length = 10), type = 5)
}
