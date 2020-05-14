library(pdftools)
library(stringr)
library(dplyr)
library(corrplot)
############################################ 1 URL ###############################################
airnow_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/airnow.pdf"
airnow_text <- pdf_text(airnow_pdf)
airnow <- str_extract_all(airnow_text,"\\(?[0-9,.]+\\)?")[[2]]
airnow_data <- data.frame(c(airnow[10],airnow[14],airnow[16],airnow[5],airnow[12],airnow[13],airnow[18],airnow[19]))
airnow <- as.data.frame(t(airnow_data))
colnames(airnow) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
airnow$`Avg. Visit Duration` <- paste(airnow$`Avg. Visit Duration`,airnow$ab)
airnow$`Avg. Visit Duration` <- gsub(' ', '.' ,airnow$`Avg. Visit Duration`)
airnow <- airnow[-c(6)]
airnow$url <- "airnow.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/airnow.csv")
df1_d1 <- df[c(1),c(1:20)]
df1_d1 <- cbind(df1_d1,airnow)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/airnow.csv")
df1_d2 <- df[c(1),c(1:20)]
df1_d2 <- cbind(df1_d2,airnow)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/airnow.csv")
df1_d3 <- df[c(1),c(1:20)]
df1_d3 <- cbind(df1_d3,airnow)

############################################ 2 URL ###############################################
aviationweather_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/aviationweather.pdf"
aviationweather_text <- pdf_text(aviationweather_pdf)
aviationweather <- str_extract_all(aviationweather_text,"\\(?[0-9,.]+\\)?")[[2]]
aviationweather_data <- data.frame(c(aviationweather[11],aviationweather[15],aviationweather[17],aviationweather[6],aviationweather[13],aviationweather[14],aviationweather[19],aviationweather[20]))
aviationweather <- as.data.frame(t(aviationweather_data))
colnames(aviationweather) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
aviationweather$`Avg. Visit Duration` <- paste(aviationweather$`Avg. Visit Duration`,aviationweather$ab)
aviationweather$`Avg. Visit Duration` <- gsub(' ', '.' ,aviationweather$`Avg. Visit Duration`)
aviationweather <- aviationweather[-c(6)]
aviationweather$url <- "aviationweather.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/aviationweather.csv")
df2_d1 <- df[c(1),c(1:20)]
df2_d1 <- cbind(df2_d1,aviationweather)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/aviationweather.csv")
df2_d2 <- df[c(1),c(1:20)]
df2_d2 <- cbind(df2_d2,aviationweather)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/aviationweather.csv")
df2_d3 <- df[c(1),c(1:20)]
df2_d3 <- cbind(df2_d3,aviationweather)

############################################ 3 URL ###############################################
bea_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/bea.pdf"
bea_text <- pdf_text(bea_pdf)
bea <- str_extract_all(bea_text,"\\(?[0-9,.]+\\)?")[[2]]
bea_data <- data.frame(c(bea[10],bea[14],bea[16],bea[5],bea[12],bea[13],bea[18],bea[19]))
bea <- as.data.frame(t(bea_data))
colnames(bea) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
bea$`Avg. Visit Duration` <- paste(bea$`Avg. Visit Duration`,bea$ab)
bea$`Avg. Visit Duration` <- gsub(' ', '.' ,bea$`Avg. Visit Duration`)
bea <- bea[-c(6)]
bea$url <- "bea.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/bea.csv")
df3_d1 <- df[c(1),c(1:20)]
df3_d1 <- cbind(df3_d1,bea)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/bea.csv")
df3_d2 <- df[c(1),c(1:20)]
df3_d2 <- cbind(df3_d2,bea)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/bea.csv")
df3_d3 <- df[c(1),c(1:20)]
df3_d3 <- cbind(df3_d3,bea)

############################################ 4 URL ###############################################
cancer_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/cancer.pdf"
cancer_text <- pdf_text(cancer_pdf)
cancer <- str_extract_all(cancer_text,"\\(?[0-9,.]+\\)?")[[2]]
cancer_data <- data.frame(c(cancer[15],cancer[19],cancer[21],cancer[10],cancer[17],cancer[18],cancer[23],cancer[24]))
cancer <- as.data.frame(t(cancer_data))
colnames(cancer) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cancer$`Avg. Visit Duration` <- paste(cancer$`Avg. Visit Duration`,cancer$ab)
cancer$`Avg. Visit Duration` <- gsub(' ', '.' ,cancer$`Avg. Visit Duration`)
cancer <- cancer[-c(6)]
cancer$url <- "cancer.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/cancer.csv")
df4_d1 <- df[c(1),c(1:20)]
df4_d1 <- cbind(df4_d1,cancer)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/cancer.csv")
df4_d2 <- df[c(1),c(1:20)]
df4_d2 <- cbind(df4_d2,cancer)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/cancer.csv")
df4_d3 <- df[c(1),c(1:20)]
df4_d3 <- cbind(df4_d3,cancer)

############################################ 5 URL ###############################################
cdc_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/cdc.pdf"
cdc_text <- pdf_text(cdc_pdf)
cdc <- str_extract_all(cdc_text,"\\(?[0-9,.]+\\)?")[[2]]
cdc_data <- data.frame(c(cdc[14],cdc[18],cdc[20],cdc[9],cdc[16],cdc[17],cdc[22],cdc[23]))
cdc <- as.data.frame(t(cdc_data))
colnames(cdc) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cdc$`Avg. Visit Duration` <- paste(cdc$`Avg. Visit Duration`,cdc$ab)
cdc$`Avg. Visit Duration` <- gsub(' ', '.' ,cdc$`Avg. Visit Duration`)
cdc <- cdc[-c(6)]
cdc$url <- "cdc.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/cdc.csv")
df5_d1 <- df[c(1),c(1:20)]
df5_d1 <- cbind(df5_d1,cdc)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/cdc.csv")
df5_d2 <- df[c(2),c(1:20)]
df5_d2 <- cbind(df5_d2,cdc)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/cdc.csv")
df5_d3 <- df[c(1),c(1:20)]
df5_d3 <- cbind(df5_d3,cdc)

############################################ 6 URL ###############################################
choosemyplate_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/choosemyplate.pdf"
choosemyplate_text <- pdf_text(choosemyplate_pdf)
choosemyplate <- str_extract_all(choosemyplate_text,"\\(?[0-9,.]+\\)?")[[2]]
choosemyplate_data <- data.frame(c(choosemyplate[17],choosemyplate[21],choosemyplate[23],choosemyplate[12],choosemyplate[19],choosemyplate[20],choosemyplate[25],choosemyplate[26]))
choosemyplate <- as.data.frame(t(choosemyplate_data))
colnames(choosemyplate) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
choosemyplate$`Avg. Visit Duration` <- paste(choosemyplate$`Avg. Visit Duration`,choosemyplate$ab)
choosemyplate$`Avg. Visit Duration` <- gsub(' ', '.' ,choosemyplate$`Avg. Visit Duration`)
choosemyplate <- choosemyplate[-c(6)]
choosemyplate$url <- "choosemyplate.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/choosemyplate.csv")
df6_d1 <- df[c(1),c(1:20)]
df6_d1 <- cbind(df6_d1,choosemyplate)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/choosemyplate.csv")
df6_d2 <- df[c(1),c(1:20)]
df6_d2 <- cbind(df6_d2,choosemyplate)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/choosemyplate.csv")
df6_d3 <- df[c(1),c(1:20)]
df6_d3 <- cbind(df6_d3,choosemyplate)

