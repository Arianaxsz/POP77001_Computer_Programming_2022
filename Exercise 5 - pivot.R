#Excerside 5 - pivot 


#subsetting the columns 

mini_k <- kaggle2021[, 2:6] #Try this


kaggle2021 <-  read.csv("~Downloads/kaggle_survey_2021_responses.csv")

kaggle2021 <- readr::read_csv('../data/kaggle_survey_2021_responses.csv', skip = 1)

head(kaggle2021[,1:10])

# Note that summary() as opposed to pandas' describe() gives summary for all variable types by default
summary(kaggle2021[,1:10])

prop.table(table(kaggle2021[8]))

sort(table(kaggle2021[8]), decreasing = TRUE)[1]

#We need to use the longer format 

dat %>%
  filter(title_type == "Feature Film") %>%
  select(runtime, thtr_rel_year) %>%
  group_by(thtr_rel_year) %>%
  summarise(av_runtime = mean(runtime)) %>%
  ggplot(aes(thtr_rel_year, av_runtime)) +

# Using   `tidyr` and `dplyr`

str(kaggle2021$Q7_Part_1)
summary(kaggle2021$Q7_Part_1)
head(kaggle2021$Q7_Part_1)

library(dplyr)
library(tidyverse)

#trimming the data 

trimmed_survey <- kaggle2021 %>% 
  select(Q7_Part_1, Q7_Part_2, Q7_Part_3, Q7_Part_4, Q7_Part_5, Q7_Part_6, Q7_Part_7, Q7_Part_8, Q7_Part_9, Q7_Part_10, Q7_Part_11, Q7_Part_12, Q7_OTHER) %>% 
  summarize(sum(Q7_Part_1), sum(Q7_Part_2), sum(Q7_Part_3), sum(Q7_Part_4), sum(Q7_Part_5), sum(Q7_Part_6), sum(Q7_Part_7), sum(Q7_Part_8), sum(Q7_Part_9), sum(Q7_Part_10), sum(Q7_Part_11), sum(Q7_Part_11), sum(Q7_OTHER)) %>% 
  arrange(desc(n)) 

a <- c()
nrow(trimmed_survey)
for(i in 1:ncol(trimmed_survey)){
  c <- append(c,table(trimmed_survey[,i]))
}
table(trimmed_survey[,1])

trimmed_survey <- trimmed_survey[-c(1),]
view(trimmed_survey)

as.level(table(trimmed_survey))

table(trimmed_survey[,2])
tb <- table(trimmed_survey[,1:13])
tb


#table as factor 
#didn't work 



kg2 <- kaggle2021 %>%
  select(Q7_Part_1) %>% 
  
  pivot_longer(cols = c(), names_to = "year", values_to = "cases")

  

dplyr::filter(kaggle2021, y == 'Q7_Part_1', z == FALSE)




summarise_continuous = function(t) {
   trimmed_survey %>%
    select(all_of(trimmed_survey)) %>%
    mutate_all(as.numeric) %>%
    summarise(across(all_of(trimmed_survey), list(N = ~sum(!is.na(.)), 
                                         mean = ~mean(., na.rm=T), 
                                         sd = ~sd(., na.rm=T), 
                                         median = ~median(., na.rm=T),
                                         min = ~min(., na.rm=T),
                                         max = ~max(., na.rm=T)))) %>% 
    pivot_longer(everything(), 
                 names_to = c("variable",".total"),
                 names_pattern = "(.+)_(.+)") # %>%
  # knitr::kable()
  # uncomment these bits if you want a nicely formatted table in a .Rmd document
}



count(trimmed_survey$Q7_Part_1) #this doesn't work since the class is "Character"

class(trimmed_survey)

trimmed_survey %>% 
  filter(trimmed_survey == "total") %>% 
  summarise(n = n()) %>%   ##perform a summary operation (count the n per month)
  arrange(desc(n)) 


?model.matrix

?pivot_wider
