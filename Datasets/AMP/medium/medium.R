library(pdftools)
library(stringr)
library(dplyr)
library(corrplot)
############################################ 1 URL ###############################################
onefunny_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/1funny.pdf" 
onefunny_text <- pdf_text(onefunny_pdf)
onefunny <- str_extract_all(onefunny_text,"\\(?[0-9,.]+\\)?")[[2]]
onefunny_data <- data.frame(c(onefunny[12],onefunny[16],onefunny[18],onefunny[7],onefunny[14],onefunny[15],onefunny[20],onefunny[21]))
onefunny <- as.data.frame(t(onefunny_data))
colnames(onefunny) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
onefunny$`Avg. Visit Duration` <- paste(onefunny$`Avg. Visit Duration`,onefunny$ab)
onefunny$`Avg. Visit Duration` <- gsub(' ', '.' ,onefunny$`Avg. Visit Duration`)
onefunny <- onefunny[-c(6)]
onefunny$url <- "1funny.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/1funny.csv")
df1_d1 <- df[c(1),c(1:20)]
df1_d1 <- cbind(df1_d1,onefunny)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/1funny.csv")
df1_d2 <- df[c(2),c(1:20)]
df1_d2 <- cbind(df1_d2,onefunny)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/1funny.csv")
df1_d3 <- df[c(1),c(1:20)]
df1_d3 <- cbind(df1_d3,onefunny)

############################################ 2 URL ###############################################
Twocarpros_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/2carpros.pdf"
Twocarpros_text <- pdf_text(Twocarpros_pdf)
Twocarpros <- str_extract_all(Twocarpros_text,"\\(?[0-9,.]+\\)?")[[2]]
Twocarpros_data <- data.frame(c(Twocarpros[13],Twocarpros[17],Twocarpros[19],Twocarpros[8],Twocarpros[15],Twocarpros[16],Twocarpros[21],Twocarpros[22]))
Twocarpros <- as.data.frame(t(Twocarpros_data))
colnames(Twocarpros) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
Twocarpros$`Avg. Visit Duration` <- paste(Twocarpros$`Avg. Visit Duration`,Twocarpros$ab)
Twocarpros$`Avg. Visit Duration` <- gsub(' ', '.' ,Twocarpros$`Avg. Visit Duration`)
Twocarpros <- Twocarpros[-c(6)]
Twocarpros$url <- "2carpros.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/2carpros.csv")
df2_d1 <- df[c(1),c(1:20)]
df2_d1 <- cbind(df2_d1,Twocarpros)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/2carpros.csv")
df2_d2 <- df[c(2),c(1:20)]
df2_d2 <- cbind(df2_d2,Twocarpros)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/2carpros.csv")
df2_d3 <- df[c(1),c(1:20)]
df2_d3 <- cbind(df2_d3,Twocarpros)

############################################ 3 URL ###############################################
one728_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/1728.pdf"
one728_text <- pdf_text(one728_pdf)
one728 <- str_extract_all(one728_text,"\\(?[0-9,.]+\\)?")[[2]]
one728_data <- data.frame(c(one728[22],one728[26],one728[28],one728[17],one728[24],one728[25],one728[30],one728[31]))
one728 <- as.data.frame(t(one728_data))
colnames(one728) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
one728$`Avg. Visit Duration` <- paste(one728$`Avg. Visit Duration`,one728$ab)
one728$`Avg. Visit Duration` <- gsub(' ', '.' ,one728$`Avg. Visit Duration`)
one728 <- one728[-c(6)]
one728$url <- "1728.org"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/1728.csv")
df3_d1 <- df[c(1),c(1:20)]
df3_d1 <- cbind(df3_d1,one728)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/1728.csv")
df3_d2 <- df[c(2),c(1:20)]
df3_d2 <- cbind(df3_d2,one728)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/1728.csv")
df3_d3 <- df[c(1),c(1:20)]
df3_d3 <- cbind(df3_d3,one728)

############################################ 4 URL ###############################################
barrett_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/barrett-jackson.pdf"
barrett_text <- pdf_text(barrett_pdf)
barrett <- str_extract_all(barrett_text,"\\(?[0-9,.]+\\)?")[[2]]
barrett_data <- data.frame(c(barrett[11],barrett[15],barrett[17],barrett[6],barrett[13],barrett[14],barrett[19],barrett[20]))
barrett <- as.data.frame(t(barrett_data))
colnames(barrett) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
barrett$`Avg. Visit Duration` <- paste(barrett$`Avg. Visit Duration`,barrett$ab)
barrett$`Avg. Visit Duration` <- gsub(' ', '.' ,barrett$`Avg. Visit Duration`)
barrett <- barrett[-c(6)]
barrett$url <- "barrett-jackson.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/barrett-jackson.csv")
df4_d1 <- df[c(1),c(1:20)]
df4_d1 <- cbind(df4_d1,barrett)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/barrett-jackson.csv")
df4_d2 <- df[c(2),c(1:20)]
df4_d2 <- cbind(df4_d2,barrett)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/barrett-jackson.csv")
df4_d3 <- df[c(1),c(1:20)]
df4_d3 <- cbind(df4_d3,barrett)

############################################ 5 URL ###############################################
bassresource_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/bassresource.pdf"
bassresource_text <- pdf_text(bassresource_pdf)
bassresource <- str_extract_all(bassresource_text,"\\(?[0-9,.]+\\)?")[[2]]
bassresource_data <- data.frame(c(bassresource[17],bassresource[21],bassresource[23],bassresource[12],bassresource[19],bassresource[20],bassresource[25],bassresource[26]))
bassresource <- as.data.frame(t(bassresource_data))
colnames(bassresource) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
bassresource <- bassresource[-c(6)]
bassresource$url <- "bassresource.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/bassresource.csv")
df5_d1 <- df[c(1),c(1:20)]
df5_d1 <- cbind(df5_d1,bassresource)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/bassresource.csv")
df5_d2 <- df[c(1),c(1:20)]
df5_d2 <- cbind(df5_d2,bassresource)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/bassresource.csv")
df5_d3 <- df[c(1),c(1:20)]
df5_d3 <- cbind(df5_d3,bassresource)

############################################ 6 URL ###############################################
bendbulletin_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/bendbulletin.pdf"
bendbulletin_text <- pdf_text(bendbulletin_pdf)
bendbulletin <- str_extract_all(bendbulletin_text,"\\(?[0-9,.]+\\)?")[[2]]
bendbulletin_data <- data.frame(c(bendbulletin[16],bendbulletin[20],bendbulletin[22],bendbulletin[11],bendbulletin[18],bendbulletin[19],bendbulletin[24],bendbulletin[25]))
bendbulletin <- as.data.frame(t(bendbulletin_data))
colnames(bendbulletin) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
bendbulletin$`Avg. Visit Duration` <- paste(bendbulletin$`Avg. Visit Duration`,bendbulletin$ab)
bendbulletin$`Avg. Visit Duration` <- gsub(' ', '.' ,bendbulletin$`Avg. Visit Duration`)
bendbulletin <- bendbulletin[-c(6)]
bendbulletin$url <- "bendbulletin.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/bendbulletin.csv")
df6_d1 <- df[c(1),c(1:20)]
df6_d1 <- cbind(df6_d1,bendbulletin)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/bendbulletin.csv")
df6_d2 <- df[c(2),c(1:20)]
df6_d2 <- cbind(df6_d2,bendbulletin)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/bendbulletin.csv")
df6_d3 <- df[c(1),c(1:20)]
df6_d3 <- cbind(df6_d3,bendbulletin)

############################################ 7 URL ###############################################
biblia_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/biblia.pdf"
biblia_text <- pdf_text(biblia_pdf)
biblia <- str_extract_all(biblia_text,"\\(?[0-9,.]+\\)?")[[2]]
biblia_data <- data.frame(c(biblia[14],biblia[18],biblia[20],biblia[9],biblia[16],biblia[17],biblia[22],biblia[23]))
biblia <- as.data.frame(t(biblia_data))
colnames(biblia) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
biblia$`Avg. Visit Duration` <- paste(biblia$`Avg. Visit Duration`,biblia$ab)
biblia$`Avg. Visit Duration` <- gsub(' ', '.' ,biblia$`Avg. Visit Duration`)
biblia <- biblia[-c(6)]
biblia$url <- "biblia.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/biblia.csv")
df7_d1 <- df[c(1),c(1:20)]
df7_d1 <- cbind(df7_d1,biblia)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/biblia.csv")
df7_d2 <- df[c(2),c(1:20)]
df7_d2 <- cbind(df7_d2,biblia)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/biblia.csv")
df7_d3 <- df[c(1),c(1:20)]
df7_d3 <- cbind(df7_d3,biblia)