############################################ 7 URL ###############################################
consumerfinance_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/consumerfinance.pdf"
consumerfinance_text <- pdf_text(consumerfinance_pdf)
consumerfinance <- str_extract_all(consumerfinance_text,"\\(?[0-9,.]+\\)?")[[2]]
consumerfinance_data <- data.frame(c(consumerfinance[13],consumerfinance[17],consumerfinance[19],consumerfinance[8],consumerfinance[15],consumerfinance[16],consumerfinance[21],consumerfinance[22]))
consumerfinance <- as.data.frame(t(consumerfinance_data))
colnames(consumerfinance) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
consumerfinance$`Avg. Visit Duration` <- paste(consumerfinance$`Avg. Visit Duration`,consumerfinance$ab)
consumerfinance$`Avg. Visit Duration` <- gsub(' ', '.' ,consumerfinance$`Avg. Visit Duration`)
consumerfinance <- consumerfinance[-c(6)]
consumerfinance$url <- "consumerfinance.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/consumerfinance.csv")
df7_d1 <- df[c(1),c(1:20)]
df7_d1 <- cbind(df7_d1,consumerfinance)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/consumerfinance.csv")
df7_d2 <- df[c(1),c(1:20)]
df7_d2 <- cbind(df7_d2,consumerfinance)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/consumerfinance.csv")
df7_d3 <- df[c(1),c(1:20)]
df7_d3 <- cbind(df7_d3,consumerfinance)

############################################ 8 URL ###############################################
dea_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/dea.pdf"
dea_text <- pdf_text(dea_pdf)
dea <- str_extract_all(dea_text,"\\(?[0-9,.]+\\)?")[[2]]
dea_data <- data.frame(c(dea[10],dea[14],dea[16],dea[5],dea[12],dea[13],dea[18],dea[19]))
dea <- as.data.frame(t(dea_data))
colnames(dea) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
dea$`Avg. Visit Duration` <- paste(dea$`Avg. Visit Duration`,dea$ab)
dea$`Avg. Visit Duration` <- gsub(' ', '.' ,dea$`Avg. Visit Duration`)
dea <- dea[-c(6)]
dea$url <- "dea.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/dea.csv")
df8_d1 <- df[c(1),c(1:20)]
df8_d1 <- cbind(df8_d1,dea)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/dea.csv")
df8_d2 <- df[c(2),c(1:20)]
df8_d2 <- cbind(df8_d2,dea)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/dea.csv")
df8_d3 <- df[c(1),c(1:20)]
df8_d3 <- cbind(df8_d3,dea)

############################################ 9 URL ###############################################
disasterassistance_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/disasterassistance.pdf"
disasterassistance_text <- pdf_text(disasterassistance_pdf)
disasterassistance <- str_extract_all(disasterassistance_text,"\\(?[0-9,.]+\\)?")[[2]]
disasterassistance_data <- data.frame(c(disasterassistance[10],disasterassistance[14],disasterassistance[16],disasterassistance[5],disasterassistance[12],disasterassistance[13],disasterassistance[18],disasterassistance[19]))
disasterassistance <- as.data.frame(t(disasterassistance_data))
colnames(disasterassistance) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
disasterassistance$`Avg. Visit Duration` <- paste(disasterassistance$`Avg. Visit Duration`,disasterassistance$ab)
disasterassistance$`Avg. Visit Duration` <- gsub(' ', '.' ,disasterassistance$`Avg. Visit Duration`)
disasterassistance <- disasterassistance[-c(6)]
disasterassistance$url <- "disasterassistance.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/disasterassistance.csv")
df9_d1 <- df[c(1),c(1:20)]
df9_d1 <- cbind(df9_d1,disasterassistance)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/disasterassistance.csv")
df9_d2 <- df[c(1),c(1:20)]
df9_d2 <- cbind(df9_d2,disasterassistance)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/disasterassistance.csv")
df9_d3 <- df[c(1),c(1:20)]
df9_d3 <- cbind(df9_d3,disasterassistance)

############################################ 10 URL ###############################################
e_verify_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/e_verify.pdf"
e_verify_text <- pdf_text(e_verify_pdf)
e_verify <- str_extract_all(e_verify_text,"\\(?[0-9,.]+\\)?")[[2]]
e_verify_data <- data.frame(c(e_verify[12],e_verify[16],e_verify[18],e_verify[7],e_verify[14],e_verify[15],e_verify[20],e_verify[21]))
e_verify <- as.data.frame(t(e_verify_data))
colnames(e_verify) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
e_verify$`Avg. Visit Duration` <- paste(e_verify$`Avg. Visit Duration`,e_verify$ab)
e_verify$`Avg. Visit Duration` <- gsub(' ', '.' ,e_verify$`Avg. Visit Duration`)
e_verify <- e_verify[-c(6)]
e_verify$url <- "e-verify.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/e_verify.csv")
df10_d1 <- df[c(1),c(1:20)]
df10_d1 <- cbind(df10_d1,e_verify)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/e_verify.csv")
df10_d2 <- df[c(1),c(1:20)]
df10_d2 <- cbind(df10_d2,e_verify)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/e_verify.csv")
df10_d3 <- df[c(1),c(1:20)]
df10_d3 <- cbind(df10_d3,e_verify)

############################################ 11 URL ###############################################
epa_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/epa.pdf"
epa_text <- pdf_text(epa_pdf)
epa <- str_extract_all(epa_text,"\\(?[0-9,.]+\\)?")[[2]]
epa_data <- data.frame(c(epa[10],epa[14],epa[16],epa[5],epa[12],epa[13],epa[18],epa[19]))
epa <- as.data.frame(t(epa_data))
colnames(epa) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
epa$`Avg. Visit Duration` <- paste(epa$`Avg. Visit Duration`,epa$ab)
epa$`Avg. Visit Duration` <- gsub(' ', '.' ,epa$`Avg. Visit Duration`)
epa <- epa[-c(6)]
epa$url <- "epa.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/epa.csv")
df11_d1 <- df[c(1),c(1:20)]
df11_d1 <- cbind(df11_d1,epa)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/epa.csv")
df11_d2 <- df[c(1),c(1:20)]
df11_d2 <- cbind(df11_d2,epa)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/epa.csv")
df11_d3 <- df[c(1),c(1:20)]
df11_d3 <- cbind(df11_d3,epa)

############################################ 12 URL ###############################################
federalregister_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/federalregister.pdf"
federalregister_text <- pdf_text(federalregister_pdf)
federalregister <- str_extract_all(federalregister_text,"\\(?[0-9,.]+\\)?")[[2]]
federalregister_data <- data.frame(c(federalregister[17],federalregister[21],federalregister[23],federalregister[12],federalregister[19],federalregister[20],federalregister[25],federalregister[26]))
federalregister <- as.data.frame(t(federalregister_data))
colnames(federalregister) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
federalregister$`Avg. Visit Duration` <- paste(federalregister$`Avg. Visit Duration`,federalregister$ab)
federalregister$`Avg. Visit Duration` <- gsub(' ', '.' ,federalregister$`Avg. Visit Duration`)
federalregister <- federalregister[-c(6)]
federalregister$url <- "federalregister.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/federalregister.csv")
df12_d1 <- df[c(1),c(1:20)]
df12_d1 <- cbind(df12_d1,federalregister)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/federalregister.csv")
df12_d2 <- df[c(1),c(1:20)]
df12_d2 <- cbind(df12_d2,federalregister)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/federalregister.csv")
df12_d3 <- df[c(1),c(1:20)]
df12_d3 <- cbind(df12_d3,federalregister)

############################################ 13 URL ###############################################
fema_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/fema.pdf"
fema_text <- pdf_text(fema_pdf)
fema <- str_extract_all(fema_text,"\\(?[0-9,.]+\\)?")[[2]]
fema_data <- data.frame(c(fema[10],fema[14],fema[16],fema[5],fema[12],fema[13],fema[18],fema[19]))
fema <- as.data.frame(t(fema_data))
colnames(fema) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
fema$`Avg. Visit Duration` <- paste(fema$`Avg. Visit Duration`,fema$ab)
fema$`Avg. Visit Duration` <- gsub(' ', '.' ,fema$`Avg. Visit Duration`)
fema <- fema[-c(6)]
fema$url <- "fema.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/fema.csv")
df13_d1 <- df[c(1),c(1:20)]
df13_d1 <- cbind(df13_d1,fema)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/fema.csv")
df13_d2 <- df[c(1),c(1:20)]
df13_d2 <- cbind(df13_d2,fema)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/fema.csv")
df13_d3 <- df[c(1),c(1:20)]
df13_d3 <- cbind(df13_d3,fema)



