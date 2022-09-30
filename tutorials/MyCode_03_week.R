#Week 3 Tutorial for Computer Programming 
#29 sept 2022
#Exercise 1: Conditional Statements
#Below you will find a code snippet for finding the maximum value in vector v using exhaustive enumeration.
#Modify it in such a way that it finds the minimum (rather than maximum) value. Check that your code works correctly by applying the built-in function min() .


#Code given 
v <- c(3, 27, 9, 42, 10, 2, 5) #no NAS in this factor

max_val <- NA #Set initial max_val to NA 


#Conditional statement from tutorial code week 3 
set.seed(2022)
v <- sample(c(1:500, rep(NA, 500)), 25)

#Got this from slides week 3 
v <- sample(1:1000, 50) max_val <- v[1]
for (i in v) {
  if (i > max_val) { max_val <- i
  } }
max_val
#It doesn't work with this vector as it is very logical as the missing value, is missing

#Tom's answer for tutorial ##To change min or max values we just need to change 
# the "</>" symbols 
min_val <- v[1]
for (i in v) {
  if (!is.na(i) & i < min_val) { 
    min_val <- i
  }
}
min_val
#TRying NA and logics 
(T | F)
(T | NA)
(F | NA)

#Alternative using next
#Given a bunch of code - check the blackboard 


### Exercise 2 - Iteration 
# When dealing with random number generation it's always a good idea to make your code replicable
# by setting the seed with set.seed(function)
set.seed(2021)
# Here we create a matrix of 30 observations of 5 variables
# where each variable is a random draw from a normal distribution with mean 0
# and standard deviation drawn from a uniform distribution between 0 and 10
mat <- mapply(
  function(x) cbind(rnorm(n = 30, mean = 0, sd = x)),
  runif(n = 5, min = 0, max = 10)
)

?mapply
View(matrix(data, nrow = rows, ncol = cols))
View(mat)
dim(mat)
nrow(mat)
ncol(mat)

#Using function 'while' to create the iteration and loop -> didn't need while in the end :{
#Write a loop that goes over each variable and calculates its standard deviation

#Trial 1 

library(dplyr)
mat %>%
  summarise_at(30:5, sd, na.rm = TRUE)
#error 

#Answer 
sd_col <- vector("double", length = ncol(mat))
for(i in 1:ncol(mat)) {
  sd_col[i] <- sd(mat[,i])
}

# this [,i] is reference to the colunms and the amounts of time it 
#will be calculated trought -> coma and i after, so R knows it needs to go trough the each colunm 

#this functions are exploring the value with the biggest sd and 
#which max is the highest columns with the deviations 
max(sd_col)
mat[,which.max(sd_col)]


#Practical example 

#Using control flow in data wrangling 

#reading our data from our online github 
dat <- read.csv("https://raw.githubusercontent.com/Arianaxsz/StatsI_Fall2022/main/datasets/movies.csv") 

#Check the structure 
library(tidyverse)
str(dat)
head(dat)
View(dat)


#Gather all unique values 

#1. Use control flow to find the number of unique observations in each colunm
unique_obs <- vector("double", length = ncol(dat))
