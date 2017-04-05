# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  return (paste("The differenece in lengths is", length(v1) - length(v2)))
}

# Pass two vectors of different length to your `CompareLength` function
test1 <- CompareLength(c(1,2,3), c(1,2))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  len <- length(v1) - length(v2)
  
  if(len < 0) {
    return(paste("Your second vector is longer by", -1 * len, "elements"))
  } else if(len > 0) {
    return(paste("Your first vector is longer by", len, "elements"))
  } else {
    return(paste("The two vectors are the same length of", len, "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
test2 <- DescribeDifference(c(1,2,3), c(1,2))


### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(v1, v2) {
  len <- length(v1) - length(v2)
  
  if(len < 0) {
    return(paste("Your", deparse(substitue(v2)) , "is longer by", -1 * len, "elements"))
  } else if(len > 0) {
    return(paste("Your", deparse(substitute(v1)) ,"is longer by", len, "elements"))
  } else {
    return(paste("The two vectors are the same length of", len, "elements"))
  }
}