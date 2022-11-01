#Excerside 5 - pivot 
install.packages("tidyverse")
library(tidyverse)
install.packages("dplyr")
library(dplyr)


kaggle2021 <-  read.csv("kaggle_survey_2021_responses.csv")
#adding the columns together
kaggle2021_Q7 <- kaggle2021[, 8:20]

#working on the data
frames_longer  <-  kaggle2021 %>%
  tidyr::pivot_longer(names_to = c("size", "item"),
                      values_to = "total", 
                      Q7_Part_1:Q7_OTHER,
                      names_sep = "_",
                      values_drop_na = FALSE
  )
#adding the table 

Kaggle_Percentage <- frames_longer %>%
  select(total) %>%
  group_by(as.factor(total)) %>%
  summarise(n = n()) %>%
  mutate(total = sum(n),
         perc = n/total*100) %>%
  arrange(desc(perc)) %>% 
  rename(program = 1) %>%
  select(program, perc) %>%
  head(13)

#Checking the data

names(kaggle2021)
head(kaggle2021[,1:10])
summary(kaggle2021[,1:10])

#Trimming the data into a new dataset 
kaggle2021_Q7 <- kaggle2021[c("Q7_Part_1", "Q7_Part_2", "Q7_Part_3", "Q7_Part_4", "Q7_Part_5", "Q7_Part_6",
                              "Q7_Part_7", "Q7_Part_8", "Q7_Part_9", "Q7_Part_10", "Q7_Part_11", "Q7_Part_12", "Q7_OTHER")]

head(kaggle2021_Q7)

kaggle2021_Q7 <- kaggle2021[, 8:20]

#proping the table with the percentage

sort(prop.table(table(kaggle2021_Q7)), decreasing = TRUE)[1:13] * 100

#it works okay 

#getting the list !! DON'T WORK
kaggle2021_Q7_perc <- kaggle2021 %>%
  select(kagg)
  summarise(n = n()) %>%
  mutate(total = sum(n),
         perc = n/total*100) %>%
  arrange(desc(perc)) 


# Note that summary() as opposed to pandas' describe() gives summary for all variable types by default



pivot_longer <- frames_longer %>%
  tidyr::pivot_longer(names_to = "programming_language", values_to = "total", 
                      summarise(n = n ()) %>% 
                        
pivot_longer

#Trial with website code 

class(kaggle2021_Q7)
names(kaggle2021)

#Getting percentage first

Kaggle_percentage <- frames_longer %>%
  select(frames_longer) %>%
  group_by(Q7_Part_1:Q7_OTHER) %>%
  summarise(n = n()) %>%
  mutate(total = sum(n), perc = n/total*100) %>%
  arrange(desc(perc))
  



#Pivoting the table in longer  

frames_longer <- Kaggle_Percentage1 %>% 
  tidyr::pivot_longer(names_to = c("size", "item"),
                      cols = perc, 
                      values_to = "perc",
                      names_sep = "_" ,
                      values_drop_na = FALSE ,
)

?pivot_longer
#trying to create a percentage table 
sort(prop.table(table(kaggle2021[,8:20])), decreasing = TRUE)[1:13] * 100