############################################ 14 URL ###############################################
floodsmart_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/floodsmart.pdf"
floodsmart_text <- pdf_text(floodsmart_pdf)
floodsmart <- str_extract_all(floodsmart_text,"\\(?[0-9,.]+\\)?")[[2]]
floodsmart_data <- data.frame(c(floodsmart[10],floodsmart[14],floodsmart[16],floodsmart[5],floodsmart[12],floodsmart[13],floodsmart[18],floodsmart[19]))
floodsmart <- as.data.frame(t(floodsmart_data))
colnames(floodsmart) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
floodsmart$`Avg. Visit Duration` <- paste(floodsmart$`Avg. Visit Duration`,floodsmart$ab)
floodsmart$`Avg. Visit Duration` <- gsub(' ', '.' ,floodsmart$`Avg. Visit Duration`)
floodsmart <- floodsmart[-c(6)]
floodsmart$url <- "floodsmart.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/floodsmart.csv")
df14_d1 <- df[c(1),c(1:20)]
df14_d1 <- cbind(df14_d1,floodsmart)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/floodsmart.csv")
df14_d2 <- df[c(1),c(1:20)]
df14_d2 <- cbind(df14_d2,floodsmart)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/floodsmart.csv")
df14_d3 <- df[c(1),c(1:20)]
df14_d3 <- cbind(df14_d3,floodsmart)

############################################ 15 URL ###############################################
foodsafety_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/foodsafety.pdf"
foodsafety_text <- pdf_text(foodsafety_pdf)
foodsafety <- str_extract_all(foodsafety_text,"\\(?[0-9,.]+\\)?")[[2]]
foodsafety_data <- data.frame(c(foodsafety[10],foodsafety[14],foodsafety[16],foodsafety[5],foodsafety[12],foodsafety[13],foodsafety[18],foodsafety[19]))
foodsafety <- as.data.frame(t(foodsafety_data))
colnames(foodsafety) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
foodsafety$`Avg. Visit Duration` <- paste(foodsafety$`Avg. Visit Duration`,foodsafety$ab)
foodsafety$`Avg. Visit Duration` <- gsub(' ', '.' ,foodsafety$`Avg. Visit Duration`)
foodsafety <- foodsafety[-c(6)]
foodsafety$url <- "foodsafety.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/foodsafety.csv")
df15_d1 <- df[c(1),c(1:20)]
df15_d1 <- cbind(df15_d1,foodsafety)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/foodsafety.csv")
df15_d2 <- df[c(1),c(1:20)]
df15_d2 <- cbind(df15_d2,foodsafety)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/foodsafety.csv")
df15_d3 <- df[c(1),c(1:20)]
df15_d3 <- cbind(df15_d3,foodsafety)

############################################ 16 URL ###############################################
fws_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/fws.pdf"
fws_text <- pdf_text(fws_pdf)
fws <- str_extract_all(fws_text,"\\(?[0-9,.]+\\)?")[[2]]
fws_data <- data.frame(c(fws[14],fws[18],fws[20],fws[9],fws[16],fws[17],fws[22],fws[23]))
fws <- as.data.frame(t(fws_data))
colnames(fws) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
fws$`Avg. Visit Duration` <- paste(fws$`Avg. Visit Duration`,fws$ab)
fws$`Avg. Visit Duration` <- gsub(' ', '.' ,fws$`Avg. Visit Duration`)
fws <- fws[-c(6)]
fws$url <- "fws.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/fws.csv")
df16_d1 <- df[c(1),c(1:20)]
df16_d1 <- cbind(df16_d1,fws)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/fws.csv")
df16_d2 <- df[c(1),c(1:20)]
df16_d2 <- cbind(df16_d2,fws)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/fws.csv")
df16_d3 <- df[c(1),c(1:20)]
df16_d3 <- cbind(df16_d3,fws)

############################################ 17 URL ###############################################
health_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/health.pdf"
health_text <- pdf_text(health_pdf)
health <- str_extract_all(health_text,"\\(?[0-9,.]+\\)?")[[2]]
health_data <- data.frame(c(health[15],health[19],health[21],health[10],health[17],health[18],health[23],health[24]))
health <- as.data.frame(t(health_data))
colnames(health) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
health$`Avg. Visit Duration` <- paste(health$`Avg. Visit Duration`,health$ab)
health$`Avg. Visit Duration` <- gsub(' ', '.' ,health$`Avg. Visit Duration`)
health <- health[-c(6)]
health$url <- "health.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/health.csv")
df17_d1 <- df[c(1),c(1:20)]
df17_d1 <- cbind(df17_d1,health)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/health.csv")
df17_d2 <- df[c(2),c(1:20)]
df17_d2 <- cbind(df17_d2,health)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/health.csv")
df17_d3 <- df[c(1),c(1:20)]
df17_d3 <- cbind(df17_d3,health)

############################################ 18 URL ###############################################
healthcare_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/healthcare.pdf"
healthcare_text <- pdf_text(healthcare_pdf)
healthcare <- str_extract_all(healthcare_text,"\\(?[0-9,.]+\\)?")[[2]]
healthcare_data <- data.frame(c(healthcare[16],healthcare[20],healthcare[22],healthcare[11],healthcare[18],healthcare[19],healthcare[24],healthcare[25]))
healthcare <- as.data.frame(t(healthcare_data))
colnames(healthcare) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
healthcare$`Avg. Visit Duration` <- paste(healthcare$`Avg. Visit Duration`,healthcare$ab)
healthcare$`Avg. Visit Duration` <- gsub(' ', '.' ,healthcare$`Avg. Visit Duration`)
healthcare <- healthcare[-c(6)]
healthcare$url <- "healthcare.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/healthcare.csv")
df18_d1 <- df[c(1),c(1:20)]
df18_d1 <- cbind(df18_d1,healthcare)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/healthcare.csv")
df18_d2 <- df[c(1),c(1:20)]
df18_d2 <- cbind(df18_d2,healthcare)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/healthcare.csv")
df18_d3 <- df[c(1),c(1:20)]
df18_d3 <- cbind(df18_d3,healthcare)

############################################ 19 URL ###############################################
healthfinder_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/healthfinder.pdf"
healthfinder_text <- pdf_text(healthfinder_pdf)
healthfinder <- str_extract_all(healthfinder_text,"\\(?[0-9,.]+\\)?")[[2]]
healthfinder_data <- data.frame(c(healthfinder[10],healthfinder[14],healthfinder[16],healthfinder[5],healthfinder[12],healthfinder[13],healthfinder[18],healthfinder[19]))
healthfinder <- as.data.frame(t(healthfinder_data))
colnames(healthfinder) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
healthfinder$`Avg. Visit Duration` <- paste(healthfinder$`Avg. Visit Duration`,healthfinder$ab)
healthfinder$`Avg. Visit Duration` <- gsub(' ', '.' ,healthfinder$`Avg. Visit Duration`)
healthfinder <- healthfinder[-c(6)]
healthfinder$url <- "healthfinder.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/healthfinder.csv")
df19_d1 <- df[c(1),c(1:20)]
df19_d1 <- cbind(df19_d1,healthfinder)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/healthfinder.csv")
df19_d2 <- df[c(1),c(1:20)]
df19_d2 <- cbind(df19_d2,healthfinder)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/healthfinder.csv")
df19_d3 <- df[c(1),c(1:20)]
df19_d3 <- cbind(df19_d3,healthfinder)

