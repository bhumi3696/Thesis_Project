library(randomForest)
library(caret)
library(ggplot2)
library(rpart)
library(rpart.plot)
library(RColorBrewer)
#################################### data 1 ############################
# Load the dataset and explore
RF_data <- read.csv("D:/SEM 3/Data pre-processing/data1.csv")
RF_data <- RF_data[,-c(1,28)] 
RF_data$type_website <- as.factor(RF_data$type_website)
#class imbalance
prop.table(table(RF_data$type_website))
barplot(prop.table(table(RF_data$type_website)),
        col = rainbow(2),
        ylim = c(0,0.8),
        main = "Class Disribution")
# Split into Train and Validation sets
# Training Set : Validation Set = 70 : 30 (random)
set.seed(123)
index <- sample(2, nrow(RF_data), replace = TRUE, prob = c(0.75,0.25))
train <- RF_data[index==1,, ]
testing <- RF_data[index==2, ]

#Data for Developing Predictive Model
table(train$type_website)
prop.table(table(train$type_website))

# Create a Random Forest model with default parameters
library(randomForest)
set.seed(1337)
RF <- randomForest(type_website ~ 
                     Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                   +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                   +Total_Size_bytes+Total_Requests+Bounce_Rate
                   +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes
                   ,data=train, 
)
# Predictive Model Evaluation with test data
library(caret)
confusionMatrix(predict(RF,testing), testing$type_website, positive = "1")

#oversampling for better sensitivity ----------------best
library(ROSE)
over <- ovun.sample(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                    +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                    +Total_Size_bytes+Total_Requests+Bounce_Rate
                    +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes, data = train, method = "over", N= 210)$data
table(over$type_website)
RFover <- randomForest(type_website ~ 
                         Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                       +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                       +Total_Size_bytes+Total_Requests+Bounce_Rate
                       +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes
                       ,data=over)
confusionMatrix(predict(RFover,testing), testing$type_website, positive = "1")

#Predict
a = predict(RFover,testing, type="class")
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

#undersampling for better sensitivity
library(ROSE)
under <- ovun.sample(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                     +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                     +Total_Size_bytes+Total_Requests+Bounce_Rate
                     +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes, data = train, method = "under", N = 84)$data
table(under$type_website)
RFunder <- randomForest(type_website ~ 
                          Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                        +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                        +Total_Size_bytes+Total_Requests+Bounce_Rate
                        +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes
                        ,data=under)
confusionMatrix(predict(RFunder,testing), testing$type_website, positive = "1")

#Predict
a = predict(RFunder,testing, type="class")
a = as.integer(a)
#confusion 
confusion = table(actual = testing$type_website, predicted = ifelse(a>1,2,1))
retrieved <- sum(a)
# Precision: tp/(tp+fp):
Precision <- confusion[1,1]/sum(confusion[1,1:2]) 
# Recall: tp/(tp + fn):
Recall <- confusion[1,1]/sum(confusion[2:1,1]) 
# F-Score: 2 * precision * recall /(precision + recall):
FScore <- 2 * Precision * Recall / (Precision + Recall) 








#Both Data
library(ROSE)
both <- ovun.sample(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                    +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                    +Total_Size_bytes+Total_Requests+Bounce_Rate
                    +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes, data = train,method="both",p = 0.5,
                    seed = 222,
                    N = 147)$data
table(both$type_website)
RFboth <- randomForest(type_website ~ 
                         Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                       +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                       +Total_Size_bytes+Total_Requests+Bounce_Rate
                       +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes
                       ,data=both)
confusionMatrix(predict(RFboth,testing), testing$type_website, positive = "1")



#Synthetic Data
library(ROSE)
rose <- ROSE(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
             +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
             +Total_Size_bytes+Total_Requests+Bounce_Rate
             +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes, data = train, N = 500, seed=111)$data
table(rose$type_website)
RFrose <- randomForest(type_website ~ 
                         Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                       +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                       +Total_Size_bytes+Total_Requests+Bounce_Rate
                       +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes
                       ,data=rose)
confusionMatrix(predict(RFrose,testing), testing$type_website, positive = "1")


print(RFover)
library(caret)
p1 <- predict(RFover,train)
confusionMatrix(p1, train$type_website, positive = "1")
p2 <- predict(RFover, testing)
confusionMatrix(p2, testing$type_website, positive = "1")

plot(RFover)
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
partialPlot(RFover, train, Total_Requests, "1")
# Extract Single Tree
getTree(RF, 1, labelVar = TRUE)



################################################## data 2 #######################################################
# Load the dataset and explore
RF_data2 <- read.csv("D:/SEM 3/Data pre-processing/data2.csv")
RF_data2 <- RF_data2[,-c(1,28)] 
RF_data2$type_website <- as.factor(RF_data2$type_website)
#class imbalance
prop.table(table(RF_data2$type_website))
barplot(prop.table(table(RF_data2$type_website)),
        col = rainbow(2),
        ylim = c(0,0.8),
        main = "Class Disribution")
# Split into Train and Validation sets
# Training Set : Validation Set = 70 : 30 (random)
set.seed(123)
index <- sample(2, nrow(RF_data2), replace = TRUE, prob = c(0.75,0.25))
train <- RF_data2[index==1,, ]
testing <- RF_data2[index==2, ]

