library(naivebayes)
library(dplyr)
library(ggplot2)
library(psych)

# Data set 1
data1 = read.csv("D:/SEM 3/Data pre-processing/data1.csv")
data1 <- data1[,-c(1,28)] 
xtabs(~type_website, data=data1)

# Convert into Factor
data1$type_website<- as.factor(data1$type_website)
# Data Partition
library(e1071)
set.seed(3696)
index <- sample(1:dim(data1)[1],dim(data1)[1]*.75,replace=FALSE)
training  <- data1[index, ]
testing  <- data1[-index, ]

############################# Naive Bayes' Model ############################## 
model <- naive_bayes(type_website ~ 
                       Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                     +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                     +Total_Size_bytes+Total_Requests+Bounce_Rate
                     +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms
                     ,data = training)
model


# Prediction
p <- predict(model, training, type = 'prob')

# Confusion Matrix#
# Testing Data
p2 <- predict(model,testing)
(tab2 <- table(p2,testing$type_website))
testing$type_website <- as.factor(testing$type_website)
confusionMatrix(p2, testing$type_website)
## Misclassification
1-sum(diag(tab2)) / sum(tab2)
# Accuracy
sum(diag(tab2)) / sum(tab2)

a = predict(model,testing, type="class")
a = as.integer(a)
# confusion ########
confusion = table(actual = testing$type_website, predicted = ifelse(a>1,2,1))
retrieved <- sum(a)
# Precision: tp/(tp+fp):
Precision <- confusion[1,1]/sum(confusion[1,1:2])
Precision
# Recall: tp/(tp + fn):
Recall <- confusion[1,1]/sum(confusion[2:1,1])
Recall

# Precision: tp/(tp+fp):
Precision <- confusion[2,2]/sum(confusion[2,1:2])
Precision
# Recall: tp/(tp + fn):
Recall <- confusion[2,2]/sum(confusion[2:1,2])
Recall
# F-Score: 2 * precision * recall /(precision + recall):
2 * Precision * Recall / (Precision + Recall)

################################################################data2
# Data
data2 = read.csv("D:/SEM 3/Data pre-processing/data2.csv")
data2 <- data1[,-c(1,28)] 
xtabs(~type_website, data=data2)

# Convert into Factor
data2$type_website<- as.factor(data2$type_website)
# Data Partition
library(e1071)
set.seed(3696)
index <- sample(1:dim(data2)[1],dim(data2)[1]*.75,replace=FALSE)
training  <- data2[index, ]
testing  <- data2[-index, ]

############################# Naive Bayes' Model ############################## 
model <- naive_bayes(type_website ~ 
                       Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                     +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                     +Total_Size_bytes+Total_Requests+Bounce_Rate
                     +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms
                     ,data = training)
model
plot(model)

# Prediction
p <- predict(model, training, type = 'prob')

# Confusion Matrix#
# Testing Data
p2 <- predict(model,testing)
(tab2 <- table(p2,testing$type_website))
testing$type_website <- as.factor(testing$type_website)
confusionMatrix(p2, testing$type_website)
## Misclassification
1-sum(diag(tab2)) / sum(tab2)
# Accuracy
sum(diag(tab2)) / sum(tab2)

a = predict(model,training)
a = as.integer(a)
# confusion ########
confusion = table(actual = training$type_website, predicted = ifelse(a>1,2,1))
retrieved <- sum(a)
# Precision: tp/(tp+fp):
Precision <- confusion[1,1]/sum(confusion[1,1:2])
Precision
# Recall: tp/(tp + fn):
Recall <- confusion[1,1]/sum(confusion[2:1,1])
Recall
# F-Score: 2 * precision * recall /(precision + recall):
2 * Precision * Recall / (Precision + Recall)