############################################ 20 URL ###############################################
healthypeople_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/healthypeople.pdf"
healthypeople_text <- pdf_text(healthypeople_pdf)
healthypeople <- str_extract_all(healthypeople_text,"\\(?[0-9,.]+\\)?")[[2]]
healthypeople_data <- data.frame(c(healthypeople[10],healthypeople[14],healthypeople[16],healthypeople[5],healthypeople[12],healthypeople[13],healthypeople[18],healthypeople[19]))
healthypeople <- as.data.frame(t(healthypeople_data))
colnames(healthypeople) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
healthypeople$`Avg. Visit Duration` <- paste(healthypeople$`Avg. Visit Duration`,healthypeople$ab)
healthypeople$`Avg. Visit Duration` <- gsub(' ', '.' ,healthypeople$`Avg. Visit Duration`)
healthypeople <- healthypeople[-c(6)]
healthypeople$url <- "healthypeople.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/healthypeople.csv")
df20_d1 <- df[c(1),c(1:20)]
df20_d1 <- cbind(df20_d1,healthypeople)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/healthypeople.csv")
df20_d2 <- df[c(1),c(1:20)]
df20_d2 <- cbind(df20_d2,healthypeople)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/healthypeople.csv")
df20_d3 <- df[c(1),c(1:20)]
df20_d3 <- cbind(df20_d3,healthypeople)

############################################ 21 URL ###############################################
ice_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/ice.pdf"
ice_text <- pdf_text(ice_pdf)
ice <- str_extract_all(ice_text,"\\(?[0-9,.]+\\)?")[[2]]
ice_data <- data.frame(c(ice[10],ice[14],ice[16],ice[5],ice[12],ice[13],ice[18],ice[19]))
ice <- as.data.frame(t(ice_data))
colnames(ice) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
ice$`Avg. Visit Duration` <- paste(ice$`Avg. Visit Duration`,ice$ab)
ice$`Avg. Visit Duration` <- gsub(' ', '.' ,ice$`Avg. Visit Duration`)
ice <- ice[-c(6)]
ice$url <- "ice.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/ice.csv")
df21_d1 <- df[c(1),c(1:20)]
df21_d1 <- cbind(df21_d1,ice)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/ice.csv")
df21_d2 <- df[c(1),c(1:20)]
df21_d2 <- cbind(df21_d2,ice)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/ice.csv")
df21_d3 <- df[c(1),c(1:20)]
df21_d3 <- cbind(df21_d3,ice)

############################################ 22 URL ###############################################
identitytheft_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/identitytheft.pdf"
identitytheft_text <- pdf_text(identitytheft_pdf)
identitytheft <- str_extract_all(identitytheft_text,"\\(?[0-9,.]+\\)?")[[2]]
identitytheft_data <- data.frame(c(identitytheft[14],identitytheft[18],identitytheft[20],identitytheft[9],identitytheft[16],identitytheft[17],identitytheft[22],identitytheft[23]))
identitytheft <- as.data.frame(t(identitytheft_data))
colnames(identitytheft) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
identitytheft$`Avg. Visit Duration` <- paste(identitytheft$`Avg. Visit Duration`,identitytheft$ab)
identitytheft$`Avg. Visit Duration` <- gsub(' ', '.' ,identitytheft$`Avg. Visit Duration`)
identitytheft <- identitytheft[-c(6)]
identitytheft$url <- "identitytheft.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/identitytheft.csv")
df22_d1 <- df[c(1),c(1:20)]
df22_d1 <- cbind(df22_d1,identitytheft)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/identitytheft.csv")
df22_d2 <- df[c(1),c(1:20)]
df22_d2 <- cbind(df22_d2,identitytheft)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/identitytheft.csv")
df22_d3 <- df[c(1),c(1:20)]
df22_d3 <- cbind(df22_d3,identitytheft)

############################################ 23 URL ###############################################
irs_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/irs.pdf"
irs_text <- pdf_text(irs_pdf)
irs <- str_extract_all(irs_text,"\\(?[0-9,.]+\\)?")[[2]]
irs_data <- data.frame(c(irs[10],irs[14],irs[16],irs[5],irs[12],irs[13],irs[18],irs[19]))
irs <- as.data.frame(t(irs_data))
colnames(irs) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
irs$`Avg. Visit Duration` <- paste(irs$`Avg. Visit Duration`,irs$ab)
irs$`Avg. Visit Duration` <- gsub(' ', '.' ,irs$`Avg. Visit Duration`)
irs <- irs[-c(6)]
irs$url <- "irs.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/irs.csv")
df23_d1 <- df[c(1),c(1:20)]
df23_d1 <- cbind(df23_d1,irs)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/irs.csv")
df23_d2 <- df[c(1),c(1:20)]
df23_d2 <- cbind(df23_d2,irs)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/irs.csv")
df23_d3 <- df[c(1),c(1:20)]
df23_d3 <- cbind(df23_d3,irs)

############################################ 24 URL ###############################################
login_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/login.pdf"
login_text <- pdf_text(login_pdf)
login <- str_extract_all(login_text,"\\(?[0-9,.]+\\)?")[[2]]
login_data <- data.frame(c(login[11],login[15],login[17],login[6],login[13],login[14],login[19],login[20]))
login <- as.data.frame(t(login_data))
colnames(login) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
login$`Avg. Visit Duration` <- paste(login$`Avg. Visit Duration`,login$ab)
login$`Avg. Visit Duration` <- gsub(' ', '.' ,login$`Avg. Visit Duration`)
login <- login[-c(6)]
login$url <- "login.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/login.csv")
df24_d1 <- df[c(1),c(1:20)]
df24_d1 <- cbind(df24_d1,login)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/login.csv")
df24_d2 <- df[c(1),c(1:20)]
df24_d2 <- cbind(df24_d2,login)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/login.csv")
df24_d3 <- df[c(1),c(1:20)]
df24_d3 <- cbind(df24_d3,login)

############################################ 25 URL ###############################################
medicaid_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/medicaid.pdf"
medicaid_text <- pdf_text(medicaid_pdf)
medicaid <- str_extract_all(medicaid_text,"\\(?[0-9,.]+\\)?")[[2]]
medicaid_data <- data.frame(c(medicaid[15],medicaid[19],medicaid[21],medicaid[10],medicaid[17],medicaid[18],medicaid[23],medicaid[24]))
medicaid <- as.data.frame(t(medicaid_data))
colnames(medicaid) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
medicaid$`Avg. Visit Duration` <- paste(medicaid$`Avg. Visit Duration`,medicaid$ab)
medicaid$`Avg. Visit Duration` <- gsub(' ', '.' ,medicaid$`Avg. Visit Duration`)
medicaid <- medicaid[-c(6)]
medicaid$url <- "medicaid.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/medicaid.csv")
df25_d1 <- df[c(1),c(1:20)]
df25_d1 <- cbind(df25_d1,medicaid)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/medicaid.csv")
df25_d2 <- df[c(1),c(1:20)]
df25_d2 <- cbind(df25_d2,medicaid)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/medicaid.csv")
df25_d3 <- df[c(1),c(1:20)]
df25_d3 <- cbind(df25_d3,medicaid)

############################################ 26 URL ###############################################
medicare_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/medicare.pdf"
medicare_text <- pdf_text(medicare_pdf)
medicare <- str_extract_all(medicare_text,"\\(?[0-9,.]+\\)?")[[2]]
medicare_data <- data.frame(c(medicare[10],medicare[14],medicare[16],medicare[5],medicare[12],medicare[13],medicare[18],medicare[19]))
medicare <- as.data.frame(t(medicare_data))
colnames(medicare) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
medicare$`Avg. Visit Duration` <- paste(medicare$`Avg. Visit Duration`,medicare$ab)
medicare$`Avg. Visit Duration` <- gsub(' ', '.' ,medicare$`Avg. Visit Duration`)
medicare <- medicare[-c(6)]
medicare$url <- "medicare.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/medicare.csv")
df26_d1 <- df[c(1),c(1:20)]
df26_d1 <- cbind(df26_d1,medicare)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/medicare.csv")
df26_d2 <- df[c(1),c(1:20)]
df26_d2 <- cbind(df26_d2,medicare)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/medicare.csv")
df26_d3 <- df[c(1),c(1:20)]
df26_d3 <- cbind(df26_d3,medicare)