############################################ 8 URL ###############################################
billiongraves_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/billiongraves.pdf"
billiongraves_text <- pdf_text(billiongraves_pdf)
billiongraves <- str_extract_all(billiongraves_text,"\\(?[0-9,.]+\\)?")[[2]]
billiongraves_data <- data.frame(c(billiongraves[12],billiongraves[16],billiongraves[18],billiongraves[7],billiongraves[14],billiongraves[15],billiongraves[20],billiongraves[21]))
billiongraves <- as.data.frame(t(billiongraves_data))
colnames(billiongraves) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
billiongraves$`Avg. Visit Duration` <- paste(billiongraves$`Avg. Visit Duration`,billiongraves$ab)
billiongraves$`Avg. Visit Duration` <- gsub(' ', '.' ,billiongraves$`Avg. Visit Duration`)
billiongraves <- billiongraves[-c(6)]
billiongraves$url <- "billiongraves.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/billiongraves.csv")
df8_d1 <- df[c(1),c(1:20)]
df8_d1 <- cbind(df8_d1,billiongraves)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/billiongraves.csv")
df8_d2 <- df[c(2),c(1:20)]
df8_d2 <- cbind(df8_d2,billiongraves)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/billiongraves.csv")
df8_d3 <- df[c(1),c(1:20)]
df8_d3 <- cbind(df8_d3,billiongraves)

############################################ 9 URL ###############################################
bizpacreview_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/bizpacreview.pdf"
bizpacreview_text <- pdf_text(bizpacreview_pdf)
bizpacreview <- str_extract_all(bizpacreview_text,"\\(?[0-9,.]+\\)?")[[2]]
bizpacreview_data <- data.frame(c(bizpacreview[14],bizpacreview[18],bizpacreview[20],bizpacreview[9],bizpacreview[16],bizpacreview[17],bizpacreview[22],bizpacreview[23]))
bizpacreview <- as.data.frame(t(bizpacreview_data))
colnames(bizpacreview) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
bizpacreview$`Avg. Visit Duration` <- paste(bizpacreview$`Avg. Visit Duration`,bizpacreview$ab)
bizpacreview$`Avg. Visit Duration` <- gsub(' ', '.' ,bizpacreview$`Avg. Visit Duration`)
bizpacreview <- bizpacreview[-c(6)]
bizpacreview$url <- "bizpacreview.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/bizpacreview.csv")
df9_d1 <- df[c(1),c(1:20)]
df9_d1 <- cbind(df9_d1,bizpacreview)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/bizpacreview.csv")
df9_d2 <- df[c(2),c(1:20)]
df9_d2 <- cbind(df9_d2,bizpacreview)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/bizpacreview.csv")
df9_d3 <- df[c(1),c(1:20)]
df9_d3 <- cbind(df9_d3,bizpacreview)

############################################ 10 URL ###############################################
brandsoftheworld_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/brandsoftheworld.pdf"
brandsoftheworld_text <- pdf_text(brandsoftheworld_pdf)
brandsoftheworld <- str_extract_all(brandsoftheworld_text,"\\(?[0-9,.]+\\)?")[[2]]
brandsoftheworld_data <- data.frame(c(brandsoftheworld[12],brandsoftheworld[16],brandsoftheworld[18],brandsoftheworld[7],brandsoftheworld[14],brandsoftheworld[15],brandsoftheworld[20],brandsoftheworld[21]))
brandsoftheworld <- as.data.frame(t(brandsoftheworld_data))
colnames(brandsoftheworld) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
brandsoftheworld$`Avg. Visit Duration` <- paste(brandsoftheworld$`Avg. Visit Duration`,brandsoftheworld$ab)
brandsoftheworld$`Avg. Visit Duration` <- gsub(' ', '.' ,brandsoftheworld$`Avg. Visit Duration`)
brandsoftheworld <- brandsoftheworld[-c(6)]
brandsoftheworld$url <- "brandsoftheworld.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/brandsoftheworld.csv")
df10_d1 <- df[c(1),c(1:20)]
df10_d1 <- cbind(df10_d1,brandsoftheworld)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/brandsoftheworld.csv")
df10_d2 <- df[c(2),c(1:20)]
df10_d2 <- cbind(df10_d2,brandsoftheworld)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/brandsoftheworld.csv")
df10_d3 <- df[c(1),c(1:20)]
df10_d3 <- cbind(df10_d3,brandsoftheworld)

############################################ 11 URL ###############################################
calendar_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/calendar-365.pdf"
calendar_text <- pdf_text(calendar_pdf)
calendar <- str_extract_all(calendar_text,"\\(?[0-9,.]+\\)?")[[2]]
calendar_data <- data.frame(c(calendar[16],calendar[20],calendar[22],calendar[11],calendar[18],calendar[19],calendar[24],calendar[25]))
calendar <- as.data.frame(t(calendar_data))
colnames(calendar) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
calendar$`Avg. Visit Duration` <- paste(calendar$`Avg. Visit Duration`,calendar$ab)
calendar$`Avg. Visit Duration` <- gsub(' ', '.' ,calendar$`Avg. Visit Duration`)
calendar <- calendar[-c(6)]
calendar$url <- "calendar-365.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/calendar-365.csv")
df11_d1 <- df[c(1),c(1:20)]
df11_d1 <- cbind(df11_d1,calendar)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/calendar-365.csv")
df11_d2 <- df[c(2),c(1:20)]
df11_d2 <- cbind(df11_d2,calendar)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/calendar-365.csv")
df11_d3 <- df[c(1),c(1:20)]
df11_d3 <- cbind(df11_d3,calendar)

############################################ 12 URL ###############################################
carsense_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/carsense.pdf"
carsense_text <- pdf_text(carsense_pdf)
carsense <- str_extract_all(carsense_text,"\\(?[0-9,.]+\\)?")[[2]]
carsense_data <- data.frame(c(carsense[15],carsense[19],carsense[21],carsense[10],carsense[17],carsense[18],carsense[23],carsense[24]))
carsense <- as.data.frame(t(carsense_data))
colnames(carsense) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
carsense$`Avg. Visit Duration` <- paste(carsense$`Avg. Visit Duration`,carsense$ab)
carsense$`Avg. Visit Duration` <- gsub(' ', '.' ,carsense$`Avg. Visit Duration`)
carsense <- carsense[-c(6)]
carsense$url <- "carsense.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/carsense.com.csv")
df12_d1 <- df[c(1),c(1:20)]
df12_d1 <- cbind(df12_d1,carsense)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/carsense.com.csv")
df12_d2 <- df[c(2),c(1:20)]
df12_d2 <- cbind(df12_d2,carsense)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/carsense.com.csv")
df12_d3 <- df[c(1),c(1:20)]
df12_d3 <- cbind(df12_d3,carsense)

############################################ 13 URL ###############################################
cdispatch_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/cdispatch.pdf"
cdispatch_text <- pdf_text(cdispatch_pdf)
cdispatch <- str_extract_all(cdispatch_text,"\\(?[0-9,.]+\\)?")[[2]]
cdispatch_data <- data.frame(c(cdispatch[10],cdispatch[14],cdispatch[16],cdispatch[5],cdispatch[12],cdispatch[13],cdispatch[18],cdispatch[19]))
cdispatch <- as.data.frame(t(cdispatch_data))
colnames(cdispatch) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cdispatch$`Avg. Visit Duration` <- paste(cdispatch$`Avg. Visit Duration`,cdispatch$ab)
cdispatch$`Avg. Visit Duration` <- gsub(' ', '.' ,cdispatch$`Avg. Visit Duration`)
cdispatch <- cdispatch[-c(6)]
cdispatch$url <- "cdispatch.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/cdispatch.com.csv")
df13_d1 <- df[c(1),c(1:20)]
df13_d1 <- cbind(df13_d1,cdispatch)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/cdispatch.com.csv")
df13_d2 <- df[c(2),c(1:20)]
df13_d2 <- cbind(df13_d2,cdispatch)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/cdispatch.com.csv")
df13_d3 <- df[c(1),c(1:20)]
df13_d3 <- cbind(df13_d3,cdispatch)