#Data for Developing Predictive Model
table(train$type_website)
prop.table(table(train$type_website))

# Create a Random Forest model with default parameters
library(randomForest)
set.seed(1337)
RF <- randomForest(type_website ~ 
                     Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                   +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                   +Total_Size_bytes+Total_Requests+Bounce_Rate
                   +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes
                   ,data=train, 
)
# Predictive Model Evaluation with test data
library(caret)
confusionMatrix(predict(RF,testing), testing$type_website, positive = "1")

#oversampling for better sensitivity ----------------best
library(ROSE)
over <- ovun.sample(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                    +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                    +Total_Size_bytes+Total_Requests+Bounce_Rate
                    +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes, data = train, method = "over", N= 210)$data
table(over$type_website)
RFover <- randomForest(type_website ~ 
                         Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                       +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                       +Total_Size_bytes+Total_Requests+Bounce_Rate
                       +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes
                       ,data=over)
confusionMatrix(predict(RFover,testing), testing$type_website, positive = "1")
#Predict
a = predict(RFover,testing, type="class")
a = as.integer(a)
#confusion 
confusion = table(actual = testing$type_website, predicted = ifelse(a>1,2,1))
retrieved <- sum(a)
# Precision: tp/(tp+fp):
Precision <- confusion[1,1]/sum(confusion[1,1:2])
Precision
# Recall: tp/(tp + fn):
Recall <- confusion[1,1]/sum(confusion[1:2,1])
Recall
# F-Score: 2 * precision * recall /(precision + recall):
2 * Precision * Recall / (Precision + Recall)
#undersampling for better sensitivity
library(ROSE)
under <- ovun.sample(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                     +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                     +Total_Size_bytes+Total_Requests+Bounce_Rate
                     +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes, data = train, method = "under", N = 84)$data
table(under$type_website)
RFunder <- randomForest(type_website ~ 
                          Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                        +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                        +Total_Size_bytes+Total_Requests+Bounce_Rate
                        +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes
                        ,data=under)
confusionMatrix(predict(RFunder,testing), testing$type_website, positive = "1")

#Predict
a = predict(RFunder,testing, type="class")
a = as.integer(a)

#confusion 
confusion = table(actual = testing$type_website, predicted = ifelse(a>1,2,1))
retrieved <- sum(a)
# Precision: tp/(tp+fp):
Precision <- confusion[1,1]/sum(confusion[1,1:2]) 
# Recall: tp/(tp + fn):
Recall <- confusion[1,1]/sum(confusion[1:2,1]) 
# F-Score: 2 * precision * recall /(precision + recall):
FScore <- 2 * Precision * Recall / (Precision + Recall) 



#Both Data
library(ROSE)
both <- ovun.sample(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                    +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                    +Total_Size_bytes+Total_Requests+Bounce_Rate
                    +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes, data = train,method="both",p = 0.5,
                    seed = 222,
                    N = 147)$data
table(both$type_website)
RFboth <- randomForest(type_website ~ 
                         Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                       +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                       +Total_Size_bytes+Total_Requests+Bounce_Rate
                       +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes
                       ,data=both)
confusionMatrix(predict(RFboth,testing), testing$type_website, positive = "1")



#Synthetic Data
library(ROSE)
rose <- ROSE(type_website~Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
             +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
             +Total_Size_bytes+Total_Requests+Bounce_Rate
             +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes, data = train, N = 500, seed=111)$data
table(rose$type_website)
RFrose <- randomForest(type_website ~ 
                         Yslow_Grade+PageSpeed_Grade+DOM_interactive_ms
                       +DOM_content_loaded_ms+DOM_content_loaded_duration_ms
                       +Total_Size_bytes+Total_Requests+Bounce_Rate
                       +Avg_Visit_Duration+Fully_loaded_ms+Onload_ms+HTML_Size_bytes
                       ,data=rose)
confusionMatrix(predict(RFrose,testing), testing$type_website, positive = "1")


print(RFover)
library(caret)
p1 <- predict(RFunder,train)
confusionMatrix(p1, train$type_website, positive = "1")
p2 <- predict(RFunder, testing)
confusionMatrix(p2, testing$type_website, positive = "1")

plot(RFunder)

#No. of nodes for the trees
hist(treesize(RF),
     main = "No. of Nodes for the Trees",
     col = "green")
# Varible Importance
varImpPlot(RF,
           main = "Top 9 - Varible Impotance")
varUsed(RF)
# Partial Dependence Plot
partialPlot(Runder, train, Total_Requests, "1")
# Extract Single Tree
getTree(RF, 1, labelVar = TRUE)

#Predict
a = predict(RFunder,testing, type="class")
a = as.integer(a)
#confusion 
confusion = table(actual = testing$type_website, predicted = ifelse(a>1,2,1))
retrieved <- sum(a)
# Precision: tp/(tp+fp):
Precision <- confusion[1,1]/sum(confusion[1,1:2])
Precision
# Recall: tp/(tp + fn):
Recall <- confusion[1,1]/sum(confusion[1:2,1])
Recall
# F-Score: 2 * precision * recall /(precision + recall):
2 * Precision * Recall / (Precision + Recall)