############################################ 27 URL ###############################################
medlineplus_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/medlineplus.pdf"
medlineplus_text <- pdf_text(medlineplus_pdf)
medlineplus <- str_extract_all(medlineplus_text,"\\(?[0-9,.]+\\)?")[[2]]
medlineplus_data <- data.frame(c(medlineplus[15],medlineplus[19],medlineplus[21],medlineplus[10],medlineplus[17],medlineplus[18],medlineplus[23],medlineplus[24]))
medlineplus <- as.data.frame(t(medlineplus_data))
colnames(medlineplus) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
medlineplus$`Avg. Visit Duration` <- paste(medlineplus$`Avg. Visit Duration`,medlineplus$ab)
medlineplus$`Avg. Visit Duration` <- gsub(' ', '.' ,medlineplus$`Avg. Visit Duration`)
medlineplus <- medlineplus[-c(6)]
medlineplus$url <- "medlineplus.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/medlineplus.csv")
df27_d1 <- df[c(1),c(1:20)]
df27_d1 <- cbind(df27_d1,medlineplus)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/medlineplus.csv")
df27_d2 <- df[c(1),c(1:20)]
df27_d2 <- cbind(df27_d2,medlineplus)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/medlineplus.csv")
df27_d3 <- df[c(1),c(1:20)]
df27_d3 <- cbind(df27_d3,medlineplus)

############################################ 28 URL ###############################################
nationalservice_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/nationalservice.pdf"
nationalservice_text <- pdf_text(nationalservice_pdf)
nationalservice <- str_extract_all(nationalservice_text,"\\(?[0-9,.]+\\)?")[[2]]
nationalservice_data <- data.frame(c(nationalservice[10],nationalservice[14],nationalservice[16],nationalservice[5],nationalservice[12],nationalservice[13],nationalservice[18],nationalservice[19]))
nationalservice <- as.data.frame(t(nationalservice_data))
colnames(nationalservice) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
nationalservice$`Avg. Visit Duration` <- paste(nationalservice$`Avg. Visit Duration`,nationalservice$ab)
nationalservice$`Avg. Visit Duration` <- gsub(' ', '.' ,nationalservice$`Avg. Visit Duration`)
nationalservice <- nationalservice[-c(6)]
nationalservice$url <- "nationalservice.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/nationalservice.csv")
df28_d1 <- df[c(1),c(1:20)]
df28_d1 <- cbind(df28_d1,nationalservice)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/nationalservice.csv")
df28_d2 <- df[c(1),c(1:20)]
df28_d2 <- cbind(df28_d2,nationalservice)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/nationalservice.csv")
df28_d3 <- df[c(1),c(1:20)]
df28_d3 <- cbind(df28_d3,nationalservice)

############################################ 29 URL ###############################################
nih_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/nih.pdf"
nih_text <- pdf_text(nih_pdf)
nih <- str_extract_all(nih_text,"\\(?[0-9,.]+\\)?")[[2]]
nih_data <- data.frame(c(nih[26],nih[30],nih[32],nih[21],nih[28],nih[29],nih[34],nih[35]))
nih <- as.data.frame(t(nih_data))
colnames(nih) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
nih$`Avg. Visit Duration` <- paste(nih$`Avg. Visit Duration`,nih$ab)
nih$`Avg. Visit Duration` <- gsub(' ', '.' ,nih$`Avg. Visit Duration`)
nih <- nih[-c(6)]
nih$url <- "nih.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/nih.csv")
df29_d1 <- df[c(1),c(1:20)]
df29_d1 <- cbind(df29_d1,nih)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/nih.csv")
df29_d2 <- df[c(1),c(1:20)]
df29_d2 <- cbind(df29_d2,nih)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/nih.csv")
df29_d3 <- df[c(1),c(1:20)]
df29_d3 <- cbind(df29_d3,nih)

############################################ 30 URL ###############################################
nps_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/nps.pdf"
nps_text <- pdf_text(nps_pdf)
nps <- str_extract_all(nps_text,"\\(?[0-9,.]+\\)?")[[2]]
nps_data <- data.frame(c(nps[11],nps[15],nps[17],nps[6],nps[13],nps[14],nps[19],nps[20]))
nps <- as.data.frame(t(nps_data))
colnames(nps) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
nps$`Avg. Visit Duration` <- paste(nps$`Avg. Visit Duration`,nps$ab)
nps$`Avg. Visit Duration` <- gsub(' ', '.' ,nps$`Avg. Visit Duration`)
nps <- nps[-c(6)]
nps$url <- "nps.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/nps.csv")
df30_d1 <- df[c(1),c(1:20)]
df30_d1 <- cbind(df30_d1,nps)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/nps.csv")
df30_d2 <- df[c(1),c(1:20)]
df30_d2 <- cbind(df30_d2,nps)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/nps.csv")
df30_d3 <- df[c(1),c(1:20)]
df30_d3 <- cbind(df30_d3,nps)

############################################ 31 URL ###############################################
pay_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/pay.pdf"
pay_text <- pdf_text(pay_pdf)
pay <- str_extract_all(pay_text,"\\(?[0-9,.]+\\)?")[[2]]
pay_data <- data.frame(c(pay[10],pay[14],pay[16],pay[5],pay[12],pay[13],pay[18],pay[19]))
pay <- as.data.frame(t(pay_data))
colnames(pay) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
pay$`Avg. Visit Duration` <- paste(pay$`Avg. Visit Duration`,pay$ab)
pay$`Avg. Visit Duration` <- gsub(' ', '.' ,pay$`Avg. Visit Duration`)
pay <- pay[-c(6)]
pay$url <- "pay.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/pay.csv")
df31_d1 <- df[c(1),c(1:20)]
df31_d1 <- cbind(df31_d1,pay)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/pay.csv")
df31_d2 <- df[c(1),c(1:20)]
df31_d2 <- cbind(df31_d2,pay)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/pay.csv")
df31_d3 <- df[c(1),c(1:20)]
df31_d3 <- cbind(df31_d3,pay)

############################################ 32 URL ###############################################
peacecorps_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/peacecorps.pdf"
peacecorps_text <- pdf_text(peacecorps_pdf)
peacecorps <- str_extract_all(peacecorps_text,"\\(?[0-9,.]+\\)?")[[2]]
peacecorps_data <- data.frame(c(peacecorps[10],peacecorps[14],peacecorps[16],peacecorps[5],peacecorps[12],peacecorps[13],peacecorps[18],peacecorps[19]))
peacecorps <- as.data.frame(t(peacecorps_data))
colnames(peacecorps) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
peacecorps$`Avg. Visit Duration` <- paste(peacecorps$`Avg. Visit Duration`,peacecorps$ab)
peacecorps$`Avg. Visit Duration` <- gsub(' ', '.' ,peacecorps$`Avg. Visit Duration`)
peacecorps <- peacecorps[-c(6)]
peacecorps$url <- "peacecorps.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/peacecorps.csv")
df32_d1 <- df[c(1),c(1:20)]
df32_d1 <- cbind(df32_d1,peacecorps)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/peacecorps.csv")
df32_d2 <- df[c(1),c(1:20)]
df32_d2 <- cbind(df32_d2,peacecorps)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/peacecorps.csv")
df32_d3 <- df[c(1),c(1:20)]
df32_d3 <- cbind(df32_d3,peacecorps)

############################################ 33 URL ###############################################
privacyshield_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/privacyshield.pdf"
privacyshield_text <- pdf_text(privacyshield_pdf)
privacyshield <- str_extract_all(privacyshield_text,"\\(?[0-9,.]+\\)?")[[2]]
privacyshield_data <- data.frame(c(privacyshield[10],privacyshield[14],privacyshield[16],privacyshield[5],privacyshield[12],privacyshield[13],privacyshield[18],privacyshield[19]))
privacyshield <- as.data.frame(t(privacyshield_data))
colnames(privacyshield) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
privacyshield$`Avg. Visit Duration` <- paste(privacyshield$`Avg. Visit Duration`,privacyshield$ab)
privacyshield$`Avg. Visit Duration` <- gsub(' ', '.' ,privacyshield$`Avg. Visit Duration`)
privacyshield <- privacyshield[-c(6)]
privacyshield$url <- "privacyshield.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/privacyshield.csv")
df33_d1 <- df[c(1),c(1:20)]
df33_d1 <- cbind(df33_d1,privacyshield)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/privacyshield.csv")
df33_d2 <- df[c(2),c(1:20)]
df33_d2 <- cbind(df33_d2,privacyshield)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/privacyshield.csv")
df33_d3 <- df[c(1),c(1:20)]
df33_d3 <- cbind(df33_d3,privacyshield)

