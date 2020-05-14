library(randomForest)
library(caret)
library(ggplot2)
library(rpart)
library(rpart.plot)
library(RColorBrewer)
# Load the dataset and explore
RF_data <- read.csv("D:/SEM 3/Data pre-processing/data1.csv")
RF_data <- RF_data[,-c(1,28)] 
# Split into Train and Validation sets
# Training Set : Validation Set = 70 : 30 (random)
set.seed(1337)
index <- sample(1:dim(RF_data)[1], dim(RF_data)[1] * .70, replace=FALSE)
train <- RF_data[index, ]
testing <- RF_data[-index, ]
# Create a Random Forest model with default parameters
library(randomForest)
set.seed(1337)
train$type_website = as.factor(train$type_website)
testing$type_website = as.factor(testing$type_website)
sapply(train,function(x) sum(is.na(x)))
RF <- randomForest(type_website ~ 
                     Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                   +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                   +Total_Size_bytes+Total_Requests+Bounce_Rate
                   +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes
                   ,data=train, 
                   ntree = 300,
                   mtry = 9, 
                   importance = TRUE,
                   proximity = TRUE)
print(RF)
library(caret)
p1 <- predict(RF,train)
confusionMatrix(p1, train$type_website)
p2 <- predict(RF, testing)
confusionMatrix(p2, testing$type_website)
plot(RF)
t <- tuneRF(train[,-27], train[,27],
            stepFactor = 0.6,
            plot = TRUE,
            ntreeTry = 300,
            trace = TRUE,
            improve = 0.05)
#No. of nodes for the trees
hist(treesize(RF),
     main = "No. of Nodes for the Trees",
     col = "green")
# Varible Importance
varImpPlot(RF,
           main = "Top 9 - Varible Impotance")
varUsed(RF)
# Partial Dependence Plot
partialPlot(RF, train, Total_Requests, "1")
# Extract Single Tree
getTree(RF, 1, labelVar = TRUE)
# Multi-dimensional Scaling Plot of Proximity Matrix
MDSplot(RF, train$type_website)

#Predict
a = predict(RF,testing, type="class")
a = as.integer(a)
#confusion 
confusion = table(actual = testing$type_website, predicted = ifelse(a>1,2,1))
retrieved <- sum(a)
# Precision: tp/(tp+fp):
Precision <- confusion[1,1]/sum(confusion[1,1:2])
Precision
# Recall: tp/(tp + fn):
Recall <- confusion[1,1]/sum(confusion[2:1,1])
Recall
# F-Score: 2 * precision * recall /(precision + recall):
2 * Precision * Recall / (Precision + Recall)


#########################################################################################################
# Load the dataset and explore
RF_data2 <- read.csv("D:/SEM 3/Data pre-processing/data2.csv")
RF_data2 <- RF_data2[,-c(1,28)] 
# Split into Train and Validation sets
# Training Set : Validation Set = 70 : 30 (random)
set.seed(1337)
index <- sample(1:dim(RF_data2)[1], dim(RF_data2)[1] * .70, replace=FALSE)
train <- RF_data2[index, ]
testing <- RF_data2[-index, ]
# Create a Random Forest model with default parameters
library(randomForest)
set.seed(1337)
train$type_website = as.factor(train$type_website)
testing$type_website = as.factor(testing$type_website)
sapply(train,function(x) sum(is.na(x)))

RF <- randomForest(type_website ~ 
                     Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                   +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                   +Total_Size_bytes+Total_Requests+Bounce_Rate
                   +Avg_Visit_Duration
                   ,data=train, 
                   ntree = 300,
                   mtry = 10, 
                   importance = TRUE,
                   proximity = TRUE)
print(RF)
library(caret)
p1 <- predict(RF,train)
confusionMatrix(p1, train$type_website)
p2 <- predict(RF, testing)
confusionMatrix(p2, testing$type_website)
plot(RF)

sapply(train,function(x) sum(is.na(x)))
t <- tuneRF(train[,-27], train[,27],
            stepFactor = 0.5,
            plot = TRUE,
            ntreeTry = 300,
            trace = TRUE,
            improve = 0.05)
#No. of nodes for the trees
hist(treesize(RF),
     main = "No. of Nodes for the Trees",
     col = "green")
# Varible Importance
varImpPlot(RF,
           main = "Top 9 - Varible Impotance")
varUsed(RF)
# Partial Dependence Plot
partialPlot(RF, train, Total_Requests, "1")
# Extract Single Tree
getTree(RF, 1, labelVar = TRUE)
# Multi-dimensional Scaling Plot of Proximity Matrix
MDSplot(RF, train$type_website)
#Predict
a = predict(RF,testing, type="class")
a = as.integer(a)

#confusion 
confusion = table(actual = testing$type_website, predicted = ifelse(a>1,2,1))
retrieved <- sum(a)
# Precision: tp/(tp+fp):
Precision <- confusion[1,1]/sum(confusion[1,1:2])
Precision
# Recall: tp/(tp + fn):
Recall <- confusion[1,1]/sum(confusion[2:1,1])
Recall
# F-Score: 2 * precision * recall /(precision + recall):
2 * Precision * Recall / (Precision + Recall)