############################################ 14 URL ###############################################
chess_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/chess.pdf"
chess_text <- pdf_text(chess_pdf)
chess <- str_extract_all(chess_text,"\\(?[0-9,.]+\\)?")[[2]]
chess_data <- data.frame(c(chess[21],chess[25],chess[27],chess[16],chess[23],chess[24],chess[29],chess[30]))
chess <- as.data.frame(t(chess_data))
colnames(chess) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
chess$`Avg. Visit Duration` <- paste(chess$`Avg. Visit Duration`,chess$ab)
chess$`Avg. Visit Duration` <- gsub(' ', '.' ,chess$`Avg. Visit Duration`)
chess <- chess[-c(6)]
chess$url <- "chess.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/chess.com.csv")
df14_d1 <- df[c(1),c(1:20)]
df14_d1 <- cbind(df14_d1,chess)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/chess.com.csv")
df14_d2 <- df[c(2),c(1:20)]
df14_d2 <- cbind(df14_d2,chess)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/chess.com.csv")
df14_d3 <- df[c(3),c(1:20)]
df14_d3 <- cbind(df14_d3,chess)

############################################ 15 URL ###############################################
chronofhorse_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/chronofhorse.pdf"
chronofhorse_text <- pdf_text(chronofhorse_pdf)
chronofhorse <- str_extract_all(chronofhorse_text,"\\(?[0-9,.]+\\)?")[[2]]
chronofhorse_data <- data.frame(c(chronofhorse[10],chronofhorse[14],chronofhorse[16],chronofhorse[5],chronofhorse[12],chronofhorse[13],chronofhorse[18],chronofhorse[19]))
chronofhorse <- as.data.frame(t(chronofhorse_data))
colnames(chronofhorse) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
chronofhorse$`Avg. Visit Duration` <- paste(chronofhorse$`Avg. Visit Duration`,chronofhorse$ab)
chronofhorse$`Avg. Visit Duration` <- gsub(' ', '.' ,chronofhorse$`Avg. Visit Duration`)
chronofhorse <- chronofhorse[-c(6)]
chronofhorse$url <- "chronofhorse.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/chronofhorse.com.csv")
df15_d1 <- df[c(1),c(1:20)]
df15_d1 <- cbind(df15_d1,chronofhorse)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/chronofhorse.com.csv")
df15_d2 <- df[c(2),c(1:20)]
df15_d2 <- cbind(df15_d2,chronofhorse)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/chronofhorse.com.csv")
df15_d3 <- df[c(1),c(1:20)]
df15_d3 <- cbind(df15_d3,chronofhorse)

############################################ 16 URL ###############################################
codeproject_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/codeproject.pdf"
codeproject_text <- pdf_text(codeproject_pdf)
codeproject <- str_extract_all(codeproject_text,"\\(?[0-9,.]+\\)?")[[2]]
codeproject_data <- data.frame(c(codeproject[13],codeproject[17],codeproject[19],codeproject[8],codeproject[15],codeproject[16],codeproject[21],codeproject[22]))
codeproject <- as.data.frame(t(codeproject_data))
colnames(codeproject) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
codeproject$`Avg. Visit Duration` <- paste(codeproject$`Avg. Visit Duration`,codeproject$ab)
codeproject$`Avg. Visit Duration` <- gsub(' ', '.' ,codeproject$`Avg. Visit Duration`)
codeproject <- codeproject[-c(6)]
codeproject$url <- "codeproject.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/codeproject.com.csv")
df16_d1 <- df[c(1),c(1:20)]
df16_d1 <- cbind(df16_d1,codeproject)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/codeproject.com.csv")
df16_d2 <- df[c(2),c(1:20)]
df16_d2 <- cbind(df16_d2,codeproject)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/codeproject.com.csv")
df16_d3 <- df[c(1),c(1:20)]
df16_d3 <- cbind(df16_d3,codeproject)

############################################ 17 URL ###############################################
complaintsboard_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/complaintsboard.pdf"
complaintsboard_text <- pdf_text(complaintsboard_pdf)
complaintsboard <- str_extract_all(complaintsboard_text,"\\(?[0-9,.]+\\)?")[[2]]
complaintsboard_data <- data.frame(c(complaintsboard[13],complaintsboard[17],complaintsboard[19],complaintsboard[8],complaintsboard[15],complaintsboard[16],complaintsboard[21],complaintsboard[22]))
complaintsboard <- as.data.frame(t(complaintsboard_data))
colnames(complaintsboard) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
complaintsboard$`Avg. Visit Duration` <- paste(complaintsboard$`Avg. Visit Duration`,complaintsboard$ab)
complaintsboard$`Avg. Visit Duration` <- gsub(' ', '.' ,complaintsboard$`Avg. Visit Duration`)
complaintsboard <- complaintsboard[-c(6)]
complaintsboard$url <- "complaintsboard.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/complaintsboard.com.csv")
df17_d1 <- df[c(1),c(1:20)]
df17_d1 <- cbind(df17_d1,complaintsboard)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/complaintsboard.com.csv")
df17_d2 <- df[c(2),c(1:20)]
df17_d2 <- cbind(df17_d2,complaintsboard)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/complaintsboard.com.csv")
df17_d3 <- df[c(1),c(1:20)]
df17_d3 <- cbind(df17_d3,complaintsboard)

############################################ 18 URL ###############################################
constitutioncenter_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/constitutioncenter.pdf"
constitutioncenter_text <- pdf_text(constitutioncenter_pdf)
constitutioncenter <- str_extract_all(constitutioncenter_text,"\\(?[0-9,.]+\\)?")[[2]]
constitutioncenter_data <- data.frame(c(constitutioncenter[16],constitutioncenter[20],constitutioncenter[22],constitutioncenter[11],constitutioncenter[18],constitutioncenter[19],constitutioncenter[24],constitutioncenter[25]))
constitutioncenter <- as.data.frame(t(constitutioncenter_data))
colnames(constitutioncenter) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
constitutioncenter$`Avg. Visit Duration` <- paste(constitutioncenter$`Avg. Visit Duration`,constitutioncenter$ab)
constitutioncenter$`Avg. Visit Duration` <- gsub(' ', '.' ,constitutioncenter$`Avg. Visit Duration`)
constitutioncenter <- constitutioncenter[-c(6)]
constitutioncenter$url <- "constitutioncenter.org"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/constitutioncenter.org.csv")
df18_d1 <- df[c(1),c(1:20)]
df18_d1 <- cbind(df18_d1,constitutioncenter)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/constitutioncenter.org.csv")
df18_d2 <- df[c(2),c(1:20)]
df18_d2 <- cbind(df18_d2,constitutioncenter)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/constitutioncenter.org.csv")
df18_d3 <- df[c(1),c(1:20)]
df18_d3 <- cbind(df18_d3,constitutioncenter)

############################################ 19 URL ###############################################
consumersadvocate_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/consumersadvocate.pdf"
consumersadvocate_text <- pdf_text(consumersadvocate_pdf)
consumersadvocate <- str_extract_all(consumersadvocate_text,"\\(?[0-9,.]+\\)?")[[2]]
consumersadvocate_data <- data.frame(c(consumersadvocate[14],consumersadvocate[18],consumersadvocate[20],consumersadvocate[9],consumersadvocate[16],consumersadvocate[17],consumersadvocate[22],consumersadvocate[23]))
consumersadvocate <- as.data.frame(t(consumersadvocate_data))
colnames(consumersadvocate) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
consumersadvocate$`Avg. Visit Duration` <- paste(consumersadvocate$`Avg. Visit Duration`,consumersadvocate$ab)
consumersadvocate$`Avg. Visit Duration` <- gsub(' ', '.' ,consumersadvocate$`Avg. Visit Duration`)
consumersadvocate <- consumersadvocate[-c(6)]
consumersadvocate$url <- "consumersadvocate.org"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/consumersadvocate.org.csv")
df19_d1 <- df[c(1),c(1:20)]
df19_d1 <- cbind(df19_d1,consumersadvocate)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/consumersadvocate.org.csv")
df19_d2 <- df[c(2),c(1:20)]
df19_d2 <- cbind(df19_d2,consumersadvocate)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/consumersadvocate.org.csv")
df19_d3 <- df[c(1),c(1:20)]
df19_d3 <- cbind(df19_d3,consumersadvocate)

