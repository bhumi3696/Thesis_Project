###########################################AMP#####################
high_d1 <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/Data1.csv")
colnames(high_d1) <- c("Date","Yslow_Grade","PageSpeed_Grade","Onload_Times","Total_Size_bytes","Total_Requests","TTFB_ms","HTML_Size_bytes","Redirect_duration_ms","Connection_duration_ms","Backend_duration_ms","DOM_interactive_ms","DOM_content_loaded_ms","DOM_content_loaded_duration_ms","Onload_ms","Onload_duration_ms","Fully_loaded_ms","First_paint_ms","RUM_Speed_Index","First_contentful_paint_ms","Total_Visits","Mobile_Device","Desktop_Device","Monthly_Visits","Avg_Visit_Duration","Pages_Per_Visit","Bounce_Rate","URL")
low_d1 <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/Data1.csv")
colnames(low_d1) <- c("Date","Yslow_Grade","PageSpeed_Grade","Onload_Times","Total_Size_bytes","Total_Requests","TTFB_ms","HTML_Size_bytes","Redirect_duration_ms","Connection_duration_ms","Backend_duration_ms","DOM_interactive_ms","DOM_content_loaded_ms","DOM_content_loaded_duration_ms","Onload_ms","Onload_duration_ms","Fully_loaded_ms","First_paint_ms","RUM_Speed_Index","First_contentful_paint_ms","Total_Visits","Mobile_Device","Desktop_Device","Monthly_Visits","Avg_Visit_Duration","Pages_Per_Visit","Bounce_Rate","URL")
medium_d1 <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/Data1.csv")
colnames(medium_d1) <- c("Date","Yslow_Grade","PageSpeed_Grade","Onload_Times","Total_Size_bytes","Total_Requests","TTFB_ms","HTML_Size_bytes","Redirect_duration_ms","Connection_duration_ms","Backend_duration_ms","DOM_interactive_ms","DOM_content_loaded_ms","DOM_content_loaded_duration_ms","Onload_ms","Onload_duration_ms","Fully_loaded_ms","First_paint_ms","RUM_Speed_Index","First_contentful_paint_ms","Total_Visits","Mobile_Device","Desktop_Device","Monthly_Visits","Avg_Visit_Duration","Pages_Per_Visit","Bounce_Rate","URL")
df <- rbind(high_d1,low_d1,medium_d1)
df$type_website <- 1
#########################################Non-AMP######################
non_amp_d1 <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/Data1.csv")
colnames(non_amp_d1) <- c("Date","Yslow_Grade","PageSpeed_Grade","Onload_Times","Total_Size_bytes","Total_Requests","TTFB_ms","HTML_Size_bytes","Redirect_duration_ms","Connection_duration_ms","Backend_duration_ms","DOM_interactive_ms","DOM_content_loaded_ms","DOM_content_loaded_duration_ms","Onload_ms","Onload_duration_ms","Fully_loaded_ms","First_paint_ms","RUM_Speed_Index","First_contentful_paint_ms","Total_Visits","Mobile_Device","Desktop_Device","Monthly_Visits","Avg_Visit_Duration","Pages_Per_Visit","Bounce_Rate","URL")
non_amp_d1$type_website <- 2
##############merging AMP-Non-AMP data######################
high_data <-  rbind(df,non_amp_d1)
str(high_data)
#######convert into numeric##############
high_data$Date <- as.Date(high_data$Date)
high_data$Total_Visits <- as.numeric(high_data$Total_Visits) 
high_data$Mobile_Device <- as.numeric(high_data$Mobile_Device) 
high_data$Total_Visits <- gsub(",","",high_data$Total_Visits)
high_data$Monthly_Visits <- gsub(",","",high_data$Monthly_Visits)
high_data$Mobile_Device <- gsub(",","",high_data$Mobile_Device)
high_data$Avg_Visit_Duration <- gsub(",","",high_data$Avg_Visit_Duration)
high_data$Monthly_Visits <- as.character(high_data$Monthly_Visits)
high_data$Monthly_Visits <- as.numeric(high_data$Monthly_Visits)
high_data$Total_Visits <- as.numeric(high_data$Total_Visits)
high_data$Mobile_Device <- as.numeric(high_data$Mobile_Device)
high_data$Avg_Visit_Duration <- as.numeric(high_data$Avg_Visit_Duration)
sapply(high_data,function(x) sum(is.na(x)))
####################################correlation###############################
library(corrplot)
corrplot(cor(high_data[,c(2:27,29)]), method = "number")
################################################################
write.csv(high_data, file = "D:/SEM 3/Datasets/data/high_data1.csv",row.names=FALSE)
##############outliers using box plot################
boxplot(high_data$PageSpeed_Grade)
class(high_data$PageSpeed_Grade)
boxplot(high_data$Yslow_Grade)
str(high_data)
boxplot(high_data$Total_Size_bytes)
boxplot(high_data$Total_Requests)
boxplot(high_data$Onload_ms)
boxplot(high_data$Onload_duration_ms)
boxplot(high_data$Fully_loaded_ms)
#############scatter plot#########################
pairs(type_website ~ PageSpeed_Grade+Yslow_Grade+Onload_ms+Onload_Times+Total_Size_bytes+Fully_loaded_ms+Total_Requests,data=high_data, 
      upper.panel=panel.smooth,pch=".", span=0.1,col.line="blue")
##############correlation#############################
library(corrplot)
df <- high_data[,c(2,3,5,6,12,13,14,15,16,17,21,25,26,27)]
corrplot(cor(df), method = "number")

