# Computer Progrem Assignment 

#Exercise 1 
# Get user's age

# Takes user's year of birth as an input
# Returns age in years as an integer
get_age <- function() {
  yob <- readline("Please enter your year of birth: ")
  age <- 2022 - as.numeric(yob)
  repeat {
    num <- readline("Please, enter a number:")
    if (num != num) {
      withCallingHandlers(
        warning = function(cnd) {
          print("This is not a number. Please, try again.")
        },
        num <- as.numeric(num)
      )
    } else {
      print("No input provided. Please, try again.")
    }
    if (!is.na(num)) {
      print(paste0("Your input '", as.character(num), "' is recorded"))
      break
    }
  }
  return(age)
}
is.integer(get_age())
get_age()


?is.na
is.character()
message("please input 4 digits date of birth")

OR 

# Calling handlers? or test? page 88 and 92 week 5 material 

#Example

# Infinite loop, analogous to while (TRUE)
repeat {
  num <- readline("Please, enter a number:")
  if (num != "") {
    withCallingHandlers(
      warning = function(cnd) {
        print("This is not a number. Please, try again.")
      },
      num <- as.numeric(num)
    )
  } else {
    print("No input provided. Please, try again.")
  }
  if (!is.na(num)) {
    print(paste0("Your input '", as.character(num), "' is recorded"))
    break
  }
}

stop(get_age)

stop()
# different function adding yob as numeric 

get_age4 <- function() {
  yob <- readline("Please enter your year of birth: ")
  age <- 2022 - as.numeric(yob) 
  if (yob == character(letters)) {
    withCallingHandlers(
      warning = function(cnd) {
        print("This is not a number. Please, try again.")
      },
      num <- 
  } else { 
    print ("No age recorded. Please, try again")
  }
  return(age)
}

get_age()    


#Trial 5th with the help of a youtube video haha

get_age <- function() {
  yob <- readline("Please enter your year of birth: ")
  age <- 2022 - as.numeric(yob)
  return(age)
}
  if (get_age == is.integer(get_age())) { 
  withCallingHandlers(
    warning = function(cnd){
      readline("This is not a number. Please, try again.")
    },
    print("please, enter a numerical value"), 
return(get_age())
  )
}

get_age()


get_age <- function() {
  yob <- readline("Please enter your year of birth: ")
  age <- 2022 - as.numeric(yob)
  return(age)
}




#Different trials
get_age <- function() {
  yob <- readline("Please enter your year of birth: ")
  age <- 2022 - as.numeric(yob)
  return(age)
  if (age != as.numeric(yob))
    print("This is not a number. Please, try again")
}

get_age()

#trial 2

get_age1 <- function() {
  yob <- readline("Please enter your year of birth: ")
  age <- 2022 - as.numeric(yob)
  if (!is.numeric(yob)) {
    abort(paste0("Vector must be numeric")
    )
  }
  if (get_age1 == is.integer())
    abort(paste0(
      "It must be numeric"
    ))
}

get_age1()

#trial 3
get_age2 <- function() {
  yob <- readline("Please enter your year of birth: ")
  age <- 2022 - as.numeric(yob)
  if (get_age != "") {
    withCallingHandlers(
      warning = function(cnd) {
        print("This is not a number. Please, try again.")
      },
      age <- as.numeric(num)
    )
  } else {
    print("No input provided. Please, try again.")
  }
  if (age != as.numeric(yob)) {
    print(paste0("Please, input 4 difits birth year"))
    return(age)
    break
  }
}


get_age2()

#Last trial hopefuly

get_age <- function() {
  yob <- readline("Please enter your year of birth: ")
  age <- 2022 - as.numeric(yob) 
  yob <- as.numeric(yob, age) && 
    !is.na(condition) && 
  if(is.character(yob) == TRUE){
    withCallingHandlers(
      warning = function(cnd) {
        print("This is not a number. Please, try again.")
      },
    )
  } else { 
    print ("No age recorded. Please, try again")
  }
  return(age)
}

get_age()