############################################ 20 URL ###############################################
convio_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/convio.pdf"
convio_text <- pdf_text(convio_pdf)
convio <- str_extract_all(convio_text,"\\(?[0-9,.]+\\)?")[[2]]
convio_data <- data.frame(c(convio[20],convio[24],convio[26],convio[15],convio[22],convio[23],convio[28],convio[29]))
convio <- as.data.frame(t(convio_data))
colnames(convio) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
convio$`Avg. Visit Duration` <- paste(convio$`Avg. Visit Duration`,convio$ab)
convio$`Avg. Visit Duration` <- gsub(' ', '.' ,convio$`Avg. Visit Duration`)
convio <- convio[-c(6)]
convio$url <- "convio.net"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/convio.net.csv")
df20_d1 <- df[c(1),c(1:20)]
df20_d1 <- cbind(df20_d1,convio)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/convio.net.csv")
df20_d2 <- df[c(2),c(1:20)]
df20_d2 <- cbind(df20_d2,convio)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/convio.net.csv")
df20_d3 <- df[c(1),c(1:20)]
df20_d3 <- cbind(df20_d3,convio)

############################################ 21 URL ###############################################
cosplay_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/cosplay.pdf"
cosplay_text <- pdf_text(cosplay_pdf)
cosplay <- str_extract_all(cosplay_text,"\\(?[0-9,.]+\\)?")[[2]]
cosplay_data <- data.frame(c(cosplay[15],cosplay[19],cosplay[21],cosplay[10],cosplay[17],cosplay[18],cosplay[23],cosplay[24]))
cosplay <- as.data.frame(t(cosplay_data))
colnames(cosplay) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cosplay$`Avg. Visit Duration` <- paste(cosplay$`Avg. Visit Duration`,cosplay$ab)
cosplay$`Avg. Visit Duration` <- gsub(' ', '.' ,cosplay$`Avg. Visit Duration`)
cosplay <- cosplay[-c(6)]
cosplay$url <- "cosplay.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/cosplay.com.csv")
df21_d1 <- df[c(1),c(1:20)]
df21_d1 <- cbind(df21_d1,cosplay)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/cosplay.com.csv")
df21_d2 <- df[c(2),c(1:20)]
df21_d2 <- cbind(df21_d2,cosplay)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/cosplay.com.csv")
df21_d3 <- df[c(1),c(1:20)]
df21_d3 <- cbind(df21_d3,cosplay)

############################################ 22 URL ###############################################
kidzworld_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/kidzworld.pdf"
kidzworld_text <- pdf_text(kidzworld_pdf)
kidzworld <- str_extract_all(kidzworld_text,"\\(?[0-9,.]+\\)?")[[2]]
kidzworld_data <- data.frame(c(kidzworld[16],kidzworld[20],kidzworld[22],kidzworld[11],kidzworld[18],kidzworld[19],kidzworld[24],kidzworld[25]))
kidzworld <- as.data.frame(t(kidzworld_data))
colnames(kidzworld) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
kidzworld$`Avg. Visit Duration` <- paste(kidzworld$`Avg. Visit Duration`,kidzworld$ab)
kidzworld$`Avg. Visit Duration` <- gsub(' ', '.' ,kidzworld$`Avg. Visit Duration`)
kidzworld <- kidzworld[-c(6)]
kidzworld$url <- "kidzworld.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/kidzworld.com.csv")
df22_d1 <- df[c(1),c(1:20)]
df22_d1 <- cbind(df22_d1,kidzworld)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/kidzworld.com.csv")
df22_d2 <- df[c(2),c(1:20)]
df22_d2 <- cbind(df22_d2,kidzworld)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/kidzworld.com.csv")
df22_d3 <- df[c(1),c(1:20)]
df22_d3 <- cbind(df22_d3,kidzworld)

############################################ 23 URL ###############################################
komando_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/komando.pdf"
komando_text <- pdf_text(komando_pdf)
komando <- str_extract_all(komando_text,"\\(?[0-9,.]+\\)?")[[2]]
komando_data <- data.frame(c(komando[16],komando[20],komando[22],komando[11],komando[18],komando[19],komando[24],komando[25]))
komando <- as.data.frame(t(komando_data))
colnames(komando) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
komando$`Avg. Visit Duration` <- paste(komando$`Avg. Visit Duration`,komando$ab)
komando$`Avg. Visit Duration` <- gsub(' ', '.' ,komando$`Avg. Visit Duration`)
komando <- komando[-c(6)]
komando$url <- "komando.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/komando.com.csv")
df23_d1 <- df[c(1),c(1:20)]
df23_d1 <- cbind(df23_d1,komando)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/komando.com.csv")
df23_d2 <- df[c(2),c(1:20)]
df23_d2 <- cbind(df23_d2,komando)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/komando.com.csv")
df23_d3 <- df[c(1),c(1:20)]
df23_d3 <- cbind(df23_d3,komando)

############################################ 24 URL ###############################################
kuow_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/kuow.pdf"
kuow_text <- pdf_text(kuow_pdf)
kuow <- str_extract_all(kuow_text,"\\(?[0-9,.]+\\)?")[[2]]
kuow_data <- data.frame(c(kuow[15],kuow[19],kuow[21],kuow[10],kuow[17],kuow[18],kuow[23],kuow[24]))
kuow <- as.data.frame(t(kuow_data))
colnames(kuow) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
kuow$`Avg. Visit Duration` <- paste(kuow$`Avg. Visit Duration`,kuow$ab)
kuow$`Avg. Visit Duration` <- gsub(' ', '.' ,kuow$`Avg. Visit Duration`)
kuow <- kuow[-c(6)]
kuow$url <- "kuow.org"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/kuow.org.csv")
df24_d1 <- df[c(1),c(1:20)]
df24_d1 <- cbind(df24_d1,kuow)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/kuow.org.csv")
df24_d2 <- df[c(2),c(1:20)]
df24_d2 <- cbind(df24_d2,kuow)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/kuow.org.csv")
df24_d3 <- df[c(1),c(1:20)]
df24_d3 <- cbind(df24_d3,kuow)

############################################ 25 URL ###############################################
ncronline_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/ncronline.pdf"
ncronline_text <- pdf_text(ncronline_pdf)
ncronline <- str_extract_all(ncronline_text,"\\(?[0-9,.]+\\)?")[[2]]
ncronline_data <- data.frame(c(ncronline[10],ncronline[14],ncronline[16],ncronline[5],ncronline[12],ncronline[13],ncronline[18],ncronline[19]))
ncronline <- as.data.frame(t(ncronline_data))
colnames(ncronline) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
ncronline$`Avg. Visit Duration` <- paste(ncronline$`Avg. Visit Duration`,ncronline$ab)
ncronline$`Avg. Visit Duration` <- gsub(' ', '.' ,ncronline$`Avg. Visit Duration`)
ncronline <- ncronline[-c(6)]
ncronline$url <- "ncronline.org"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/ncronline.org.csv")
df25_d1 <- df[c(1),c(1:20)]
df25_d1 <- cbind(df25_d1,ncronline)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/ncronline.org.csv")
df25_d2 <- df[c(1),c(1:20)]
df25_d2 <- cbind(df25_d2,ncronline)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/ncronline.org.csv")
df25_d3 <- df[c(1),c(1:20)]
df25_d3 <- cbind(df25_d3,ncronline)

############################################ 26 URL ###############################################
news24_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/news24.pdf"
news24_text <- pdf_text(news24_pdf)
news24 <- str_extract_all(news24_text,"\\(?[0-9,.]+\\)?")[[2]]
news24_data <- data.frame(c(news24[18],news24[22],news24[24],news24[13],news24[20],news24[21],news24[26],news24[27]))
news24 <- as.data.frame(t(news24_data))
colnames(news24) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
news24$`Avg. Visit Duration` <- paste(news24$`Avg. Visit Duration`,news24$ab)
news24$`Avg. Visit Duration` <- gsub(' ', '.' ,news24$`Avg. Visit Duration`)
news24 <- news24[-c(6)]
news24$url <- "news24.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/news24.com.csv")
df26_d1 <- df[c(1),c(1:20)]
df26_d1 <- cbind(df26_d1,news24)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/news24.com.csv")
df26_d2 <- df[c(2),c(1:20)]
df26_d2 <- cbind(df26_d2,news24)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/news24.com.csv")
df26_d3 <- df[c(1),c(1:20)]
df26_d3 <- cbind(df26_d3,news24)

