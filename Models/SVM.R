library(dplyr)
SVM_data = read.csv("D:/SEM 3/Data pre-processing/data1.csv", header=T)
str(SVM_data)
SVM_data <- SVM_data[,-c(1,28)] 
library(ggplot2)
SVM_data$type_website<- as.factor(SVM_data$type_website)
qplot(Total_Requests,PageSpeed_Grade, data=SVM_data,
      color = type_website)
set.seed(1337)
index <- sample(1:dim(SVM_data)[1], dim(SVM_data)[1] * .70, replace=FALSE)
train <- SVM_data[index, ]
testing <- SVM_data[-index, ]

#create mod 
set.seed(123)
library(e1071)
mymodel <- svm(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
               +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
               +Total_Size_bytes+Total_Requests+Bounce_Rate+
                 Fully_loaded_ms+Onload_ms+HTML_Size_bytes,data=testing)
summary(mymodel)
#confusion matrix
pred <- predict(mymodel, testing)
tab <- table(Predicted = pred, Actual = testing$type_website)
tab
#accuracy 
sum(diag(tab))/sum(tab)

#misclassification rate 
1-sum(diag(tab))/sum(tab)

#Predict
a = predict(mymodel, testing)
a = as.integer(a)
#confusion 
confusion = table(actual = testing$type_website, predicted = ifelse(a>1,2,1))
retrieved <- sum(a)
# Precision: tp/(tp+fp):
Precision <- confusion[1,1]/sum(confusion[1,1:2])
Precision
# Recall: tp/(tp + fn)
Recall <- confusion[1,1]/sum(confusion[2:1,1])
Recall
# F-Score: 2 * precision * recall /(precision + recall)
2 * Precision * Recall / (Precision + Recall)



# kernel = linear
mymodel_kernel <- svm(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                      +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                      +Total_Size_bytes+Total_Requests+Bounce_Rate
                      +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes,data=train,kernel = "linear")

summary(mymodel_kernel)
#confusion matrix
pred <- predict(mymodel_kernel, testing)
tab <- table(Predicted = pred, Actual = testing$type_website)
tab
#accuracy
sum(diag(tab))/sum(tab)
#misclassification rate
1-sum(diag(tab))/sum(tab)

# kernel = polynomial
mymodel_polynomial <- svm(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                          +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                          +Total_Size_bytes+Total_Requests+Bounce_Rate
                          +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes,data=train,kernel = "polynomial")

summary(mymodel_polynomial)
#confusion matrix
pred <- predict(mymodel_polynomial, testing)
tab <- table(Predicted = pred, Actual = testing$type_website)
tab
#accuracy
sum(diag(tab))/sum(tab)
#misclassification rate
1-sum(diag(tab))/sum(tab)

# kernel = sigmoid
mymodel_sigmoid <- svm(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                       +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                       +Total_Size_bytes+Total_Requests+Bounce_Rate
                       +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes,data=train,kernel = "sigmoid")

summary(mymodel_sigmoid)
#confusion matrix
pred <- predict(mymodel_sigmoid, testing)
tab <- table(Predicted = pred, Actual = testing$type_website)
tab
#accuracy
sum(diag(tab))/sum(tab)
#misclassification rate
1-sum(diag(tab))/sum(tab)




#Tuning
set.seed(1234)
tmodel <- tune(svm, type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
               +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
               +Total_Size_bytes
               +Avg_Visit_Duration,data=testing, range = list(epsilon = seq(0,1,0.1), cost = 2^(2:9)))

plot(tmodel) 
#summary(tmodel)
###best model
mymodel <- tmodel$best.model
#summary(mymodel)


#confusion matrix
pred <- predict(mymodel, testing)
tab <- table(Predicted = pred, Actual = testing$type_website)
tab
#accuracy 
sum(diag(tab))/sum(tab)
#misclassification rate 
1-sum(diag(tab))/sum(tab)

#Predict
a = predict(mymodel, testing)
a = as.integer(a)
#confusion 
confusion = table(actual = testing$type_website, predicted = a)
retrieved <- sum(a)
# Precision: tp/(tp+fp)
Precision <- confusion[1,1]/sum(confusion[1,1:2])
Precision
# Recall: tp/(tp + fn)
Recall <- confusion[1,1]/sum(confusion[2:1,1])
Recall
# F-Score: 2 * precision * recall /(precision + recall)
2 * Precision * Recall / (Precision + Recall)

testing$type_website
a <- as.factor(a)
library(caret)
confusionMatrix(a, testing$type_website, positive = NULL, dnn = c("Prediction", "Reference"))
library(ROCR)
a = as.integer(a)
pred1 <- prediction(a, testing$type_website)
perf1 <- performance(pred1,"tpr","fpr")
plot(perf1,
     colorize=T,
     main = "ROC Curve",
     ylab = "Sensitivity",
     xlab = "1-specificity")
abline(a=0,b=1)
library(pROC)
str(testing)
testing$type_website <- as.character(testing$type_website)
testing$type_website <- as.numeric(testing$type_website)
roc(a, testing$type_website)

