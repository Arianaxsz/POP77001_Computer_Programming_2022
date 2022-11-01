#Exercise 3: Calculating t-test
install.packages("tidyverse")
library(tidyverse)
install.packages("lsr")
library(lsr)
install.packages("broom")
library(broom)
sample <- c(1:200)
experiments <- c(1:1000)

set.seed(2021)
n <- 200
m <- 1000
mat <- matrix(rnorm(m * n, mean = 20, sd = 3), nrow = 200)
# For simplicity, let's assume that assignment to control and experimental groups is always the same
grp <- rep(0:1, times = 100)

mat

#How would we go about creating this as a function to calculate 
#Still not working, but I feel it's closer 
t.statst <- function(t.test) { 
  tstats <- lapply(data, 2 , t.test, alternative = c("two.sided", "less", "greater"),mu = 0, paired = FALSE, var.equal = FALSE,conf.level = 0.95)
  {
  }
  return(t.test)
}

t.statst(200)

#trial 2nd
t.test2 <- function(t) { 
  mat <- matrix(rnorm(m* n, mean = 20, sd = 3), nrow = 200)
  grp <- rep(0:1, times = 100) 
  tstats <- lapply(mat, t.test)
  {
  }
  return(tstats)
}

t.test2

x <- lapply(mat, mean)
x

  #trials 

#2 
t.test <- function(t) { 
  Tscore<- apply(data, 2, t.test, alternative = c("two.sided", "less", "greater"),mu = 0,
                 paired = FALSE, var.equal = FALSE,conf.level = 0.95)
  
  {
    return(t)
  }
}

t.test(mat~grp)

#trying with apply 


 # t.test

Results <- combn(colnames(mat), 2, function(x) t.test(mat[, x]), simplify = FALSE)
names(Results) <- apply(Pairs, 2, paste0, collapse = "~")

Results  # Only the first element of the `Results` is shown
$`a~b`  # t.test applied to a and b

#Trial 6 

t_table <- function() {
  
  t.test(mat, grp) %>%
    broom::tidy() %>%
    mutate(Cohens_d = cohensD(data$col, data$col)) %>% # calc. cohen's d
    mutate_at(vars(- c(p.value,method,alternative)), round, 2)
}

t_table(mat, grp)