############################################ 27 URL ###############################################
ninjakiwi_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/ninjakiwi.pdf"
ninjakiwi_text <- pdf_text(ninjakiwi_pdf)
ninjakiwi <- str_extract_all(ninjakiwi_text,"\\(?[0-9,.]+\\)?")[[2]]
ninjakiwi_data <- data.frame(c(ninjakiwi[14],ninjakiwi[18],ninjakiwi[20],ninjakiwi[9],ninjakiwi[16],ninjakiwi[17],ninjakiwi[22],ninjakiwi[23]))
ninjakiwi <- as.data.frame(t(ninjakiwi_data))
colnames(ninjakiwi) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
ninjakiwi$`Avg. Visit Duration` <- paste(ninjakiwi$`Avg. Visit Duration`,ninjakiwi$ab)
ninjakiwi$`Avg. Visit Duration` <- gsub(' ', '.' ,ninjakiwi$`Avg. Visit Duration`)
ninjakiwi <- ninjakiwi[-c(6)]
ninjakiwi$url <- "ninjakiwi.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/ninjakiwi.com.csv")
df27_d1 <- df[c(1),c(1:20)]
df27_d1 <- cbind(df27_d1,ninjakiwi)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/ninjakiwi.com.csv")
df27_d2 <- df[c(2),c(1:20)]
df27_d2 <- cbind(df27_d2,ninjakiwi)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/ninjakiwi.com.csv")
df27_d3 <- df[c(1),c(1:20)]
df27_d3 <- cbind(df27_d3,ninjakiwi)

############################################ 28 URL ###############################################
noozhawk_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/noozhawk.pdf"
noozhawk_text <- pdf_text(noozhawk_pdf)
noozhawk <- str_extract_all(noozhawk_text,"\\(?[0-9,.]+\\)?")[[2]]
noozhawk_data <- data.frame(c(noozhawk[20],noozhawk[24],noozhawk[26],noozhawk[15],noozhawk[22],noozhawk[23],noozhawk[28],noozhawk[29]))
noozhawk <- as.data.frame(t(noozhawk_data))
colnames(noozhawk) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
noozhawk$`Avg. Visit Duration` <- paste(noozhawk$`Avg. Visit Duration`,noozhawk$ab)
noozhawk$`Avg. Visit Duration` <- gsub(' ', '.' ,noozhawk$`Avg. Visit Duration`)
noozhawk <- noozhawk[-c(6)]
noozhawk$url <- "noozhawk.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/noozhawk.com.csv")
df28_d1 <- df[c(1),c(1:20)]
df28_d1 <- cbind(df28_d1,noozhawk)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/noozhawk.com.csv")
df28_d2 <- df[c(2),c(1:20)]
df28_d2 <- cbind(df28_d2,noozhawk)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/noozhawk.com.csv")
df28_d3 <- df[c(1),c(1:20)]
df28_d3 <- cbind(df28_d3,noozhawk)

############################################ 29 URL ###############################################
officer_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/officer.pdf"
officer_text <- pdf_text(officer_pdf)
officer <- str_extract_all(officer_text,"\\(?[0-9,.]+\\)?")[[2]]
officer_data <- data.frame(c(officer[15],officer[19],officer[21],officer[10],officer[17],officer[18],officer[23],officer[24]))
officer <- as.data.frame(t(officer_data))
colnames(officer) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
officer$`Avg. Visit Duration` <- paste(officer$`Avg. Visit Duration`,officer$ab)
officer$`Avg. Visit Duration` <- gsub(' ', '.' ,officer$`Avg. Visit Duration`)
officer <- officer[-c(6)]
officer$url <- "officer.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/officer.com.csv")
df29_d1 <- df[c(1),c(1:20)]
df29_d1 <- cbind(df29_d1,officer)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/officer.com.csv")
df29_d2 <- df[c(2),c(1:20)]
df29_d2 <- cbind(df29_d2,officer)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/officer.com.csv")
df29_d3 <- df[c(1),c(1:20)]
df29_d3 <- cbind(df29_d3,officer)

############################################ 30 URL ###############################################
oup_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/oup.pdf"
oup_text <- pdf_text(oup_pdf)
oup <- str_extract_all(oup_text,"\\(?[0-9,.]+\\)?")[[2]]
oup_data <- data.frame(c(oup[10],oup[14],oup[16],oup[5],oup[12],oup[13],oup[18],oup[19]))
oup <- as.data.frame(t(oup_data))
colnames(oup) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
oup$`Avg. Visit Duration` <- paste(oup$`Avg. Visit Duration`,oup$ab)
oup$`Avg. Visit Duration` <- gsub(' ', '.' ,oup$`Avg. Visit Duration`)
oup <- oup[-c(6)]
oup$url <- "oup.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/oup.com.csv")
df30_d1 <- df[c(1),c(1:20)]
df30_d1 <- cbind(df30_d1,oup)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/oup.com.csv")
df30_d2 <- df[c(2),c(1:20)]
df30_d2 <- cbind(df30_d2,oup)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/oup.com.csv")
df30_d3 <- df[c(1),c(1:20)]
df30_d3 <- cbind(df30_d3,oup)

############################################ 31 URL ###############################################
tdpri_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/tdpri.pdf"
tdpri_text <- pdf_text(tdpri_pdf)
tdpri <- str_extract_all(tdpri_text,"\\(?[0-9,.]+\\)?")[[2]]
tdpri_data <- data.frame(c(tdpri[10],tdpri[14],tdpri[16],tdpri[5],tdpri[12],tdpri[13],tdpri[18],tdpri[19]))
tdpri <- as.data.frame(t(tdpri_data))
colnames(tdpri) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
tdpri$`Avg. Visit Duration` <- paste(tdpri$`Avg. Visit Duration`,ncronline$ab)
tdpri$`Avg. Visit Duration` <- gsub(' ', '.' ,tdpri$`Avg. Visit Duration`)
tdpri <- tdpri[-c(6)]
tdpri$url <- "tdpri.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/tdpri.com.csv")
df31_d1 <- df[c(1),c(1:20)]
df31_d1 <- cbind(df31_d1,tdpri)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/tdpri.com.csv")
df31_d2 <- df[c(2),c(1:20)]
df31_d2 <- cbind(df31_d2,tdpri)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/tdpri.com.csv")
df31_d3 <- df[c(1),c(1:20)]
df31_d3 <- cbind(df31_d3,tdpri)

############################################ 32 URL ###############################################
teslamotorsclub_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/teslamotorsclub.pdf"
teslamotorsclub_text <- pdf_text(teslamotorsclub_pdf)
teslamotorsclub <- str_extract_all(teslamotorsclub_text,"\\(?[0-9,.]+\\)?")[[2]]
teslamotorsclub_data <- data.frame(c(teslamotorsclub[10],teslamotorsclub[14],teslamotorsclub[16],teslamotorsclub[5],teslamotorsclub[12],teslamotorsclub[13],teslamotorsclub[18],teslamotorsclub[19]))
teslamotorsclub <- as.data.frame(t(teslamotorsclub_data))
colnames(teslamotorsclub) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
teslamotorsclub$`Avg. Visit Duration` <- paste(teslamotorsclub$`Avg. Visit Duration`,teslamotorsclub$ab)
teslamotorsclub$`Avg. Visit Duration` <- gsub(' ', '.' ,teslamotorsclub$`Avg. Visit Duration`)
teslamotorsclub <- teslamotorsclub[-c(6)]
teslamotorsclub$url <- "teslamotorsclub.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/teslamotorsclub.com.csv")
df32_d1 <- df[c(1),c(1:20)]
df32_d1 <- cbind(df32_d1,teslamotorsclub)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/teslamotorsclub.com.csv")
df32_d2 <- df[c(1),c(1:20)]
df32_d2 <- cbind(df32_d2,teslamotorsclub)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/teslamotorsclub.com.csv")
df32_d3 <- df[c(1),c(1:20)]
df32_d3 <- cbind(df32_d3,teslamotorsclub)

