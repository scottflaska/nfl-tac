#Load libraries
suppressPackageStartupMessages(library(tidyverse))

library(rpart)

library(rpart.plot)

#Load the prepared data 
train_fold = readRDS("~/project/2022/outputs/train_fold.rds")

validation_fold = readRDS("~/project/2022/outputs/validation_fold.rds")

#Train a decision tree model using the training fold
rpart_model = rpart(formula = target ~ . - id,
                    data = train_fold,
                    method = "class",
                    cp = 0.001)

#View decision tree
# rpart.plot(x = rpart_model)

saveRDS(rpart_model,file = "~/project/2022/outputs/model.rds")

#Use model to make predictions on validation fold
validation_preds = validation_fold

validation_preds$pred = predict(object = rpart_model,
                                newdata = validation_fold,
                                type = "class")
#View the prediction column
# validation_preds %>% head()

#Measure the accuracy of the models prediction on the validation set
validation_performance = validation_preds %>% 
  mutate(correct = ifelse(pred == target,1,0))

accuracy = validation_performance %>% 
  summarize(accuracy = mean(correct)) %>% 
  pull(accuracy) %>% 
  round(digits = 4)

#Save the accuracy value as a text file
cat(accuracy,file = "~/project/2022/accuracy.txt")