a <- as.integer(a)
pred_log<- prediction(a,testing$type_website)
auc <- performance(pred_log,"auc")
auc<- unlist(slot(auc,"y.values"))
auc <- round(auc,4)
legend(.6,.2,auc,title = "Auc",cex = 1.3)











###########################################DATA2##############################
library(dplyr)
SVM_data2 = read.csv("D:/SEM 3/Data pre-processing/data2.csv", header=T)
str(SVM_data2)
SVM_data2 <- SVM_data2[,-c(1,28)] 
library(ggplot2)
SVM_data2$type_website<- as.factor(SVM_data2$type_website)
qplot(Yslow_Grade,PageSpeed_Grade, data=SVM_data2,
      color = type_website)
set.seed(1337)
index <- sample(1:dim(SVM_data2)[1], dim(SVM_data2)[1] * .20, replace=FALSE)
train1 <- SVM_data2[index, ]
testing1 <- SVM_data2[-index, ]
set.seed(123)
library(e1071)
mymodel1 <- svm(type_website~DOM_interactive_ms
                +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                +Total_Size_bytes+Bounce_Rate
                +Avg_Visit_Duration+Fully_loaded_ms,data=train1)

summary(mymodel)
#confusion matrix
pred <- predict(mymodel1, testing1)
tab <- table(Predicted = pred, Actual = testing1$type_website)
tab
#accuracy 
sum(diag(tab))/sum(tab)
#misclassification rate 
1-sum(diag(tab))/sum(tab)
#Predict
a = predict(mymodel1, testing1)
a = as.integer(a)
#confusion 
confusion = table(actual = testing1$type_website, predicted = ifelse(a>1,2,1))
retrieved <- sum(a)
# Precision: tp/(tp+fp): 
Precision <- confusion[1,1]/sum(confusion[1,1:2])
Precision
# Recall: tp/(tp + fn)
Recall <- confusion[1,1]/sum(confusion[2:1,1])
Recall
# F-Score: 2 * precision * recall /(precision + recall)
2 * Precision * Recall / (Precision + Recall)


# kernel = linear
mymodel_kernel <- svm(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                      +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                      +Total_Size_bytes+Total_Requests+Bounce_Rate
                      +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes,data=train,kernel = "linear")

summary(mymodel_kernel)
#confusion matrix
pred <- predict(mymodel_kernel, testing)
tab <- table(Predicted = pred, Actual = testing$type_website)
tab
#accuracy
sum(diag(tab))/sum(tab)
#misclassification rate
1-sum(diag(tab))/sum(tab)

# kernel = polynomial
mymodel_polynomial <- svm(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                          +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                          +Total_Size_bytes+Total_Requests+Bounce_Rate
                          +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes,data=train,kernel = "polynomial")

summary(mymodel_polynomial)
#confusion matrix
pred <- predict(mymodel_polynomial, testing)
tab <- table(Predicted = pred, Actual = testing$type_website)
tab
#accuracy
sum(diag(tab))/sum(tab)
#misclassification rate
1-sum(diag(tab))/sum(tab)

# kernel = sigmoid
mymodel_sigmoid <- svm(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                       +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                       +Total_Size_bytes+Total_Requests+Bounce_Rate
                       +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes,data=train,kernel = "sigmoid")

summary(mymodel_sigmoid)
#confusion matrix
pred <- predict(mymodel_sigmoid, testing)
tab <- table(Predicted = pred, Actual = testing$type_website)
tab
#accuracy
sum(diag(tab))/sum(tab)
#misclassification rate
1-sum(diag(tab))/sum(tab)



#Tuning
set.seed(1337)
index <- sample(1:dim(SVM_data2)[1], dim(SVM_data2)[1] * .86, replace=FALSE)
train <- SVM_data2[index, ]
testing <- SVM_data2[-index, ]
tmodel <- tune(svm, type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
               +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
               +Total_Size_bytes+Total_Requests+Bounce_Rate
               +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes, data=train, range = list(epsilon = seq(0,1,0.1), cost = 2^(2:7)))

plot(tmodel) 
summary(tmodel)
###best model
mymodel <- tmodel$best.model
summary(mymodel)
#confusion matrix
pred <- predict(mymodel, testing)
tab <- table(Predicted = pred, Actual = testing$type_website)
tab
#accuracy
sum(diag(tab))/sum(tab)
#misclassification rate
1-sum(diag(tab))/sum(tab)

#Predict
a = predict(mymodel, testing)
a = as.integer(a)
#confusion 
confusion = table(actual = testing$type_website, predicted = a)
retrieved <- sum(a)
# Precision: tp/(tp+fp)
Precision <- confusion[1,1]/sum(confusion[1,1:2])
Precision
# Recall: tp/(tp + fn)
Recall <- confusion[1,1]/sum(confusion[2:1,1])
Recall
# F-Score: 2 * precision * recall /(precision + recall)
2 * Precision * Recall / (Precision + Recall)

library("e1071")

# get the confusion table
testing$type_website
a <- as.factor(a)
library(caret)
confusionMatrix(a, testing$type_website, positive = NULL, dnn = c("Prediction", "Reference"))