############################################ 33 URL ###############################################
texasbar_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/texasbar.pdf"
texasbar_text <- pdf_text(texasbar_pdf)
texasbar <- str_extract_all(texasbar_text,"\\(?[0-9,.]+\\)?")[[2]]
texasbar_data <- data.frame(c(texasbar[10],texasbar[14],texasbar[16],texasbar[5],texasbar[12],texasbar[13],texasbar[18],texasbar[19]))
texasbar <- as.data.frame(t(texasbar_data))
colnames(texasbar) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
texasbar$`Avg. Visit Duration` <- paste(texasbar$`Avg. Visit Duration`,texasbar$ab)
texasbar$`Avg. Visit Duration` <- gsub(' ', '.' ,texasbar$`Avg. Visit Duration`)
texasbar <- texasbar[-c(6)]
texasbar$url <- "texasbar.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/texasbar.com.csv")
df33_d1 <- df[c(1),c(1:20)]
df33_d1 <- cbind(df33_d1,texasbar)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/texasbar.com.csv")
df33_d2 <- df[c(2),c(1:20)]
df33_d2 <- cbind(df33_d2,texasbar)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/texasbar.com.csv")
df33_d3 <- df[c(1),c(1:20)]
df33_d3 <- cbind(df33_d3,texasbar)

############################################ 34 URL ###############################################
theahl_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/theahl.pdf"
theahl_text <- pdf_text(theahl_pdf)
theahl <- str_extract_all(theahl_text,"\\(?[0-9,.]+\\)?")[[2]]
theahl_data <- data.frame(c(theahl[10],theahl[14],theahl[16],theahl[5],theahl[12],theahl[13],theahl[18],theahl[19]))
theahl <- as.data.frame(t(theahl_data))
colnames(theahl) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
theahl$`Avg. Visit Duration` <- paste(theahl$`Avg. Visit Duration`,theahl$ab)
theahl$`Avg. Visit Duration` <- gsub(' ', '.' ,theahl$`Avg. Visit Duration`)
theahl <- theahl[-c(6)]
theahl$url <- "theahl.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/theahl.com.csv")
df34_d1 <- df[c(1),c(1:20)]
df34_d1 <- cbind(df34_d1,theahl)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/theahl.com.csv")
df34_d2 <- df[c(1),c(1:20)]
df34_d2 <- cbind(df34_d2,theahl)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/theahl.com.csv")
df34_d3 <- df[c(1),c(1:20)]
df34_d3 <- cbind(df34_d3,theahl)

############################################ 35 URL ###############################################
thegameraccess_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/thegameraccess.pdf"
thegameraccess_text <- pdf_text(thegameraccess_pdf)
thegameraccess <- str_extract_all(thegameraccess_text,"\\(?[0-9,.]+\\)?")[[2]]
thegameraccess_data <- data.frame(c(thegameraccess[10],thegameraccess[14],thegameraccess[16],thegameraccess[5],thegameraccess[12],thegameraccess[13],thegameraccess[18],thegameraccess[19]))
thegameraccess <- as.data.frame(t(thegameraccess_data))
colnames(thegameraccess) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
thegameraccess$`Avg. Visit Duration` <- paste(thegameraccess$`Avg. Visit Duration`,thegameraccess$ab)
thegameraccess$`Avg. Visit Duration` <- gsub(' ', '.' ,thegameraccess$`Avg. Visit Duration`)
thegameraccess <- thegameraccess[-c(6)]
thegameraccess$url <- "thegameraccess.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thegameraccess.com.csv")
df35_d1 <- df[c(1),c(1:20)]
df35_d1 <- cbind(df35_d1,thegameraccess)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thegameraccess.com.csv")
df35_d2 <- df[c(2),c(1:20)]
df35_d2 <- cbind(df35_d2,thegameraccess)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thegameraccess.com.csv")
df35_d3 <- df[c(1),c(1:20)]
df35_d3 <- cbind(df35_d3,thegameraccess)

############################################ 36 URL ###############################################
thegearpage_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/thegearpage.pdf"
thegearpage_text <- pdf_text(thegearpage_pdf)
thegearpage <- str_extract_all(thegearpage_text,"\\(?[0-9,.]+\\)?")[[2]]
thegearpage_data <- data.frame(c(thegearpage[10],thegearpage[14],thegearpage[16],thegearpage[5],thegearpage[12],thegearpage[13],thegearpage[18],thegearpage[19]))
thegearpage <- as.data.frame(t(thegearpage_data))
colnames(thegearpage) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
thegearpage$`Avg. Visit Duration` <- paste(thegearpage$`Avg. Visit Duration`,thegearpage$ab)
thegearpage$`Avg. Visit Duration` <- gsub(' ', '.' ,thegearpage$`Avg. Visit Duration`)
thegearpage <- thegearpage[-c(6)]
thegearpage$url <- "thegearpage.net"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thegearpage.net.csv")
df36_d1 <- df[c(1),c(1:20)]
df36_d1 <- cbind(df36_d1,thegearpage)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thegearpage.net.csv")
df36_d2 <- df[c(1),c(1:20)]
df36_d2 <- cbind(df36_d2,thegearpage)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thegearpage.net.csv")
df36_d3 <- df[c(1),c(1:20)]
df36_d3 <- cbind(df36_d3,thegearpage)

############################################ 37 URL ###############################################
thehairstyler_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/thehairstyler.pdf"
thehairstyler_text <- pdf_text(thehairstyler_pdf)
thehairstyler <- str_extract_all(thehairstyler_text,"\\(?[0-9,.]+\\)?")[[2]]
thehairstyler_data <- data.frame(c(thehairstyler[19],thehairstyler[23],thehairstyler[25],thehairstyler[14],thehairstyler[21],thehairstyler[22],thehairstyler[27],thehairstyler[28]))
thehairstyler <- as.data.frame(t(thehairstyler_data))
colnames(thehairstyler) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
thehairstyler$`Avg. Visit Duration` <- paste(thehairstyler$`Avg. Visit Duration`,thehairstyler$ab)
thehairstyler$`Avg. Visit Duration` <- gsub(' ', '.' ,thehairstyler$`Avg. Visit Duration`)
thehairstyler <- thehairstyler[-c(6)]
thehairstyler$url <- "thehairstyler.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thehairstyler.com.csv")
df37_d1 <- df[c(1),c(1:20)]
df37_d1 <- cbind(df37_d1,thehairstyler)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thehairstyler.com.csv")
df37_d2 <- df[c(1),c(1:20)]
df37_d2 <- cbind(df37_d2,thehairstyler)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thehairstyler.com.csv")
df37_d3 <- df[c(1),c(1:20)]
df37_d3 <- cbind(df37_d3,thehairstyler)

############################################ 38 URL ###############################################
thejournal_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/thejournal.pdf"
thejournal_text <- pdf_text(thejournal_pdf)
thejournal <- str_extract_all(thejournal_text,"\\(?[0-9,.]+\\)?")[[2]]
thejournal_data <- data.frame(c(thejournal[12],thejournal[16],thejournal[18],thejournal[7],thejournal[14],thejournal[15],thejournal[20],thejournal[21]))
thejournal <- as.data.frame(t(thegearpage_data))
colnames(thejournal) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
thejournal$`Avg. Visit Duration` <- paste(thejournal$`Avg. Visit Duration`,thejournal$ab)
thejournal$`Avg. Visit Duration` <- gsub(' ', '.' ,thejournal$`Avg. Visit Duration`)
thejournal <- thejournal[-c(6)]
thejournal$url <- "thejournal.ie"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thejournal.ie.csv")
df38_d1 <- df[c(1),c(1:20)]
df38_d1 <- cbind(df38_d1,thejournal)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thejournal.ie.csv")
df38_d2 <- df[c(1),c(1:20)]
df38_d2 <- cbind(df38_d2,thejournal)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thejournal.ie.csv")
df38_d3 <- df[c(1),c(1:20)]
df38_d3 <- cbind(df38_d3,thejournal)

############################################ 39 URL ###############################################
themeparkinsider_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/themeparkinsider.pdf"
themeparkinsider_text <- pdf_text(themeparkinsider_pdf)
themeparkinsider <- str_extract_all(themeparkinsider_text,"\\(?[0-9,.]+\\)?")[[2]]
themeparkinsider_data <- data.frame(c(themeparkinsider[10],themeparkinsider[14],themeparkinsider[16],themeparkinsider[5],themeparkinsider[12],themeparkinsider[13],themeparkinsider[18],themeparkinsider[19]))
themeparkinsider <- as.data.frame(t(themeparkinsider_data))
colnames(themeparkinsider) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
themeparkinsider$`Avg. Visit Duration` <- paste(themeparkinsider$`Avg. Visit Duration`,themeparkinsider$ab)
themeparkinsider$`Avg. Visit Duration` <- gsub(' ', '.' ,themeparkinsider$`Avg. Visit Duration`)
themeparkinsider <- themeparkinsider[-c(6)]
themeparkinsider$url <- "themeparkinsider.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/themeparkinsider.com.csv")
df39_d1 <- df[c(1),c(1:20)]
df39_d1 <- cbind(df39_d1,themeparkinsider)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/themeparkinsider.com.csv")
df39_d2 <- df[c(1),c(1:20)]
df39_d2 <- cbind(df39_d2,themeparkinsider)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/themeparkinsider.com.csv")
df39_d3 <- df[c(1),c(1:20)]
df39_d3 <- cbind(df39_d3,themeparkinsider)