############################################ 34 URL ###############################################
regulations_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/regulations.pdf"
regulations_text <- pdf_text(regulations_pdf)
regulations <- str_extract_all(regulations_text,"\\(?[0-9,.]+\\)?")[[2]]
regulations_data <- data.frame(c(regulations[10],regulations[14],regulations[16],regulations[5],regulations[12],regulations[13],regulations[18],regulations[19]))
regulations <- as.data.frame(t(regulations_data))
colnames(regulations) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
regulations$`Avg. Visit Duration` <- paste(regulations$`Avg. Visit Duration`,regulations$ab)
regulations$`Avg. Visit Duration` <- gsub(' ', '.' ,regulations$`Avg. Visit Duration`)
regulations <- regulations[-c(6)]
regulations$url <- "regulations.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/regulations.csv")
df34_d1 <- df[c(1),c(1:20)]
df34_d1 <- cbind(df34_d1,regulations)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/regulations.csv")
df34_d2 <- df[c(1),c(1:20)]
df34_d2 <- cbind(df34_d2,regulations)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/regulations.csv")
df34_d3 <- df[c(1),c(1:20)]
df34_d3 <- cbind(df34_d3,regulations)

############################################ 35 URL ###############################################
samhsa_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/samhsa.pdf"
samhsa_text <- pdf_text(samhsa_pdf)
samhsa <- str_extract_all(samhsa_text,"\\(?[0-9,.]+\\)?")[[2]]
samhsa_data <- data.frame(c(samhsa[10],samhsa[14],samhsa[16],samhsa[5],samhsa[12],samhsa[13],samhsa[18],samhsa[19]))
samhsa <- as.data.frame(t(samhsa_data))
colnames(samhsa) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
samhsa$`Avg. Visit Duration` <- paste(samhsa$`Avg. Visit Duration`,samhsa$ab)
samhsa$`Avg. Visit Duration` <- gsub(' ', '.' ,samhsa$`Avg. Visit Duration`)
samhsa <- samhsa[-c(6)]
samhsa$url <- "samhsa.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/samhsa.csv")
df35_d1 <- df[c(1),c(1:20)]
df35_d1 <- cbind(df35_d1,samhsa)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/samhsa.csv")
df35_d2 <- df[c(1),c(1:20)]
df35_d2 <- cbind(df35_d2,samhsa)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/samhsa.csv")
df35_d3 <- df[c(1),c(1:20)]
df35_d3 <- cbind(df35_d3,samhsa)

############################################ 36 URL ###############################################
sec_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/sec.pdf"
sec_text <- pdf_text(sec_pdf)
sec <- str_extract_all(sec_text,"\\(?[0-9,.]+\\)?")[[2]]
sec_data <- data.frame(c(sec[10],sec[14],sec[16],sec[5],sec[12],sec[13],sec[18],sec[19]))
sec <- as.data.frame(t(sec_data))
colnames(sec) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
sec$`Avg. Visit Duration` <- paste(sec$`Avg. Visit Duration`,sec$ab)
sec$`Avg. Visit Duration` <- gsub(' ', '.' ,sec$`Avg. Visit Duration`)
sec <- sec[-c(6)]
sec$url <- "sec.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/sec.csv")
df36_d1 <- df[c(1),c(1:20)]
df36_d1 <- cbind(df36_d1,sec)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/sec.csv")
df36_d2 <- df[c(1),c(1:20)]
df36_d2 <- cbind(df36_d2,sec)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/sec.csv")
df36_d3 <- df[c(1),c(1:20)]
df36_d3 <- cbind(df36_d3,sec)

############################################ 37 URL ###############################################
smokefree_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/smokefree.pdf"
smokefree_text <- pdf_text(smokefree_pdf)
smokefree <- str_extract_all(smokefree_text,"\\(?[0-9,.]+\\)?")[[2]]
smokefree_data <- data.frame(c(smokefree[12],smokefree[16],smokefree[18],smokefree[7],smokefree[14],smokefree[15],smokefree[20],smokefree[21]))
smokefree <- as.data.frame(t(smokefree_data))
colnames(smokefree) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
smokefree$`Avg. Visit Duration` <- paste(smokefree$`Avg. Visit Duration`,smokefree$ab)
smokefree$`Avg. Visit Duration` <- gsub(' ', '.' ,smokefree$`Avg. Visit Duration`)
smokefree <- smokefree[-c(6)]
smokefree$url <- "smokefree.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/smokefree.csv")
df37_d1 <- df[c(1),c(1:20)]
df37_d1 <- cbind(df37_d1,smokefree)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/smokefree.csv")
df37_d2 <- df[c(1),c(1:20)]
df37_d2 <- cbind(df37_d2,smokefree)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/smokefree.csv")
df37_d3 <- df[c(1),c(1:20)]
df37_d3 <- cbind(df37_d3,smokefree)

############################################ 38 URL ###############################################
nasa_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/nasa.pdf"
nasa_text <- pdf_text(nasa_pdf)
nasa <- str_extract_all(nasa_text,"\\(?[0-9,.]+\\)?")[[2]]
nasa_data <- data.frame(c(nasa[15],nasa[19],nasa[21],nasa[10],nasa[17],nasa[18],nasa[23],nasa[24]))
nasa <- as.data.frame(t(nasa_data))
colnames(nasa) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
nasa$`Avg. Visit Duration` <- paste(nasa$`Avg. Visit Duration`,nasa$ab)
nasa$`Avg. Visit Duration` <- gsub(' ', '.' ,nasa$`Avg. Visit Duration`)
nasa <- nasa[-c(6)]
nasa$url <- "nasa_solarsystem.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/solarsystem.csv")
df38_d1 <- df[c(1),c(1:20)]
df38_d1 <- cbind(df38_d1,nasa)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/solarsystem.csv")
df38_d2 <- df[c(1),c(1:20)]
df38_d2 <- cbind(df38_d2,nasa)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/solarsystem.csv")
df38_d3 <- df[c(1),c(1:20)]
df38_d3 <- cbind(df38_d3,nasa)

############################################ 39 URL ###############################################
state_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/state.pdf"
state_text <- pdf_text(state_pdf)
state <- str_extract_all(state_text,"\\(?[0-9,.]+\\)?")[[2]]
state_data <- data.frame(c(state[10],state[14],state[16],state[5],state[12],state[13],state[18],state[19]))
state <- as.data.frame(t(state_data))
colnames(state) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
state$`Avg. Visit Duration` <- paste(state$`Avg. Visit Duration`,state$ab)
state$`Avg. Visit Duration` <- gsub(' ', '.' ,state$`Avg. Visit Duration`)
state <- state[-c(6)]
state$url <- "state.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/state.csv")
df39_d1 <- df[c(1),c(1:20)]
df39_d1 <- cbind(df39_d1,state)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/state.csv")
df39_d2 <- df[c(1),c(1:20)]
df39_d2 <- cbind(df39_d2,state)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/state.csv")
df39_d3 <- df[c(1),c(1:20)]
df39_d3 <- cbind(df39_d3,state)

