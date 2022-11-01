#Trial 2 with function get_age

get_age2 <- function() {
  yob <- readline("Please enter your year of birth: ")
  age <- 2022 - as.numeric(yob)
  repeat {
    num <- readline("Please, enter a number:")
    if (num != "[, ,") {
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
      return(age)
      break
    }
  }
}

get_age2()
)


#Get age 3 changing yob and num 

#Trial 2 with function get_age

get_age3 <- function() {
  yob <- readline("Please enter your year of birth: ")
  age <- 2022 - as.numeric(yob)
  repeat {
    if (yob != "[, ,") {
      withCallingHandlers(
        warning = function(cnd) {
          print("This is not a number. Please, try again.")
        },
        yob <- as.numeric(yob)
      )
    } else {
      print("No input provided. Please, try again.")
    }
    if (!is.na(yob)) {
      print(paste0("Your input '", as.character(num), "' is recorded"))
      return(age)
      break
    }
  }
}

get_age3()


dev.off()


get_age4 <- function() {
  yob <- readline("Please enter your year of birth: ")
  age <- 2022 - as.numeric(yob) 
    if (num != "") {
      withCallingHandlers(
        warning = function(cnd) {
          print("This is not a number. Please, try again.")
        },
        yob <- as.numeric(yob)
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

get_age4()


get_age <- function() {
  yob <- readline("Please enter your year of birth: ")
  age <- 2022 - as.numeric(yob) 
  if (yob == character()) {
    withCallingHandlers(
      warning = function(cnd) {
        print("This is not a number. Please, try again.")
      },
      yob <- as.numeric(yob, age)
    )
  } else { 
      print ("No age recorded. Please, try again")
  }
  return(age)
}

get_age()    
