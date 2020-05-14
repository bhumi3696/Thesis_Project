# Load the dataset and explore
DT_high_data <- read.csv("D:/SEM 3/Data pre-processing/data1.csv")
# Split into Train and Validation sets
# Training Set : Validation Set = 70 : 30 (random)
set.seed(1337)
index <- sample(1:dim(DT_high_data)[1], dim(DT_high_data)[1] * .70, replace=FALSE)
train <- DT_high_data[index, ]
testing <- DT_high_data[-index, ]
# Decision Tree with party
library(party)
library(randomForest)
library(caret)
library(ggplot2)
library(rpart)
library(rpart.plot)
library(RColorBrewer)

# Build the model
tree <- rpart(type_website ~ 
              Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
              +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
              +Total_Size_bytes+Total_Requests+Bounce_Rate+Pages_Per_Visit
              +Avg_Visit_Duration, data = train, method="class")
summary(tree)


library(caret)
# Make a prediction for train 
p1 <- predict(tree,train, type="class")
train$type_website <- as.factor(train$type_website)
confusionMatrix(p1, train$type_website)

#  predict target variable for test set's 
p2 <- predict(tree, testing, type="class") 
testing$type_website <- as.factor(testing$type_website)
confusionMatrix(p2, testing$type_website)


plot(tree) # Plot Decision Tree
text(tree)

a = predict(tree,train, type="class")
a = as.integer(a)
# confusion ########
confusion = table(actual = train$type_website, predicted = ifelse(a>1,2,1))
retrieved <- sum(a)
# Precision: tp/(tp+fp):
Precision <- confusion[1,1]/sum(confusion[1,1:2])
Precision
# Recall: tp/(tp + fn):
Recall <- confusion[1,1]/sum(confusion[2:1,1])
Recall
# F-Score: 2 * precision * recall /(precision + recall):
2 * Precision * Recall / (Precision + Recall)


#########################################################data2####################
# Load the dataset and explore
DT_high_data2 <- read.csv("D:/SEM 3/Data pre-processing/data2.csv")
RF_data <- RF_data[,-c(1,28)] 
# Split into Train and Validation sets
# Training Set : Validation Set = 70 : 30 (random)
set.seed(1337)
index <- sample(1:dim(DT_high_data2)[1], dim(DT_high_data2)[1] * .70, replace=FALSE)
train <- DT_high_data2[index, ]
testing <- DT_high_data2[-index, ]
# Decision Tree with party
library(party)
library(randomForest)
library(caret)
library(ggplot2)
library(rpart)
library(rpart.plot)
library(RColorBrewer)

tree <- rpart(type_website ~ 
                Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
              +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
              +Total_Size_bytes+Total_Requests+Bounce_Rate+Pages_Per_Visit
              +Avg_Visit_Duration, data = train, method="class")
library(caret)
p1 <- predict(tree,train, type="class")
train$type_website <- as.factor(train$type_website)
confusionMatrix(p1, train$type_website)
p2 <- predict(tree, testing, type="class")
testing$type_website <- as.factor(testing$type_website)
confusionMatrix(p2, testing$type_website)
plot(tree)
text(tree)
#Predict
a = predict(tree,train, type="class")
a = as.integer(a)
# confusion ########
confusion = table(actual = train$type_website, predicted = ifelse(a>1,2,1))
retrieved <- sum(a)
# Precision: tp/(tp+fp):
confusion[1,1]/sum(confusion[1,1:2])
# Recall: tp/(tp + fn):
confusion[1,1]/sum(confusion[2:1,1])
# F-Score: 2 * precision * recall /(precision + recall):
2 * Precision * Recall / (Precision + Recall)





