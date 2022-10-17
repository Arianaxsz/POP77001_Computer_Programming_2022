rand <- rnorm(5)
rand

df <- cbind(df, rand)
df


df <- data.frame(
  x = 1:4,
  y = c("a", "b", "c", "d"),
  z = c(TRUE, FALSE, FALSE, TRUE)
)

#subsetting data drama as a list 
df[c("x", "z")]


#like a matrix 
df[,c("x", "z")]  #note the , for the column 

df[df$y == "b",]

#adding rows to dara frames with rbind and and columns with cbind 
#adding column 

str(df)
str(rand)

df3 <- cbind(df, rand) #Error, not able to process with column, but row is okay

r <- list(6, letters[6], FALSE, rnorm(1))

df2 <- rbind(df, r)
df2

?rnorm


#data table a different form of data frame

  dt <- data.table::data.table(
    x = 1:4,
    y = c("a", "b", "c", "d"),
    z = c(TRUE, FALSE, FALSE, TRUE)
  )
  dt

  
#tibbles use tidyverse 
  library(tidyverse)
install.packages("tidyverse")

library(tidyverse)



tb <- tibble::tibble(
  x = 1:4,
  y = c("a", "b", "c", "d"),
  z = c(TRUE, FALSE, FALSE, TRUE)
)

tb

str(tb) #structure for the data frame

#Manipulating and subsetting 
tb[c("x", "z")]

#Adding/modifying column 

tb["r"] <- rnorm(4) #'r' is the name of the column and rnorm the function it will create in the list
tb

# Individual columns can also be selected with $ operator
tb$r <- tb$r + 5
tb

#Renaming columns 

names(tb)

names(tb)[4] <- "rand"
tb


#DPLYR 
library(dplyr)

dplyr::filter(tb, y == 'b', z == FALSE)

#rename 
#Data is not modified in-place, you need to re-assign the results
tb <- dplyr::rename(tb, random = rand)
tb

#mutate 
dplyr::mutate(tb, random_8plus = ifelse(random >= 8, TRUE, FALSE))


#Using Pipe %>% 
tb <- tb %>%
  dplyr::mutate(random_2 = rnorm(4)) %>%
  dplyr::filter(z == FALSE)

tb
?rnorm



#Pivoting data example from slides

tb2 <- tibble::tibble(
  country = c("Afghanistan", "Brazil"),
  `1999` = c(745, 2666),
  `2000` = c(37737, 80488)
)
tb2

#Using the Pipe
tb3 <- tb2 %>%
  # Note that pivoting functions come 'tidyr' package
  tidyr::pivot_longer(cols = c("1999", "2000"), names_to = "year", values_to = "cases"
  )                      
tb3                      

# wider 

tb4 <- tb2 %>%
  tidyr::pivot_wider(names_from = "year", values_from = "cases")
tb4       

# the above function doesn't work 