# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a,b){
   sentence <- "The difference in lengths is N" 
   return (sentence)
}
# Pass two vectors of different length to your `CompareLength` function


# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b){
  DescribeDifference <- function(a,b) {
    diff <- length(a) - length(b)
    if(diff > 0) {
      vector.name <- deparse(substitute(a))
      sentence <- paste('Vector', vector.name, 'is longer by', diff, 'elements')
    } else {
      vector.name <- deparse(substitute(b))
      sentence <- paste('Vector', vector.name, 'is longer by', -diff, 'elements')
    }
    return(sentence)
  }
  x <- 1:15
  y <- 9:170
  DescribeDifference(x, y)
}
# Pass two vectors to your `DescribeDifference` function


### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer