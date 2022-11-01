#Fibonacci sequence is the series of numbers:

fibonacci <- function(n){
  if (n < 0){ 
    stop("Negative input not allowed")
  } else if(n <= 1){ 
      return(n)
  } else {
      return(fibonacci(n - 1) + fibonacci(n - 2))
    }
}

fibonacci(10)
fibonacci(, 1, 2, 3, 4, 5)

#Code for the sequence 
fibonacci_s <- function(s) {
  
  sapply(s, FUN = fibonacci)
}  
v <- 10
fibonacci_s(10)
#[1] 55

ve <- c(1, 2, 3, 4, 5) 
fibonacci_s(ve)
# [1] 1 1 2 3 5

vec <- c(3, 9, 12)
fibonacci_s(vec)
# [1]   2  34 144



#Trying a different code with Fib 

Fibonacci_a <- function(n){
  fib <- numeric(n + 1)
  for(i in 0:n){
    if(i <= 1){
      fib[i+1] <- i 
    } else {
      fib[i+1] <- fib[(i+1)-1] + fib[(i+1)-2]
    }
  }
  return(fib[n+1]) #return only the nthterm <-> fib[n+1]
}

Fibonacci_a(10)

Fibonacci_a(5)

v2 <- c(3, 9, 12)
Fibonacci_a(v2)

Fibonacci_a(v2)

#different approach with vector 

num_vec <- function(t){
  b1 <- (1 + sqrt(5))/2
  b2 <- (1 - sqrt(5))/2
  y0 <- 0
  y1 <- 1
  A1 <- (y1 - b2*y0)/(b1 - b2)
  A2 <- (y1 - b1*y0)/(b2 - b1)
  fib_seq <- A1*b1^t + A2*b2^t #particular solution 
  return(fib_seq)
}

numb

x1- 10
x2 <- c(1, 2, 3, 4, 5)
x3 <- c(3, 9, 12)

fibonacci_vec(10)
fibonacci_vec(1:5)
fibonacci_vec(3)

#trial 
num_vec <- function() {
  fib <- 1 + sqrt(5)/2 
  return(fib)
}


