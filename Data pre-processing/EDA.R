data <- read.csv("D:/SEM 3/Data pre-processing/data1.csv")
data <- data[,-c(1,28)] 
#class imbalance
prop.table(table(data$type_website))
barplot(prop.table(table(data$type_website)),
        col = rainbow(2),
        ylim = c(0,0.8),
        main = "Class Disribution")
##############outliers using box plot################
boxplot(data$PageSpeed_Grade)
boxplot(data$Yslow_Grade)
class(data$Yslow_Grade)
boxplot(data$Total_Size_bytes)
boxplot(data$Total_Requests)
boxplot(data$Onload_ms)
boxplot(data$Onload_duration_ms)
boxplot(data$Fully_loaded_ms)
#############scatter plot#########################
pairs(type_website ~ PageSpeed_Grade+Yslow_Grade+Onload_ms+Onload_Times+Total_Size_bytes+Fully_loaded_ms+Total_Requests,data=data, 
      upper.panel=panel.smooth,pch=".", span=0.1,col.line="blue")
##############correlation#############################
library(corrplot)
df <- data[,c(2,3,5,6,12,13,14,15,16,17,21,27)]
corrplot(cor(df), method = "number")
#######################dependencie######
data %>% ggplot(aes(x=Total_Size_bytes, fill = type_website))+
  geom_density(alpha=0.8, color='black') +
  ggtitle("Total_Size_bytes vs type_website")
data %>% ggplot(aes(x=Total_Requests, fill = type_website))+
  geom_density(alpha=0.8, color='black') +
  ggtitle("Total_Requests vs type_website")
data %>% ggplot(aes(x=Bounce_Rate, fill = type_website))+
  geom_density(alpha=0.8, color='black') +
  ggtitle("Bounce_Rate vs type_website")
data %>% ggplot(aes(x=Pages_Per_Visit, fill = type_website))+
  geom_density(alpha=0.8, color='black') +
  ggtitle("Pages_Per_Visit vs type_website")
data %>% ggplot(aes(x=PageSpeed_Grade, fill = type_website))+
  geom_density(alpha=0.8, color='black') +
  ggtitle("PageSpeed_Grade vs type_website")
data %>% ggplot(aes(x=DOM_interactive_ms, fill = type_website))+
  geom_density(alpha=0.8, color='black') +
  ggtitle("DOM_interactive_ms vs type_website")
data %>% ggplot(aes(x=Yslow_Grade, fill = type_website))+
  geom_density(alpha=0.8, color='black') +
  ggtitle("Yslow_Grade vs type_website")

# remove comma
data$`Total Visits` <- gsub(",","",data$`Total Visits`)
data$`Monthly Visits` <- gsub(",","",data$`Monthly Visits`)

# convert into numeric
data$`Total Visits` <- as.numeric(as.character(data$`Total Visits`))
data$`Mobile Device` <- as.numeric(as.character(data$`Mobile Device`))
data$`Desktop Device` <- as.numeric(as.character(data$`Desktop Device`))
data$`Monthly Visits` <- as.integer(as.character(data$`Monthly Visits`))
data$`Avg. Visit Duration` <- as.integer(as.character(data$`Avg. Visit Duration`))
data$`Pages Per Visit` <- as.numeric(as.character(data$`Pages Per Visit`))
data$`Bounce Rate` <- as.numeric(as.character(data$`Bounce Rate`))
str(data)
##########################################correlaion#####################
library(corrplot)
corrplot(cor(data[, c(2:10)]), method = "number")
corrplot(cor(data[, c(3,4,11:18)]), method = "number")
corrplot(cor(data[, c(3,4,19:27)]), method = "number")
summary(data)
d1<-data[,c(2:27)]
summary(d1)
########################################feacture selection############################
library(Boruta)
sapply(d1,function(x) sum(is.na(x)))
boruta_results<-Boruta(d1$type_website~.,data=d1,doTrace=2)
print(boruta_results)
confirmed_attribute <- getSelectedAttributes(boruta_results)
print(confirmed_attribute)
b1<-attStats(boruta_results)
print(b1)
plot(boruta_results, cex.axis=.5, las=2, xlab="", main="Variable Importance")
