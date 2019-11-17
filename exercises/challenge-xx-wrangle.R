# Tidyverse Workshop
# Challenge: Data Wrangling 


# setup --------------------------------------------------------------------
library(tidyverse)


signal_cdat <- readxl::read_xlsx("data/signal-data.xlsx") %>% 
  janitor::clean_names() %>% 
  skimr::skim_tee() # skim compatible for piping activities


# Frog ID is a 5-digit code 
# first two digits indicate the year in which the frog was captured
###########
# AIM: Create a new variable `year` that includes the year information 
###########
signal_cdat <- signal_cdat %>% 
  mutate(frog_id = as.character(frog_id),
         year = paste0("20", substr(frog_id, 1, 2)))