############################################ 40 URL ###############################################
thesandtrap_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/thesandtrap.pdf"
thesandtrap_text <- pdf_text(thesandtrap_pdf)
thesandtrap <- str_extract_all(thesandtrap_text,"\\(?[0-9,.]+\\)?")[[2]]
thesandtrap_data <- data.frame(c(thesandtrap[12],thesandtrap[16],thesandtrap[18],thesandtrap[7],thesandtrap[14],thesandtrap[15],thesandtrap[20],thesandtrap[21]))
thesandtrap <- as.data.frame(t(thesandtrap_data))
colnames(thesandtrap) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
thesandtrap$`Avg. Visit Duration` <- paste(thesandtrap$`Avg. Visit Duration`,thesandtrap$ab)
thesandtrap$`Avg. Visit Duration` <- gsub(' ', '.' ,thesandtrap$`Avg. Visit Duration`)
thesandtrap <- thesandtrap[-c(6)]
thesandtrap$url <- "thesandtrap.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thesandtrap.com.csv")
df40_d1 <- df[c(1),c(1:20)]
df40_d1 <- cbind(df40_d1,thesandtrap)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thesandtrap.com.csv")
df40_d2 <- df[c(1),c(1:20)]
df40_d2 <- cbind(df40_d2,thesandtrap)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/thesandtrap.com.csv")
df40_d3 <- df[c(1),c(1:20)]
df40_d3 <- cbind(df40_d3,thesandtrap)

############################################ 41 URL ###############################################
theundercoverrecruiter_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/theundercoverrecruiter.pdf"
theundercoverrecruiter_text <- pdf_text(theundercoverrecruiter_pdf)
theundercoverrecruiter <- str_extract_all(theundercoverrecruiter_text,"\\(?[0-9,.]+\\)?")[[2]]
theundercoverrecruiter_data <- data.frame(c(theundercoverrecruiter[11],theundercoverrecruiter[15],theundercoverrecruiter[17],theundercoverrecruiter[6],theundercoverrecruiter[13],theundercoverrecruiter[14],theundercoverrecruiter[19],theundercoverrecruiter[20]))
theundercoverrecruiter <- as.data.frame(t(theundercoverrecruiter_data))
colnames(theundercoverrecruiter) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
theundercoverrecruiter$`Avg. Visit Duration` <- paste(theundercoverrecruiter$`Avg. Visit Duration`,theundercoverrecruiter$ab)
theundercoverrecruiter$`Avg. Visit Duration` <- gsub(' ', '.' ,theundercoverrecruiter$`Avg. Visit Duration`)
theundercoverrecruiter <- theundercoverrecruiter[-c(6)]
theundercoverrecruiter$url <- "theundercoverrecruiter.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/theundercoverrecruiter.com.csv")
df41_d1 <- df[c(1),c(1:20)]
df41_d1 <- cbind(df41_d1,theundercoverrecruiter)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/theundercoverrecruiter.com.csv")
df41_d2 <- df[c(1),c(1:20)]
df41_d2 <- cbind(df41_d2,theundercoverrecruiter)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/theundercoverrecruiter.com.csv")
df41_d3 <- df[c(1),c(1:20)]
df41_d3 <- cbind(df41_d3,theundercoverrecruiter)


############################################ 42 URL ###############################################
theybf_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/theybf.pdf"
theybf_text <- pdf_text(theybf_pdf)
theybf <- str_extract_all(theybf_text,"\\(?[0-9,.]+\\)?")[[2]]
theybf_data <- data.frame(c(theybf[10],theybf[14],theybf[16],theybf[5],theybf[12],theybf[13],theybf[18],theybf[19]))
theybf <- as.data.frame(t(theybf_data))
colnames(theybf) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
theybf$`Avg. Visit Duration` <- paste(theybf$`Avg. Visit Duration`,theybf$ab)
theybf$`Avg. Visit Duration` <- gsub(' ', '.' ,theybf$`Avg. Visit Duration`)
theybf <- theybf[-c(6)]
theybf$url <- "theybf.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/theybf.com.csv")
df42_d1 <- df[c(1),c(1:20)]
df42_d1 <- cbind(df42_d1,theybf)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/theybf.com.csv")
df42_d2 <- df[c(1),c(1:20)]
df42_d2 <- cbind(df42_d2,theybf)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/theybf.com.csv")
df42_d3 <- df[c(1),c(1:20)]
df42_d3 <- cbind(df42_d3,theybf)

############################################ 43 URL ###############################################
tinybuddha_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/tinybuddha.pdf"
tinybuddha_text <- pdf_text(tinybuddha_pdf)
tinybuddha <- str_extract_all(tinybuddha_text,"\\(?[0-9,.]+\\)?")[[2]]
tinybuddha_data <- data.frame(c(tinybuddha[13],tinybuddha[17],tinybuddha[19],tinybuddha[8],tinybuddha[15],tinybuddha[16],tinybuddha[21],tinybuddha[22]))
tinybuddha <- as.data.frame(t(tinybuddha_data))
colnames(tinybuddha) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
tinybuddha$`Avg. Visit Duration` <- paste(tinybuddha$`Avg. Visit Duration`,tinybuddha$ab)
tinybuddha$`Avg. Visit Duration` <- gsub(' ', '.' ,tinybuddha$`Avg. Visit Duration`)
tinybuddha <- tinybuddha[-c(6)]
tinybuddha$url <- "tinybuddha.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/tinybuddha.com.csv")
df43_d1 <- df[c(1),c(1:20)]
df43_d1 <- cbind(df43_d1,tinybuddha)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/tinybuddha.com.csv")
df43_d2 <- df[c(2),c(1:20)]
df43_d2 <- cbind(df43_d2,tinybuddha)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/tinybuddha.com.csv")
df43_d3 <- df[c(1),c(1:20)]
df43_d3 <- cbind(df43_d3,tinybuddha)

############################################ 44 URL ###############################################
todayshomeowner_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/todayshomeowner.pdf"
todayshomeowner_text <- pdf_text(todayshomeowner_pdf)
todayshomeowner <- str_extract_all(todayshomeowner_text,"\\(?[0-9,.]+\\)?")[[2]]
todayshomeowner_data <- data.frame(c(todayshomeowner[12],todayshomeowner[16],todayshomeowner[18],todayshomeowner[7],todayshomeowner[14],todayshomeowner[15],todayshomeowner[20],todayshomeowner[21]))
todayshomeowner <- as.data.frame(t(todayshomeowner_data))
colnames(todayshomeowner) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
todayshomeowner$`Avg. Visit Duration` <- paste(todayshomeowner$`Avg. Visit Duration`,todayshomeowner$ab)
todayshomeowner$`Avg. Visit Duration` <- gsub(' ', '.' ,todayshomeowner$`Avg. Visit Duration`)
todayshomeowner <- todayshomeowner[-c(6)]
todayshomeowner$url <- "todayshomeowner.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/todayshomeowner.com.csv")
df44_d1 <- df[c(1),c(1:20)]
df44_d1 <- cbind(df44_d1,todayshomeowner)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/todayshomeowner.com.csv")
df44_d2 <- df[c(1),c(1:20)]
df44_d2 <- cbind(df44_d2,todayshomeowner)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/todayshomeowner.com.csv")
df44_d3 <- df[c(1),c(1:20)]
df44_d3 <- cbind(df44_d3,todayshomeowner)

############################################ 45 URL ###############################################
torquenews_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/torquenews.pdf"
torquenews_text <- pdf_text(torquenews_pdf)
torquenews <- str_extract_all(torquenews_text,"\\(?[0-9,.]+\\)?")[[2]]
torquenews_data <- data.frame(c(torquenews[21],torquenews[25],torquenews[27],torquenews[16],torquenews[23],torquenews[24],torquenews[29],torquenews[30]))
torquenews <- as.data.frame(t(torquenews_data))
colnames(torquenews) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
torquenews$`Avg. Visit Duration` <- paste(torquenews$`Avg. Visit Duration`,torquenews$ab)
torquenews$`Avg. Visit Duration` <- gsub(' ', '.' ,torquenews$`Avg. Visit Duration`)
torquenews <- torquenews[-c(6)]
torquenews$url <- "torquenews.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/torquenews.com.csv")
df45_d1 <- df[c(1),c(1:20)]
df45_d1 <- cbind(df45_d1,torquenews)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/torquenews.com.csv")
df45_d2 <- df[c(1),c(1:20)]
df45_d2 <- cbind(df45_d2,torquenews)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/torquenews.com.csv")
df45_d3 <- df[c(1),c(1:20)]
df45_d3 <- cbind(df45_d3,torquenews)