############################################ 40 URL ###############################################
stopbullying_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/stopbullying.pdf"
stopbullying_text <- pdf_text(stopbullying_pdf)
stopbullying <- str_extract_all(stopbullying_text,"\\(?[0-9,.]+\\)?")[[2]]
stopbullying_data <- data.frame(c(stopbullying[14],stopbullying[18],stopbullying[20],stopbullying[9],stopbullying[16],stopbullying[17],stopbullying[22],stopbullying[23]))
stopbullying <- as.data.frame(t(stopbullying_data))
colnames(stopbullying) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
stopbullying$`Avg. Visit Duration` <- paste(stopbullying$`Avg. Visit Duration`,stopbullying$ab)
stopbullying$`Avg. Visit Duration` <- gsub(' ', '.' ,stopbullying$`Avg. Visit Duration`)
stopbullying <- stopbullying[-c(6)]
stopbullying$url <- "stopbullying.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/stopbullying.csv")
df40_d1 <- df[c(1),c(1:20)]
df40_d1 <- cbind(df40_d1,stopbullying)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/stopbullying.csv")
df40_d2 <- df[c(1),c(1:20)]
df40_d2 <- cbind(df40_d2,stopbullying)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/stopbullying.csv")
df40_d3 <- df[c(1),c(1:20)]
df40_d3 <- cbind(df40_d3,stopbullying)

############################################ 41 URL ###############################################
treasury_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/treasury.pdf"
treasury_text <- pdf_text(treasury_pdf)
treasury <- str_extract_all(treasury_text,"\\(?[0-9,.]+\\)?")[[2]]
treasury_data <- data.frame(c(treasury[10],treasury[14],treasury[16],treasury[5],treasury[12],treasury[13],treasury[18],treasury[19]))
treasury <- as.data.frame(t(treasury_data))
colnames(treasury) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
treasury$`Avg. Visit Duration` <- paste(treasury$`Avg. Visit Duration`,treasury$ab)
treasury$`Avg. Visit Duration` <- gsub(' ', '.' ,treasury$`Avg. Visit Duration`)
treasury <- treasury[-c(6)]
treasury$url <- "treasury.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/treasury.csv")
df41_d1 <- df[c(1),c(1:20)]
df41_d1 <- cbind(df41_d1,treasury)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/treasury.csv")
df41_d2 <- df[c(1),c(1:20)]
df41_d2 <- cbind(df41_d2,treasury)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/treasury.csv")
df41_d3 <- df[c(1),c(1:20)]
df41_d3 <- cbind(df41_d3,treasury)


############################################ 42 URL ###############################################
tsunami_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/tsunami.pdf"
tsunami_text <- pdf_text(tsunami_pdf)
tsunami <- str_extract_all(tsunami_text,"\\(?[0-9,.]+\\)?")[[2]]
tsunami_data <- data.frame(c(tsunami[10],tsunami[14],tsunami[16],tsunami[5],tsunami[12],tsunami[13],tsunami[18],tsunami[19]))
tsunami <- as.data.frame(t(tsunami_data))
colnames(tsunami) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
tsunami$`Avg. Visit Duration` <- paste(tsunami$`Avg. Visit Duration`,tsunami$ab)
tsunami$`Avg. Visit Duration` <- gsub(' ', '.' ,tsunami$`Avg. Visit Duration`)
tsunami <- tsunami[-c(6)]
tsunami$url <- "tsunami.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/tsunami.csv")
df42_d1 <- df[c(1),c(1:20)]
df42_d1 <- cbind(df42_d1,tsunami)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/tsunami.csv")
df42_d2 <- df[c(1),c(1:20)]
df42_d2 <- cbind(df42_d2,tsunami)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/tsunami.csv")
df42_d3 <- df[c(1),c(1:20)]
df42_d3 <- cbind(df42_d3,tsunami)

############################################ 43 URL ###############################################
usajobs_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/usajobs.pdf"
usajobs_text <- pdf_text(usajobs_pdf)
usajobs <- str_extract_all(usajobs_text,"\\(?[0-9,.]+\\)?")[[2]]
usajobs_data <- data.frame(c(usajobs[15],usajobs[19],usajobs[21],usajobs[10],usajobs[17],usajobs[18],usajobs[23],usajobs[24]))
usajobs <- as.data.frame(t(usajobs_data))
colnames(usajobs) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
usajobs$`Avg. Visit Duration` <- paste(usajobs$`Avg. Visit Duration`,usajobs$ab)
usajobs$`Avg. Visit Duration` <- gsub(' ', '.' ,usajobs$`Avg. Visit Duration`)
usajobs <- usajobs[-c(6)]
usajobs$url <- "usajobs.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/usajobs.csv")
df43_d1 <- df[c(1),c(1:20)]
df43_d1 <- cbind(df43_d1,usajobs)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/usajobs.csv")
df43_d2 <- df[c(1),c(1:20)]
df43_d2 <- cbind(df43_d2,usajobs)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/usajobs.csv")
df43_d3 <- df[c(1),c(1:20)]
df43_d3 <- cbind(df43_d3,usajobs)

############################################ 44 URL ###############################################
uscis_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/uscis.pdf"
uscis_text <- pdf_text(uscis_pdf)
uscis <- str_extract_all(uscis_text,"\\(?[0-9,.]+\\)?")[[2]]
uscis_data <- data.frame(c(uscis[13],uscis[17],uscis[19],uscis[8],uscis[15],uscis[16],uscis[21],uscis[22]))
uscis <- as.data.frame(t(uscis_data))
colnames(uscis) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
uscis$`Avg. Visit Duration` <- paste(uscis$`Avg. Visit Duration`,uscis$ab)
uscis$`Avg. Visit Duration` <- gsub(' ', '.' ,uscis$`Avg. Visit Duration`)
uscis <- uscis[-c(6)]
uscis$url <- "uscis.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/uscis.csv")
df44_d1 <- df[c(1),c(1:20)]
df44_d1 <- cbind(df44_d1,uscis)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/uscis.csv")
df44_d2 <- df[c(1),c(1:20)]
df44_d2 <- cbind(df44_d2,uscis)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/uscis.csv")
df44_d3 <- df[c(1),c(1:20)]
df44_d3 <- cbind(df44_d3,uscis)

############################################ 45 URL ###############################################
usgs_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/usgs.pdf"
usgs_text <- pdf_text(usgs_pdf)
usgs <- str_extract_all(usgs_text,"\\(?[0-9,.]+\\)?")[[2]]
usgs_data <- data.frame(c(usgs[10],usgs[14],usgs[16],usgs[5],usgs[12],usgs[13],usgs[18],usgs[19]))
usgs <- as.data.frame(t(usgs_data))
colnames(usgs) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
usgs$`Avg. Visit Duration` <- paste(usgs$`Avg. Visit Duration`,usgs$ab)
usgs$`Avg. Visit Duration` <- gsub(' ', '.' ,usgs$`Avg. Visit Duration`)
usgs <- usgs[-c(6)]
usgs$url <- "usgs.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/usgs.csv")
df45_d1 <- df[c(1),c(1:20)]
df45_d1 <- cbind(df45_d1,usgs)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/usgs.csv")
df45_d2 <- df[c(1),c(1:20)]
df45_d2 <- cbind(df45_d2,usgs)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/usgs.csv")
df45_d3 <- df[c(1),c(1:20)]
df45_d3 <- cbind(df45_d3,usgs)

############################################ 46 URL ###############################################
usmint_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/usmint.pdf"
usmint_text <- pdf_text(usmint_pdf)
usmint <- str_extract_all(usmint_text,"\\(?[0-9,.]+\\)?")[[2]]
usmint_data <- data.frame(c(usmint[20],usmint[24],usmint[26],usmint[15],usmint[22],usmint[23],usmint[28],usmint[29]))
usmint <- as.data.frame(t(usmint_data))
colnames(usmint) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
usmint$`Avg. Visit Duration` <- paste(usmint$`Avg. Visit Duration`,usmint$ab)
usmint$`Avg. Visit Duration` <- gsub(' ', '.' ,usmint$`Avg. Visit Duration`)
usmint <- usmint[-c(6)]
usmint$url <- "usmint.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/usmint.csv")
df46_d1 <- df[c(1),c(1:20)]
df46_d1 <- cbind(df46_d1,usmint)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/usmint.csv")
df46_d2 <- df[c(1),c(1:20)]
df46_d2 <- cbind(df46_d2,usmint)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/usmint.csv")
df46_d3 <- df[c(1),c(1:20)]
df46_d3 <- cbind(df46_d3,usmint)

