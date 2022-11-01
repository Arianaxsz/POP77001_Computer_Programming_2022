#Exercise 4: Manipulating data frames 
install.packages("dplyr")
library(dplyr)

set.seed(2022)
dfs <- lapply(1:10, function(n) data.frame(x = letters[sample(1:26,20,TRUE)], y = sample(1:26,20,TRUE)))
dfs

unlist(lapply(dfs, FUN = ))

#Error missing function?? FUN = n , or not? 

#2nd trial 

unlist <- split(dfs, seq(ncol(dfs)))         # didn't work 


#3nd trial
dfs <- data.frame(matrix(unlist(dfs), nrow=10, byrow=TRUE),stringsAsFactors=FALSE) 

data_unique <- dfs[!duplicated(dfs),]

data_unique

dfs2



#4th trial 

library(dplyr)

dfs %>% 
  unique(num && letters) %>%
  t() 


print(dfs)

t(dfs)


#5th trial 

mapply(function, dfs)