############################################ 46 URL ###############################################
trailspace_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/trailspace.pdf"
trailspace_text <- pdf_text(trailspace_pdf)
trailspace <- str_extract_all(trailspace_text,"\\(?[0-9,.]+\\)?")[[2]]
trailspace_data <- data.frame(c(trailspace[18],trailspace[22],trailspace[24],trailspace[13],trailspace[20],trailspace[21],trailspace[26],trailspace[27]))
trailspace <- as.data.frame(t(trailspace_data))
colnames(trailspace) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
trailspace$`Avg. Visit Duration` <- paste(trailspace$`Avg. Visit Duration`,trailspace$ab)
trailspace$`Avg. Visit Duration` <- gsub(' ', '.' ,trailspace$`Avg. Visit Duration`)
trailspace <- trailspace[-c(6)]
trailspace$url <- "trailspace.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/trailspace.com.csv")
df46_d1 <- df[c(1),c(1:20)]
df46_d1 <- cbind(df46_d1,trailspace)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/trailspace.com.csv")
df46_d2 <- df[c(1),c(1:20)]
df46_d2 <- cbind(df46_d2,trailspace)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/trailspace.com.csv")
df46_d3 <- df[c(1),c(1:20)]
df46_d3 <- cbind(df46_d3,trailspace)

############################################ 47 URL ###############################################
trust_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/trust.pdf"
trust_text <- pdf_text(trust_pdf)
trust <- str_extract_all(trust_text,"\\(?[0-9,.]+\\)?")[[2]]
trust_data <- data.frame(c(trust[12],trust[16],trust[18],trust[7],trust[14],trust[15],trust[20],trust[21]))
trust <- as.data.frame(t(trust_data))
colnames(trust) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
trust$`Avg. Visit Duration` <- paste(trust$`Avg. Visit Duration`,trust$ab)
trust$`Avg. Visit Duration` <- gsub(' ', '.' ,trust$`Avg. Visit Duration`)
trust <- trust[-c(6)]
trust$url <- "trust.org"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/trust.org.csv")
df47_d1 <- df[c(1),c(1:20)]
df47_d1 <- cbind(df47_d1,trust)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/trust.org.csv")
df47_d2 <- df[c(1),c(1:20)]
df47_d2 <- cbind(df47_d2,trust)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/trust.org.csv")
df47_d3 <- df[c(1),c(1:20)]
df47_d3 <- cbind(df47_d3,trust)

############################################ 48 URL ###############################################
truthdig_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/truthdig.pdf"
truthdig_text <- pdf_text(truthdig_pdf)
truthdig <- str_extract_all(truthdig_text,"\\(?[0-9,.]+\\)?")[[2]]
truthdig_data <- data.frame(c(truthdig[10],truthdig[14],truthdig[16],truthdig[5],truthdig[12],truthdig[13],truthdig[18],truthdig[19]))
truthdig <- as.data.frame(t(truthdig_data))
colnames(truthdig) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
truthdig$`Avg. Visit Duration` <- paste(truthdig$`Avg. Visit Duration`,truthdig$ab)
truthdig$`Avg. Visit Duration` <- gsub(' ', '.' ,truthdig$`Avg. Visit Duration`)
truthdig <- truthdig[-c(6)]
truthdig$url <- "truthdig.org"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/truthdig.org.csv")
df48_d1 <- df[c(1),c(1:20)]
df48_d1 <- cbind(df48_d1,truthdig)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/truthdig.org.csv")
df48_d2 <- df[c(1),c(1:20)]
df48_d2 <- cbind(df48_d2,truthdig)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/truthdig.org.csv")
df48_d3 <- df[c(1),c(1:20)]
df48_d3 <- cbind(df48_d3,truthdig)

############################################ 49 URL ###############################################
tvpassport_pdf <- "D:/SEM 3/Datasets/GTmatrix/medium/medium_pdf/tvpassport.pdf"
tvpassport_text <- pdf_text(tvpassport_pdf)
tvpassport <- str_extract_all(tvpassport_text,"\\(?[0-9,.]+\\)?")[[2]]
tvpassport_data <- data.frame(c(tvpassport[15],tvpassport[19],tvpassport[21],tvpassport[10],tvpassport[17],tvpassport[18],tvpassport[23],tvpassport[24]))
tvpassport <- as.data.frame(t(tvpassport_data))
colnames(tvpassport) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
tvpassport$`Avg. Visit Duration` <- paste(tvpassport$`Avg. Visit Duration`,tvpassport$ab)
tvpassport$`Avg. Visit Duration` <- gsub(' ', '.' ,tvpassport$`Avg. Visit Duration`)
tvpassport <- tvpassport[-c(6)]
tvpassport$url <- "tvpassport.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/tvpassport.com.csv")
df49_d1 <- df[c(1),c(1:20)]
df49_d1 <- cbind(df49_d1,tvpassport)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/tvpassport.com.csv")
df49_d2 <- df[c(2),c(1:20)]
df49_d2 <- cbind(df49_d2,tvpassport)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/medium/medium_csv/tvpassport.com.csv")
df49_d3 <- df[c(1),c(1:20)]
df49_d3 <- cbind(df49_d3,tvpassport)

df_d1 <- rbind.data.frame(df1_d1,df2_d1,df3_d1,df4_d1,df5_d1,df6_d1,df7_d1,df8_d1,df9_d1,df10_d1,
                          df11_d1,df12_d1,df13_d1,df14_d1,df15_d1,df16_d1,df17_d1,df18_d1,df19_d1,df20_d1,
                          df21_d1,df22_d1,df23_d1,df24_d1,df25_d1,df26_d1,df27_d1,df28_d1,df29_d1,df30_d1,
                          df31_d1,df32_d1,df33_d3,df34_d1,df35_d1,df36_d1,df37_d1,df38_d1,df39_d1,df40_d1,
                          df41_d1,df42_d1,df43_d1,df44_d1,df45_d1,df46_d1,df47_d1,df48_d1,df49_d1)
df_d2 <- rbind.data.frame(df1_d2,df2_d2,df3_d2,df4_d2,df5_d2,df6_d2,df7_d2,df8_d2,df9_d2,df10_d2,
                          df11_d2,df12_d2,df13_d2,df14_d2,df15_d2,df16_d2,df17_d2,df18_d2,df19_d2,df20_d2,
                          df21_d2,df22_d2,df23_d2,df24_d2,df25_d2,df26_d2,df27_d2,df28_d2,df29_d2,df30_d2,
                          df31_d2,df32_d2,df33_d3,df34_d2,df35_d2,df36_d2,df37_d2,df38_d2,df39_d2,df40_d2,
                          df41_d2,df42_d2,df43_d2,df44_d2,df45_d2,df46_d2,df47_d2,df48_d2,df49_d2)
df_d3 <- rbind.data.frame(df1_d3,df2_d3,df3_d3,df4_d3,df5_d3,df6_d3,df7_d3,df8_d3,df9_d3,df10_d3,
                          df11_d3,df12_d3,df13_d3,df14_d3,df15_d3,df16_d3,df17_d3,df18_d3,df19_d3,df20_d3,
                          df21_d3,df22_d3,df23_d3,df24_d3,df25_d3,df26_d3,df27_d3,df28_d3,df29_d3,df30_d3,
                          df31_d3,df32_d3,df33_d3,df34_d3,df35_d3,df36_d3,df37_d3,df38_d3,df39_d3,df40_d3,
                          df41_d3,df42_d3,df43_d3,df44_d3,df45_d3,df46_d3,df47_d3,df48_d3,df49_d3)
setwd("D:/SEM 3/Datasets/GTmatrix/medium");
write.csv(df_d1, file = "Data1.csv",row.names=FALSE)
write.csv(df_d2, file = "Data2.csv",row.names=FALSE)
write.csv(df_d3, file = "Data3.csv",row.names=FALSE)