############################################ 47 URL ###############################################
usps_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/usps.pdf"
usps_text <- pdf_text(usps_pdf)
usps <- str_extract_all(usps_text,"\\(?[0-9,.]+\\)?")[[2]]
usps_data <- data.frame(c(usps[17],usps[21],usps[23],usps[12],usps[19],usps[20],usps[25],usps[26]))
usps <- as.data.frame(t(usps_data))
colnames(usps) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
usps$`Avg. Visit Duration` <- paste(usps$`Avg. Visit Duration`,usps$ab)
usps$`Avg. Visit Duration` <- gsub(' ', '.' ,usps$`Avg. Visit Duration`)
usps <- usps[-c(6)]
usps$url <- "usps.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/usps.csv")
df47_d1 <- df[c(1),c(1:20)]
df47_d1 <- cbind(df47_d1,usps)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/usps.csv")
df47_d2 <- df[c(1),c(1:20)]
df47_d2 <- cbind(df47_d2,usps)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/usps.csv")
df47_d3 <- df[c(1),c(1:20)]
df47_d3 <- cbind(df47_d3,usps)

############################################ 48 URL ###############################################
weather_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/weather.pdf"
weather_text <- pdf_text(weather_pdf)
weather <- str_extract_all(weather_text,"\\(?[0-9,.]+\\)?")[[2]]
weather_data <- data.frame(c(weather[10],weather[14],weather[16],weather[5],weather[12],weather[13],weather[18],weather[19]))
weather <- as.data.frame(t(weather_data))
colnames(weather) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
weather$`Avg. Visit Duration` <- paste(weather$`Avg. Visit Duration`,weather$ab)
weather$`Avg. Visit Duration` <- gsub(' ', '.' ,weather$`Avg. Visit Duration`)
weather <- weather[-c(6)]
weather$url <- "weather.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/weather.csv")
df48_d1 <- df[c(1),c(1:20)]
df48_d1 <- cbind(df48_d1,weather)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/weather.csv")
df48_d2 <- df[c(1),c(1:20)]
df48_d2 <- cbind(df48_d2,weather)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/weather.csv")
df48_d3 <- df[c(1),c(1:20)]
df48_d3 <- cbind(df48_d3,weather)

############################################ 49 URL ###############################################
whitehouse_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/whitehouse.pdf"
whitehouse_text <- pdf_text(whitehouse_pdf)
whitehouse <- str_extract_all(whitehouse_text,"\\(?[0-9,.]+\\)?")[[2]]
whitehouse_data <- data.frame(c(whitehouse[14],whitehouse[18],whitehouse[20],whitehouse[9],whitehouse[16],whitehouse[17],whitehouse[22],whitehouse[23]))
whitehouse <- as.data.frame(t(whitehouse_data))
colnames(whitehouse) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
whitehouse$`Avg. Visit Duration` <- paste(whitehouse$`Avg. Visit Duration`,whitehouse$ab)
whitehouse$`Avg. Visit Duration` <- gsub(' ', '.' ,whitehouse$`Avg. Visit Duration`)
whitehouse <- whitehouse[-c(6)]
whitehouse$url <- "whitehouse.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/whitehouse.csv")
df49_d1 <- df[c(1),c(1:20)]
df49_d1 <- cbind(df49_d1,whitehouse)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/whitehouse.csv")
df49_d2 <- df[c(2),c(1:20)]
df49_d2 <- cbind(df49_d2,whitehouse)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/whitehouse.csv")
df49_d3 <- df[c(1),c(1:20)]
df49_d3 <- cbind(df49_d3,whitehouse)

############################################ 50 URL ###############################################
womenshealth_pdf <- "D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_pdf/womenshealth.pdf"
womenshealth_text <- pdf_text(womenshealth_pdf)
womenshealth <- str_extract_all(womenshealth_text,"\\(?[0-9,.]+\\)?")[[2]]
womenshealth_data <- data.frame(c(womenshealth[19],womenshealth[23],womenshealth[25],womenshealth[14],womenshealth[21],womenshealth[22],womenshealth[27],womenshealth[28]))
womenshealth <- as.data.frame(t(womenshealth_data))
colnames(womenshealth) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
womenshealth$`Avg. Visit Duration` <- paste(womenshealth$`Avg. Visit Duration`,womenshealth$ab)
womenshealth$`Avg. Visit Duration` <- gsub(' ', '.' ,womenshealth$`Avg. Visit Duration`)
womenshealth <- womenshealth[-c(6)]
womenshealth$url <- "womenshealth.gov"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/womenshealth.csv")
df50_d1 <- df[c(1),c(1:20)]
df50_d1 <- cbind(df50_d1,womenshealth)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/womenshealth.csv")
df50_d2 <- df[c(1),c(1:20)]
df50_d2 <- cbind(df50_d2,womenshealth)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/Non-AMP/non_csv/womenshealth.csv")
df50_d3 <- df[c(1),c(1:20)]
df50_d3 <- cbind(df50_d3,womenshealth)

df_d1 <- rbind.data.frame(df1_d1,df2_d1,df3_d1,df4_d1,df5_d1,df6_d1,df7_d1,df8_d1,df9_d1,df10_d1,
                          df11_d1,df12_d1,df13_d1,df14_d1,df15_d1,df16_d1,df17_d1,df18_d1,df19_d1,df20_d1,
                          df21_d1,df22_d1,df23_d1,df24_d1,df25_d1,df26_d1,df27_d1,df28_d1,df29_d1,df30_d1,
                          df31_d1,df32_d1,df33_d3,df34_d1,df35_d1,df36_d1,df37_d1,df38_d1,df39_d1,df40_d1,
                          df41_d1,df42_d1,df43_d1,df44_d1,df45_d1,df46_d1,df47_d1,df48_d1,df49_d1,df50_d1)
df_d2 <- rbind.data.frame(df1_d2,df2_d2,df3_d2,df4_d2,df5_d2,df6_d2,df7_d2,df8_d2,df9_d2,df10_d2,
                          df11_d2,df12_d2,df13_d2,df14_d2,df15_d2,df16_d2,df17_d2,df18_d2,df19_d2,df20_d2,
                          df21_d2,df22_d2,df23_d2,df24_d2,df25_d2,df26_d2,df27_d2,df28_d2,df29_d2,df30_d2,
                          df31_d2,df32_d2,df33_d3,df34_d2,df35_d2,df36_d2,df37_d2,df38_d2,df39_d2,df40_d2,
                          df41_d2,df42_d2,df43_d2,df44_d2,df45_d2,df46_d2,df47_d2,df48_d2,df49_d2,df50_d2)
df_d3 <- rbind.data.frame(df1_d3,df2_d3,df3_d3,df4_d3,df5_d3,df6_d3,df7_d3,df8_d3,df9_d3,df10_d3,
                          df11_d3,df12_d3,df13_d3,df14_d3,df15_d3,df16_d3,df17_d3,df18_d3,df19_d3,df20_d3,
                          df21_d3,df22_d3,df23_d3,df24_d3,df25_d3,df26_d3,df27_d3,df28_d3,df29_d3,df30_d3,
                          df31_d3,df32_d3,df33_d3,df34_d3,df35_d3,df36_d3,df37_d3,df38_d3,df39_d3,df40_d3,
                          df41_d3,df42_d3,df43_d3,df44_d3,df45_d3,df46_d3,df47_d3,df48_d3,df49_d3,df50_d3)
setwd("D:/SEM 3/Datasets/GTmatrix/Non-AMP/");
write.csv(df_d1, file = "Data1.csv",row.names=FALSE)
write.csv(df_d2, file = "Data2.csv",row.names=FALSE)
write.csv(df_d3, file = "Data3.csv",row.names=FALSE)

library(corrplot)
corrplot(cor(df_d3, method = "number"))
str(df_d3)
class(df_d3)
