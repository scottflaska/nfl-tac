#Load libraries
suppressPackageStartupMessages(library(tidyverse))

library(readr)

#Load training data 
#Source: Kaggle (https://www.kaggle.com/competitions/tabular-playground-series-may-2022/data)
#Prompt: For this challenge, you are given (simulated) manufacturing control data and are tasked to predict whether the machine is in state 0 or state 1.
train = read_csv("~/project/2022/data/train.csv",show_col_types = F)

#View the structure of the training data
# train %>% str(give.attr = F)

#Select subset of features (columns) from the table
train_feature_subset = train %>% 
  select(id, 
         f_00,
         f_01,
         f_02,
         f_03,
         f_04,
         f_05,
         f_06,
         f_07,
         f_08,
         target) 

#Split data into a training fold and a validation fold
train_fold = train_feature_subset %>% 
  filter(id < 100000)

validation_fold = train_feature_subset %>% 
  filter(!(id %in% train_fold$id))

#Save the prepared data
saveRDS(object = train_fold, file = "~/project/2022/outputs/train_fold.rds")

saveRDS(object = validation_fold, file = "~/project/2022/outputs/validation_fold.rds")