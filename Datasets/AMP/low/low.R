library(pdftools)
library(stringr)
library(dplyr)
library(corrplot)
############################################ 1 URL ###############################################
bachtrack_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/bachtrack.pdf"
bachtrack_text <- pdf_text(bachtrack_pdf)
bachtrack <- str_extract_all(bachtrack_text,"\\(?[0-9,.]+\\)?")[[2]]
bachtrack_data <- data.frame(c(bachtrack[17],bachtrack[21],bachtrack[23],bachtrack[12],bachtrack[19],bachtrack[20],bachtrack[25],bachtrack[26]))
bachtrack <- as.data.frame(t(bachtrack_data))
colnames(bachtrack) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
bachtrack$`Avg. Visit Duration` <- paste(bachtrack$`Avg. Visit Duration`,bachtrack$ab)
bachtrack$`Avg. Visit Duration` <- gsub(' ', '.' ,bachtrack$`Avg. Visit Duration`)
bachtrack <- bachtrack[-c(6)]
bachtrack$url <- "bachtrack.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bachtrack.csv")
df1_d1 <- df[c(1),c(1:20)]
df1_d1 <- cbind(df1_d1,bachtrack)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bachtrack.csv")
df1_d2 <- df[c(2),c(1:20)]
df1_d2 <- cbind(df1_d2,bachtrack)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bachtrack.csv")
df1_d3 <- df[c(1),c(1:20)]
df1_d3 <- cbind(df1_d3,bachtrack)

############################################ 2 URL ###############################################
badcredit_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/badcredit.pdf"
badcredit_text <- pdf_text(badcredit_pdf)
badcredit <- str_extract_all(badcredit_text,"\\(?[0-9,.]+\\)?")[[2]]
badcredit_data <- data.frame(c(badcredit[16],badcredit[20],badcredit[22],badcredit[11],badcredit[18],badcredit[19],badcredit[24],badcredit[25]))
badcredit <- as.data.frame(t(badcredit_data))
colnames(badcredit) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
badcredit$`Avg. Visit Duration` <- paste(badcredit$`Avg. Visit Duration`,badcredit$ab)
badcredit$`Avg. Visit Duration` <- gsub(' ', '.' ,badcredit$`Avg. Visit Duration`)
badcredit <- badcredit[-c(6)]
badcredit$url <- "badcredit.org"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/badcredit.csv")
df2_d1 <- df[c(1),c(1:20)]
df2_d1 <- cbind(df2_d1,badcredit)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/badcredit.csv")
df2_d2 <- df[c(2),c(1:20)]
df2_d2 <- cbind(df2_d2,badcredit)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/badcredit.csv")
df2_d3 <- df[c(1),c(1:20)]
df2_d3 <- cbind(df2_d3,badcredit)

############################################ 3 URL ###############################################
bibletalk_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/bibletalk.pdf"
bibletalk_text <- pdf_text(bibletalk_pdf)
bibletalk <- str_extract_all(bibletalk_text,"\\(?[0-9,.]+\\)?")[[2]]
bibletalk_data <- data.frame(c(bibletalk[13],bibletalk[17],bibletalk[19],bibletalk[8],bibletalk[15],bibletalk[16],bibletalk[21],bibletalk[22]))
bibletalk <- as.data.frame(t(bibletalk_data))
colnames(bibletalk) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
bibletalk$`Avg. Visit Duration` <- paste(bibletalk$`Avg. Visit Duration`,bibletalk$ab)
bibletalk$`Avg. Visit Duration` <- gsub(' ', '.' ,bibletalk$`Avg. Visit Duration`)
bibletalk <- bibletalk[-c(6)]
bibletalk$url <- "bibletalk.tv"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bibletalk.csv")
df3_d1 <- df[c(1),c(1:20)]
df3_d1 <- cbind(df3_d1,bibletalk)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bibletalk.csv")
df3_d2 <- df[c(2),c(1:20)]
df3_d2 <- cbind(df3_d2,bibletalk)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bibletalk.csv")
df3_d3 <- df[c(1),c(1:20)]
df3_d3 <- cbind(df3_d3,bibletalk)

############################################ 4 URL ###############################################
bigsquidrc_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/bigsquidrc.pdf"
bigsquidrc_text <- pdf_text(bigsquidrc_pdf)
bigsquidrc <- str_extract_all(bigsquidrc_text,"\\(?[0-9,.]+\\)?")[[2]]
bigsquidrc_data <- data.frame(c(bigsquidrc[15],bigsquidrc[19],bigsquidrc[21],bigsquidrc[10],bigsquidrc[17],bigsquidrc[18],bigsquidrc[23],bigsquidrc[24]))
bigsquidrc <- as.data.frame(t(bigsquidrc_data))
colnames(bigsquidrc) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
bigsquidrc$`Avg. Visit Duration` <- paste(bigsquidrc$`Avg. Visit Duration`,bigsquidrc$ab)
bigsquidrc$`Avg. Visit Duration` <- gsub(' ', '.' ,bigsquidrc$`Avg. Visit Duration`)
bigsquidrc <- bigsquidrc[-c(6)]
bigsquidrc$url <- "bigsquidrc.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bigsquidrc.csv")
df4_d1 <- df[c(1),c(1:20)]
df4_d1 <- cbind(df4_d1,bigsquidrc)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bigsquidrc.csv")
df4_d2 <- df[c(2),c(1:20)]
df4_d2 <- cbind(df4_d2,bigsquidrc)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bigsquidrc.csv")
df4_d3 <- df[c(1),c(1:20)]
df4_d3 <- cbind(df4_d3,bigsquidrc)

############################################ 5 URL ###############################################
bitcoincharts_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/bitcoincharts.pdf"
bitcoincharts_text <- pdf_text(bitcoincharts_pdf)
bitcoincharts <- str_extract_all(bitcoincharts_text,"\\(?[0-9,.]+\\)?")[[2]]
bitcoincharts_data <- data.frame(c(bitcoincharts[14],bitcoincharts[18],bitcoincharts[20],bitcoincharts[9],bitcoincharts[16],bitcoincharts[17],bitcoincharts[22],bitcoincharts[23]))
bitcoincharts <- as.data.frame(t(bitcoincharts_data))
colnames(bitcoincharts) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
bitcoincharts$`Avg. Visit Duration` <- paste(bitcoincharts$`Avg. Visit Duration`,bitcoincharts$ab)
bitcoincharts$`Avg. Visit Duration` <- gsub(' ', '.' ,bitcoincharts$`Avg. Visit Duration`)
bitcoincharts <- bitcoincharts[-c(6)]
bitcoincharts$url <- "bitcoincharts.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bitcoincharts.csv")
df5_d1 <- df[c(1),c(1:20)]
df5_d1 <- cbind(df5_d1,bitcoincharts)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bitcoincharts.csv")
df5_d2 <- df[c(2),c(1:20)]
df5_d2 <- cbind(df5_d2,bitcoincharts)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bitcoincharts.csv")
df5_d3 <- df[c(1),c(1:20)]
df5_d3 <- cbind(df5_d3,bitcoincharts)

############################################ 6 URL ###############################################
brevardtimes_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/brevardtimes.pdf"
brevardtimes_text <- pdf_text(brevardtimes_pdf)
brevardtimes <- str_extract_all(brevardtimes_text,"\\(?[0-9,.]+\\)?")[[2]]
brevardtimes_data <- data.frame(c(brevardtimes[12],brevardtimes[16],brevardtimes[18],brevardtimes[7],brevardtimes[14],brevardtimes[15],brevardtimes[20],brevardtimes[21]))
brevardtimes <- as.data.frame(t(brevardtimes_data))
colnames(brevardtimes) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
brevardtimes$`Avg. Visit Duration` <- paste(brevardtimes$`Avg. Visit Duration`,brevardtimes$ab)
brevardtimes$`Avg. Visit Duration` <- gsub(' ', '.' ,brevardtimes$`Avg. Visit Duration`)
brevardtimes <- brevardtimes[-c(6)]
brevardtimes$url <- "brevardtimes.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/brevardtimes.csv")
df6_d1 <- df[c(1),c(1:20)]
df6_d1 <- cbind(df6_d1,brevardtimes)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/brevardtimes.csv")
df6_d2 <- df[c(1),c(1:20)]
df6_d2 <- cbind(df6_d2,brevardtimes)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/brevardtimes.csv")
df6_d3 <- df[c(1),c(1:20)]
df6_d3 <- cbind(df6_d3,brevardtimes)

############################################ 7 URL ###############################################
buildeazy_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/buildeazy.pdf"
buildeazy_text <- pdf_text(buildeazy_pdf)
buildeazy <- str_extract_all(buildeazy_text,"\\(?[0-9,.]+\\)?")[[2]]
buildeazy_data <- data.frame(c(buildeazy[11],buildeazy[15],buildeazy[17],buildeazy[6],buildeazy[13],buildeazy[14],buildeazy[19],buildeazy[20]))
buildeazy <- as.data.frame(t(buildeazy_data))
colnames(buildeazy) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
buildeazy$`Avg. Visit Duration` <- paste(buildeazy$`Avg. Visit Duration`,buildeazy$ab)
buildeazy$`Avg. Visit Duration` <- gsub(' ', '.' ,buildeazy$`Avg. Visit Duration`)
buildeazy <- buildeazy[-c(6)]
buildeazy$url <- "buildeazy.org"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/buildeazy.csv")
df7_d1 <- df[c(1),c(1:20)]
df7_d1 <- cbind(df7_d1,buildeazy)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/buildeazy.csv")
df7_d2 <- df[c(1),c(1:20)]
df7_d2 <- cbind(df7_d2,buildeazy)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/buildeazy.csv")
df7_d3 <- df[c(1),c(1:20)]
df7_d3 <- cbind(df7_d3,buildeazy)

############################################ 8 URL ###############################################
bycommonconsent_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/bycommonconsent.pdf"
bycommonconsent_text <- pdf_text(bycommonconsent_pdf)
bycommonconsent <- str_extract_all(bycommonconsent_text,"\\(?[0-9,.]+\\)?")[[2]]
bycommonconsent_data <- data.frame(c(bycommonconsent[11],bycommonconsent[15],bycommonconsent[17],bycommonconsent[6],bycommonconsent[13],bycommonconsent[14],bycommonconsent[19],bycommonconsent[20]))
bycommonconsent <- as.data.frame(t(bycommonconsent_data))
colnames(bycommonconsent) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
bycommonconsent$`Avg. Visit Duration` <- paste(bycommonconsent$`Avg. Visit Duration`,bycommonconsent$ab)
bycommonconsent$`Avg. Visit Duration` <- gsub(' ', '.' ,bycommonconsent$`Avg. Visit Duration`)
bycommonconsent <- bycommonconsent[-c(6)]
bycommonconsent$url <- "bycommonconsent.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bycommonconsent.csv")
df8_d1 <- df[c(1),c(1:20)]
df8_d1 <- cbind(df8_d1,bycommonconsent)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bycommonconsent.csv")
df8_d2 <- df[c(2),c(1:20)]
df8_d2 <- cbind(df8_d2,bycommonconsent)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/bycommonconsent.csv")
df8_d3 <- df[c(1),c(1:20)]
df8_d3 <- cbind(df8_d3,bycommonconsent)

############################################ 9 URL ###############################################
camelliabrand_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/camelliabrand.pdf"
camelliabrand_text <- pdf_text(camelliabrand_pdf)
camelliabrand <- str_extract_all(camelliabrand_text,"\\(?[0-9,.]+\\)?")[[2]]
camelliabrand_data <- data.frame(c(camelliabrand[16],camelliabrand[20],camelliabrand[22],camelliabrand[11],camelliabrand[18],camelliabrand[19],camelliabrand[24],camelliabrand[25]))
camelliabrand <- as.data.frame(t(camelliabrand_data))
colnames(camelliabrand) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
camelliabrand$`Avg. Visit Duration` <- paste(camelliabrand$`Avg. Visit Duration`,camelliabrand$ab)
camelliabrand$`Avg. Visit Duration` <- gsub(' ', '.' ,camelliabrand$`Avg. Visit Duration`)
camelliabrand <- camelliabrand[-c(6)]
camelliabrand$url <- "camelliabrand.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/camelliabrand.csv")
df9_d1 <- df[c(1),c(1:20)]
df9_d1 <- cbind(df9_d1,camelliabrand)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/camelliabrand.csv")
df9_d2 <- df[c(2),c(1:20)]
df9_d2 <- cbind(df9_d2,camelliabrand)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/camelliabrand.csv")
df9_d3 <- df[c(1),c(1:20)]
df9_d3 <- cbind(df9_d3,camelliabrand)

############################################ 10 URL ###############################################
caminodesantiago_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/caminodesantiago.pdf"
caminodesantiago_text <- pdf_text(caminodesantiago_pdf)
caminodesantiago <- str_extract_all(caminodesantiago_text,"\\(?[0-9,.]+\\)?")[[2]]
caminodesantiago_data <- data.frame(c(caminodesantiago[11],caminodesantiago[15],caminodesantiago[17],caminodesantiago[6],caminodesantiago[13],caminodesantiago[14],caminodesantiago[19],caminodesantiago[20]))
caminodesantiago <- as.data.frame(t(caminodesantiago_data))
colnames(caminodesantiago) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
caminodesantiago$`Avg. Visit Duration` <- paste(caminodesantiago$`Avg. Visit Duration`,caminodesantiago$ab)
caminodesantiago$`Avg. Visit Duration` <- gsub(' ', '.' ,caminodesantiago$`Avg. Visit Duration`)
caminodesantiago <- caminodesantiago[-c(6)]
caminodesantiago$url <- "caminodesantiago.me"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/caminodesantiago.csv")
df10_d1 <- df[c(1),c(1:20)]
df10_d1 <- cbind(df10_d1,caminodesantiago)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/caminodesantiago.csv")
df10_d2 <- df[c(2),c(1:20)]
df10_d2 <- cbind(df10_d2,caminodesantiago)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/caminodesantiago.csv")
df10_d3 <- df[c(1),c(1:20)]
df10_d3 <- cbind(df10_d3,caminodesantiago)

############################################ 11 URL ###############################################
carburetor_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/carburetor.pdf"
carburetor_text <- pdf_text(carburetor_pdf)
carburetor <- str_extract_all(carburetor_text,"\\(?[0-9,.]+\\)?")[[2]]
carburetor_data <- data.frame(c(carburetor[17],carburetor[21],carburetor[23],carburetor[12],carburetor[19],carburetor[20],carburetor[25],carburetor[26]))
carburetor <- as.data.frame(t(carburetor_data))
colnames(carburetor) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
carburetor$`Avg. Visit Duration` <- paste(carburetor$`Avg. Visit Duration`,carburetor$ab)
carburetor$`Avg. Visit Duration` <- gsub(' ', '.' ,carburetor$`Avg. Visit Duration`)
carburetor <- carburetor[-c(6)]
carburetor$url <- "carburetor-parts.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/carburetor.csv")
df11_d1 <- df[c(1),c(1:20)]
df11_d1 <- cbind(df11_d1,carburetor)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/carburetor.csv")
df11_d2 <- df[c(2),c(1:20)]
df11_d2 <- cbind(df11_d2,carburetor)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/carburetor.csv")
df11_d3 <- df[c(1),c(1:20)]
df11_d3 <- cbind(df11_d3,carburetor)

############################################ 12 URL ###############################################
cardonationwizard_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/cardonationwizard.pdf"
cardonationwizard_text <- pdf_text(cardonationwizard_pdf)
cardonationwizard <- str_extract_all(cardonationwizard_text,"\\(?[0-9,.]+\\)?")[[2]]
cardonationwizard_data <- data.frame(c(cardonationwizard[16],cardonationwizard[20],cardonationwizard[22],cardonationwizard[11],cardonationwizard[18],cardonationwizard[19],cardonationwizard[24],cardonationwizard[25]))
cardonationwizard <- as.data.frame(t(cardonationwizard_data))
colnames(cardonationwizard) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cardonationwizard$`Avg. Visit Duration` <- paste(cardonationwizard$`Avg. Visit Duration`,cardonationwizard$ab)
cardonationwizard$`Avg. Visit Duration` <- gsub(' ', '.' ,cardonationwizard$`Avg. Visit Duration`)
cardonationwizard <- cardonationwizard[-c(6)]
cardonationwizard$url <- "cardonationwizard.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cardonationwizard.csv")
df12_d1 <- df[c(1),c(1:20)]
df12_d1 <- cbind(df12_d1,cardonationwizard)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cardonationwizard.csv")
df12_d2 <- df[c(2),c(1:20)]
df12_d2 <- cbind(df12_d2,cardonationwizard)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cardonationwizard.csv")
df12_d3 <- df[c(3),c(1:20)]
df12_d3 <- cbind(df12_d3,cardonationwizard)

############################################ 13 URL ###############################################
cardplayer_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/cardplayer.pdf"
cardplayer_text <- pdf_text(cardplayer_pdf)
cardplayer <- str_extract_all(cardplayer_text,"\\(?[0-9,.]+\\)?")[[2]]
cardplayer_data <- data.frame(c(cardplayer[17],cardplayer[21],cardplayer[23],cardplayer[12],cardplayer[19],cardplayer[20],cardplayer[25],cardplayer[26]))
cardplayer <- as.data.frame(t(cardplayer_data))
colnames(cardplayer) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cardplayer$`Avg. Visit Duration` <- paste(cardplayer$`Avg. Visit Duration`,cardplayer$ab)
cardplayer$`Avg. Visit Duration` <- gsub(' ', '.' ,cardplayer$`Avg. Visit Duration`)
cardplayer <- cardplayer[-c(6)]
cardplayer$url <- "cardplayer.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cardplayer.csv")
df13_d1 <- df[c(1),c(1:20)]
df13_d1 <- cbind(df13_d1,cardplayer)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cardplayer.csv")
df13_d2 <- df[c(1),c(1:20)]
df13_d2 <- cbind(df13_d2,cardplayer)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cardplayer.csv")
df13_d3 <- df[c(3),c(1:20)]
df13_d3 <- cbind(df13_d3,cardplayer)



############################################ 14 URL ###############################################
careerlink_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/careerlink.pdf"
careerlink_text <- pdf_text(careerlink_pdf)
careerlink <- str_extract_all(careerlink_text,"\\(?[0-9,.]+\\)?")[[2]]
careerlink_data <- data.frame(c(careerlink[14],careerlink[18],careerlink[20],careerlink[9],careerlink[16],careerlink[17],careerlink[22],careerlink[23]))
careerlink <- as.data.frame(t(careerlink_data))
colnames(careerlink) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
careerlink$`Avg. Visit Duration` <- paste(careerlink$`Avg. Visit Duration`,careerlink$ab)
careerlink$`Avg. Visit Duration` <- gsub(' ', '.' ,careerlink$`Avg. Visit Duration`)
careerlink <- careerlink[-c(6)]
careerlink$url <- "careerlink.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/careerlink.csv")
df14_d1 <- df[c(1),c(1:20)]
df14_d1 <- cbind(df14_d1,careerlink)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/careerlink.csv")
df14_d2 <- df[c(2),c(1:20)]
df14_d2 <- cbind(df14_d2,careerlink)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/careerlink.csv")
df14_d3 <- df[c(1),c(1:20)]
df14_d3 <- cbind(df14_d3,careerlink)

############################################ 15 URL ###############################################
celebrityaccess_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/celebrityaccess.pdf"
celebrityaccess_text <- pdf_text(celebrityaccess_pdf)
celebrityaccess <- str_extract_all(celebrityaccess_text,"\\(?[0-9,.]+\\)?")[[2]]
celebrityaccess_data <- data.frame(c(celebrityaccess[15],celebrityaccess[19],celebrityaccess[21],celebrityaccess[10],celebrityaccess[17],celebrityaccess[18],celebrityaccess[23],celebrityaccess[24]))
celebrityaccess <- as.data.frame(t(celebrityaccess_data))
colnames(celebrityaccess) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
celebrityaccess$`Avg. Visit Duration` <- paste(celebrityaccess$`Avg. Visit Duration`,celebrityaccess$ab)
celebrityaccess$`Avg. Visit Duration` <- gsub(' ', '.' ,celebrityaccess$`Avg. Visit Duration`)
celebrityaccess <- celebrityaccess[-c(6)]
celebrityaccess$url <- "celebrityaccess.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/celebrityaccess.csv")
df15_d1 <- df[c(1),c(1:20)]
df15_d1 <- cbind(df15_d1,celebrityaccess)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/celebrityaccess.csv")
df15_d2 <- df[c(2),c(1:20)]
df15_d2 <- cbind(df15_d2,celebrityaccess)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/celebrityaccess.csv")
df15_d3 <- df[c(1),c(1:20)]
df15_d3 <- cbind(df15_d3,celebrityaccess)

############################################ 16 URL ###############################################
cgi_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/cgi.pdf"
cgi_text <- pdf_text(cgi_pdf)
cgi <- str_extract_all(cgi_text,"\\(?[0-9,.]+\\)?")[[2]]
cgi_data <- data.frame(c(cgi[14],cgi[18],cgi[20],cgi[9],cgi[16],cgi[17],cgi[22],cgi[23]))
cgi <- as.data.frame(t(cgi_data))
colnames(cgi) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cgi$`Avg. Visit Duration` <- paste(cgi$`Avg. Visit Duration`,cgi$ab)
cgi$`Avg. Visit Duration` <- gsub(' ', '.' ,cgi$`Avg. Visit Duration`)
cgi <- cgi[-c(6)]
cgi$url <- "cgi.org"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cgi.csv")
df16_d1 <- df[c(1),c(1:20)]
df16_d1 <- cbind(df16_d1,cgi)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cgi.csv")
df16_d2 <- df[c(2),c(1:20)]
df16_d2 <- cbind(df16_d2,cgi)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cgi.csv")
df16_d3 <- df[c(1),c(1:20)]
df16_d3 <- cbind(df16_d3,cgi)

############################################ 17 URL ###############################################
chriswrites_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/chriswrites.pdf"
chriswrites_text <- pdf_text(chriswrites_pdf)
chriswrites <- str_extract_all(chriswrites_text,"\\(?[0-9,.]+\\)?")[[2]]
chriswrites_data <- data.frame(c(chriswrites[10],chriswrites[14],chriswrites[16],chriswrites[5],chriswrites[12],chriswrites[13],chriswrites[18],chriswrites[19]))
chriswrites <- as.data.frame(t(chriswrites_data))
colnames(chriswrites) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
chriswrites$`Avg. Visit Duration` <- paste(chriswrites$`Avg. Visit Duration`,chriswrites$ab)
chriswrites$`Avg. Visit Duration` <- gsub(' ', '.' ,chriswrites$`Avg. Visit Duration`)
chriswrites <- chriswrites[-c(6)]
chriswrites$url <- "chriswrites.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/chriswrites.csv")
df17_d1 <- df[c(1),c(1:20)]
df17_d1 <- cbind(df17_d1,chriswrites)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/chriswrites.csv")
df17_d2 <- df[c(2),c(1:20)]
df17_d2 <- cbind(df17_d2,chriswrites)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/chriswrites.csv")
df17_d3 <- df[c(1),c(1:20)]
df17_d3 <- cbind(df17_d3,chriswrites)

############################################ 18 URL ###############################################
churchangel_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/churchangel.pdf"
churchangel_text <- pdf_text(churchangel_pdf)
churchangel <- str_extract_all(churchangel_text,"\\(?[0-9,.]+\\)?")[[2]]
churchangel_data <- data.frame(c(churchangel[13],churchangel[17],churchangel[19],churchangel[8],churchangel[15],churchangel[16],churchangel[21],churchangel[22]))
churchangel <- as.data.frame(t(churchangel_data))
colnames(churchangel) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
churchangel$`Avg. Visit Duration` <- paste(churchangel$`Avg. Visit Duration`,churchangel$ab)
churchangel$`Avg. Visit Duration` <- gsub(' ', '.' ,churchangel$`Avg. Visit Duration`)
churchangel <- churchangel[-c(6)]
churchangel$url <- "churchangel.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/churchangel.csv")
df18_d1 <- df[c(1),c(1:20)]
df18_d1 <- cbind(df18_d1,churchangel)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/churchangel.csv")
df18_d2 <- df[c(2),c(1:20)]
df18_d2 <- cbind(df18_d2,churchangel)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/churchangel.csv")
df18_d3 <- df[c(1),c(1:20)]
df18_d3 <- cbind(df18_d3,churchangel)

############################################ 19 URL ###############################################
churchofsatan_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/churchofsatan.pdf"
churchofsatan_text <- pdf_text(churchofsatan_pdf)
churchofsatan <- str_extract_all(churchofsatan_text,"\\(?[0-9,.]+\\)?")[[2]]
churchofsatan_data <- data.frame(c(churchofsatan[18],churchofsatan[22],churchofsatan[24],churchofsatan[13],churchofsatan[20],churchofsatan[21],churchofsatan[26],churchofsatan[27]))
churchofsatan <- as.data.frame(t(churchofsatan_data))
colnames(churchofsatan) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
churchofsatan$`Avg. Visit Duration` <- paste(churchofsatan$`Avg. Visit Duration`,churchofsatan$ab)
churchofsatan$`Avg. Visit Duration` <- gsub(' ', '.' ,churchofsatan$`Avg. Visit Duration`)
churchofsatan <- churchofsatan[-c(6)]
churchofsatan$url <- "churchofsatan.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/churchofsatan.csv")
df19_d1 <- df[c(1),c(1:20)]
df19_d1 <- cbind(df19_d1,churchofsatan)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/churchofsatan.csv")
df19_d2 <- df[c(2),c(1:20)]
df19_d2 <- cbind(df19_d2,churchofsatan)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/churchofsatan.csv")
df19_d3 <- df[c(1),c(1:20)]
df19_d3 <- cbind(df19_d3,churchofsatan)

############################################ 20 URL ###############################################
cinemacafe_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/cinemacafe.pdf"
cinemacafe_text <- pdf_text(cinemacafe_pdf)
cinemacafe <- str_extract_all(cinemacafe_text,"\\(?[0-9,.]+\\)?")[[2]]
cinemacafe_data <- data.frame(c(cinemacafe[10],cinemacafe[14],cinemacafe[16],cinemacafe[5],cinemacafe[12],cinemacafe[13],cinemacafe[18],cinemacafe[19]))
cinemacafe <- as.data.frame(t(cinemacafe_data))
colnames(cinemacafe) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cinemacafe$`Avg. Visit Duration` <- paste(cinemacafe$`Avg. Visit Duration`,cinemacafe$ab)
cinemacafe$`Avg. Visit Duration` <- gsub(' ', '.' ,cinemacafe$`Avg. Visit Duration`)
cinemacafe <- cinemacafe[-c(6)]
cinemacafe$url <- "cinemacafe.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cinemacafe.csv")
df20_d1 <- df[c(1),c(1:20)]
df20_d1 <- cbind(df20_d1,cinemacafe)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cinemacafe.csv")
df20_d2 <- df[c(2),c(1:20)]
df20_d2 <- cbind(df20_d2,cinemacafe)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cinemacafe.csv")
df20_d3 <- df[c(1),c(1:20)]
df20_d3 <- cbind(df20_d3,cinemacafe)

############################################ 21 URL ###############################################
cinemagicmovies_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/cinemagicmovies.pdf"
cinemagicmovies_text <- pdf_text(cinemagicmovies_pdf)
cinemagicmovies <- str_extract_all(cinemagicmovies_text,"\\(?[0-9,.]+\\)?")[[2]]
cinemagicmovies_data <- data.frame(c(cinemagicmovies[10],cinemagicmovies[14],cinemagicmovies[16],cinemagicmovies[5],cinemagicmovies[12],cinemagicmovies[13],cinemagicmovies[18],cinemagicmovies[19]))
cinemagicmovies <- as.data.frame(t(cinemagicmovies_data))
colnames(cinemagicmovies) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cinemagicmovies$`Avg. Visit Duration` <- paste(cinemagicmovies$`Avg. Visit Duration`,cinemagicmovies$ab)
cinemagicmovies$`Avg. Visit Duration` <- gsub(' ', '.' ,cinemagicmovies$`Avg. Visit Duration`)
cinemagicmovies <- cinemagicmovies[-c(6)]
cinemagicmovies$url <- "cinemagicmovies.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cinemagicmovies.csv")
df21_d1 <- df[c(1),c(1:20)]
df21_d1 <- cbind(df21_d1,cinemagicmovies)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cinemagicmovies.csv")
df21_d2 <- df[c(2),c(1:20)]
df21_d2 <- cbind(df21_d2,cinemagicmovies)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cinemagicmovies.csv")
df21_d3 <- df[c(1),c(1:20)]
df21_d3 <- cbind(df21_d3,cinemagicmovies)

############################################ 22 URL ###############################################
communityadvocate_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/communityadvocate.pdf"
communityadvocate_text <- pdf_text(communityadvocate_pdf)
communityadvocate <- str_extract_all(communityadvocate_text,"\\(?[0-9,.]+\\)?")[[2]]
communityadvocate_data <- data.frame(c(communityadvocate[16],communityadvocate[20],communityadvocate[22],communityadvocate[11],communityadvocate[18],communityadvocate[19],communityadvocate[24],communityadvocate[25]))
communityadvocate <- as.data.frame(t(communityadvocate_data))
colnames(communityadvocate) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
communityadvocate$`Avg. Visit Duration` <- paste(communityadvocate$`Avg. Visit Duration`,communityadvocate$ab)
communityadvocate$`Avg. Visit Duration` <- gsub(' ', '.' ,communityadvocate$`Avg. Visit Duration`)
communityadvocate <- communityadvocate[-c(6)]
communityadvocate$url <- "communityadvocate.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/communityadvocate.csv")
df22_d1 <- df[c(1),c(1:20)]
df22_d1 <- cbind(df22_d1,communityadvocate)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/communityadvocate.csv")
df22_d2 <- df[c(2),c(1:20)]
df22_d2 <- cbind(df22_d2,communityadvocate)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/communityadvocate.csv")
df22_d3 <- df[c(1),c(1:20)]
df22_d3 <- cbind(df22_d3,communityadvocate)

############################################ 23 URL ###############################################
connectionnewspapers_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/connectionnewspapers.pdf"
connectionnewspapers_text <- pdf_text(connectionnewspapers_pdf)
connectionnewspapers <- str_extract_all(connectionnewspapers_text,"\\(?[0-9,.]+\\)?")[[2]]
connectionnewspapers_data <- data.frame(c(connectionnewspapers[10],connectionnewspapers[14],connectionnewspapers[16],connectionnewspapers[5],connectionnewspapers[12],connectionnewspapers[13],connectionnewspapers[18],connectionnewspapers[19]))
connectionnewspapers <- as.data.frame(t(connectionnewspapers_data))
colnames(connectionnewspapers) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
connectionnewspapers$`Avg. Visit Duration` <- paste(connectionnewspapers$`Avg. Visit Duration`,connectionnewspapers$ab)
connectionnewspapers$`Avg. Visit Duration` <- gsub(' ', '.' ,connectionnewspapers$`Avg. Visit Duration`)
connectionnewspapers <- connectionnewspapers[-c(6)]
connectionnewspapers$url <- "connectionnewspapers.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/connectionnewspapers.csv")
df23_d1 <- df[c(1),c(1:20)]
df23_d1 <- cbind(df23_d1,connectionnewspapers)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/connectionnewspapers.csv")
df23_d2 <- df[c(2),c(1:20)]
df23_d2 <- cbind(df23_d2,connectionnewspapers)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/connectionnewspapers.csv")
df23_d3 <- df[c(1),c(1:20)]
df23_d3 <- cbind(df23_d3,connectionnewspapers)

############################################ 24 URL ###############################################
cooperator_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/cooperator.pdf"
cooperator_text <- pdf_text(cooperator_pdf)
cooperator <- str_extract_all(cooperator_text,"\\(?[0-9,.]+\\)?")[[2]]
cooperator_data <- data.frame(c(cooperator[10],cooperator[14],cooperator[16],cooperator[5],cooperator[12],cooperator[13],cooperator[18],cooperator[19]))
cooperator <- as.data.frame(t(cooperator_data))
colnames(cooperator) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cooperator$`Avg. Visit Duration` <- paste(cooperator$`Avg. Visit Duration`,cooperator$ab)
cooperator$`Avg. Visit Duration` <- gsub(' ', '.' ,cooperator$`Avg. Visit Duration`)
cooperator <- cooperator[-c(6)]
cooperator$url <- "cooperator.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cooperator.csv")
df24_d1 <- df[c(1),c(1:20)]
df24_d1 <- cbind(df24_d1,cooperator)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cooperator.csv")
df24_d2 <- df[c(2),c(1:20)]
df24_d2 <- cbind(df24_d2,cooperator)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/cooperator.csv")
df24_d3 <- df[c(1),c(1:20)]
df24_d3 <- cbind(df24_d3,cooperator)

############################################ 25 URL ###############################################
crappie_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/crappie.pdf"
crappie_text <- pdf_text(crappie_pdf)
crappie <- str_extract_all(crappie_text,"\\(?[0-9,.]+\\)?")[[2]]
crappie_data <- data.frame(c(crappie[11],crappie[15],crappie[17],crappie[6],crappie[13],crappie[14],crappie[19],crappie[20]))
crappie <- as.data.frame(t(crappie_data))
colnames(crappie) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
crappie$`Avg. Visit Duration` <- paste(crappie$`Avg. Visit Duration`,crappie$ab)
crappie$`Avg. Visit Duration` <- gsub(' ', '.' ,crappie$`Avg. Visit Duration`)
crappie <- crappie[-c(6)]
crappie$url <- "crappie.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/crappie.csv")
df25_d1 <- df[c(1),c(1:20)]
df25_d1 <- cbind(df25_d1,crappie)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/crappie.csv")
df25_d2 <- df[c(2),c(1:20)]
df25_d2 <- cbind(df25_d2,crappie)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/crappie.csv")
df25_d3 <- df[c(1),c(1:20)]
df25_d3 <- cbind(df25_d3,crappie)

############################################ 26 URL ###############################################
kansasauctions_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/kansasauctions.pdf"
kansasauctions_text <- pdf_text(kansasauctions_pdf)
kansasauctions <- str_extract_all(kansasauctions_text,"\\(?[0-9,.]+\\)?")[[2]]
kansasauctions_data <- data.frame(c(kansasauctions[10],kansasauctions[14],kansasauctions[16],kansasauctions[5],kansasauctions[12],kansasauctions[13],kansasauctions[18],kansasauctions[19]))
kansasauctions <- as.data.frame(t(kansasauctions_data))
colnames(kansasauctions) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
kansasauctions$`Avg. Visit Duration` <- paste(kansasauctions$`Avg. Visit Duration`,kansasauctions$ab)
kansasauctions$`Avg. Visit Duration` <- gsub(' ', '.' ,kansasauctions$`Avg. Visit Duration`)
kansasauctions <- kansasauctions[-c(6)]
kansasauctions$url <- "kansasauctions.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/kansasauctions.csv")
df26_d1 <- df[c(1),c(1:20)]
df26_d1 <- cbind(df26_d1,kansasauctions)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/kansasauctions.csv")
df26_d2 <- df[c(1),c(1:20)]
df26_d2 <- cbind(df26_d2,kansasauctions)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/kansasauctions.csv")
df26_d3 <- df[c(1),c(1:20)]
df26_d3 <- cbind(df26_d3,kansasauctions)

############################################ 27 URL ###############################################
kansaspublicradio_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/kansaspublicradio.pdf"
kansaspublicradio_text <- pdf_text(kansaspublicradio_pdf)
kansaspublicradio <- str_extract_all(kansaspublicradio_text,"\\(?[0-9,.]+\\)?")[[2]]
kansaspublicradio_data <- data.frame(c(kansaspublicradio[28],kansaspublicradio[32],kansaspublicradio[34],kansaspublicradio[23],kansaspublicradio[30],kansaspublicradio[31],kansaspublicradio[36],kansaspublicradio[37]))
kansaspublicradio <- as.data.frame(t(kansaspublicradio_data))
colnames(kansaspublicradio) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
kansaspublicradio$`Avg. Visit Duration` <- paste(kansaspublicradio$`Avg. Visit Duration`,kansaspublicradio$ab)
kansaspublicradio$`Avg. Visit Duration` <- gsub(' ', '.' ,kansaspublicradio$`Avg. Visit Duration`)
kansaspublicradio <- kansaspublicradio[-c(6)]
kansaspublicradio$url <- "kansaspublicradio.org"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/kansaspublicradio.csv")
df27_d1 <- df[c(1),c(1:20)]
df27_d1 <- cbind(df27_d1,kansaspublicradio)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/kansaspublicradio.csv")
df27_d2 <- df[c(2),c(1:20)]
df27_d2 <- cbind(df27_d2,kansaspublicradio)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/kansaspublicradio.csv")
df27_d3 <- df[c(1),c(1:20)]
df27_d3 <- cbind(df27_d3,kansaspublicradio)

############################################ 28 URL ###############################################
kerrygoldusa_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/kerrygoldusa.pdf"
kerrygoldusa_text <- pdf_text(kerrygoldusa_pdf)
kerrygoldusa <- str_extract_all(kerrygoldusa_text,"\\(?[0-9,.]+\\)?")[[2]]
kerrygoldusa_data <- data.frame(c(kerrygoldusa[12],kerrygoldusa[16],kerrygoldusa[18],kerrygoldusa[7],kerrygoldusa[14],kerrygoldusa[15],kerrygoldusa[20],kerrygoldusa[21]))
kerrygoldusa <- as.data.frame(t(kerrygoldusa_data))
colnames(kerrygoldusa) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
kerrygoldusa$`Avg. Visit Duration` <- paste(kerrygoldusa$`Avg. Visit Duration`,kerrygoldusa$ab)
kerrygoldusa$`Avg. Visit Duration` <- gsub(' ', '.' ,kerrygoldusa$`Avg. Visit Duration`)
kerrygoldusa <- kerrygoldusa[-c(6)]
kerrygoldusa$url <- "kerrygoldusa.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/kerrygoldusa.csv")
df28_d1 <- df[c(1),c(1:20)]
df28_d1 <- cbind(df28_d1,kerrygoldusa)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/kerrygoldusa.csv")
df28_d2 <- df[c(2),c(1:20)]
df28_d2 <- cbind(df28_d2,kerrygoldusa)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/kerrygoldusa.csv")
df28_d3 <- df[c(1),c(1:20)]
df28_d3 <- cbind(df28_d3,kerrygoldusa)

############################################ 29 URL ###############################################
layercake_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/layercake.pdf"
layercake_text <- pdf_text(layercake_pdf)
layercake <- str_extract_all(layercake_text,"\\(?[0-9,.]+\\)?")[[2]]
layercake_data <- data.frame(c(layercake[11],layercake[15],layercake[17],layercake[6],layercake[13],layercake[14],layercake[19],layercake[20]))
layercake <- as.data.frame(t(layercake_data))
colnames(layercake) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
layercake$`Avg. Visit Duration` <- paste(layercake$`Avg. Visit Duration`,layercake$ab)
layercake$`Avg. Visit Duration` <- gsub(' ', '.' ,layercake$`Avg. Visit Duration`)
layercake <- layercake[-c(6)]
layercake$url <- "100layercake.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/100layercake.csv")
df29_d1 <- df[c(1),c(1:20)]
df29_d1 <- cbind(df29_d1,layercake)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/100layercake.csv")
df29_d2 <- df[c(2),c(1:20)]
df29_d2 <- cbind(df29_d2,layercake)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/100layercake.csv")
df29_d3 <- df[c(1),c(1:20)]
df29_d3 <- cbind(df29_d3,layercake)

############################################ 30 URL ###############################################
nation_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/nation.pdf"
nation_text <- pdf_text(nation_pdf)
nation <- str_extract_all(nation_text,"\\(?[0-9,.]+\\)?")[[2]]
nation_data <- data.frame(c(nation[14],nation[18],nation[20],nation[9],nation[16],nation[17],nation[22],nation[23]))
nation <- as.data.frame(t(nation_data))
colnames(nation) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
nation$`Avg. Visit Duration` <- paste(nation$`Avg. Visit Duration`,nation$ab)
nation$`Avg. Visit Duration` <- gsub(' ', '.' ,nation$`Avg. Visit Duration`)
nation <- nation[-c(6)]
nation$url <- "nation.com.pk"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/nation.csv")
df30_d1 <- df[c(1),c(1:20)]
df30_d1 <- cbind(df30_d1,nation)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/nation.csv")
df30_d2 <- df[c(2),c(1:20)]
df30_d2 <- cbind(df30_d2,nation)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/nation.csv")
df30_d3 <- df[c(1),c(1:20)]
df30_d3 <- cbind(df30_d3,nation)

############################################ 31 URL ###############################################
neswangy_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/neswangy.pdf"
neswangy_text <- pdf_text(neswangy_pdf)
neswangy <- str_extract_all(neswangy_text,"\\(?[0-9,.]+\\)?")[[2]]
neswangy_data <- data.frame(c(neswangy[10],neswangy[14],neswangy[16],neswangy[5],neswangy[12],neswangy[13],neswangy[18],neswangy[19]))
neswangy <- as.data.frame(t(neswangy_data))
colnames(neswangy) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
neswangy$`Avg. Visit Duration` <- paste(neswangy$`Avg. Visit Duration`,neswangy$ab)
neswangy$`Avg. Visit Duration` <- gsub(' ', '.' ,neswangy$`Avg. Visit Duration`)
neswangy <- neswangy[-c(6)]
neswangy$url <- "neswangy.net"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/neswangy.csv")
df31_d1 <- df[c(1),c(1:20)]
df31_d1 <- cbind(df31_d1,neswangy)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/neswangy.csv")
df31_d2 <- df[c(2),c(1:20)]
df31_d2 <- cbind(df31_d2,neswangy)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/neswangy.csv")
df31_d3 <- df[c(1),c(1:20)]
df31_d3 <- cbind(df31_d3,neswangy)

############################################ 32 URL ###############################################
nrao_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/nrao.pdf"
nrao_text <- pdf_text(nrao_pdf)
nrao <- str_extract_all(nrao_text,"\\(?[0-9,.]+\\)?")[[2]]
nrao_data <- data.frame(c(nrao[11],nrao[15],nrao[17],nrao[6],nrao[13],nrao[14],nrao[19],nrao[20]))
nrao <- as.data.frame(t(nrao_data))
colnames(nrao) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
nrao$`Avg. Visit Duration` <- paste(nrao$`Avg. Visit Duration`,nrao$ab)
nrao$`Avg. Visit Duration` <- gsub(' ', '.' ,nrao$`Avg. Visit Duration`)
nrao <- nrao[-c(6)]
nrao$url <- "nrao.edu"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/nrao.csv")
df32_d1 <- df[c(1),c(1:20)]
df32_d1 <- cbind(df32_d1,nrao)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/nrao.csv")
df32_d2 <- df[c(2),c(1:20)]
df32_d2 <- cbind(df32_d2,nrao)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/nrao.csv")
df32_d3 <- df[c(1),c(1:20)]
df32_d3 <- cbind(df32_d3,nrao)

############################################ 33 URL ###############################################
oaklandmagazine_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/oaklandmagazine.pdf"
oaklandmagazine_text <- pdf_text(oaklandmagazine_pdf)
oaklandmagazine <- str_extract_all(oaklandmagazine_text,"\\(?[0-9,.]+\\)?")[[2]]
oaklandmagazine_data <- data.frame(c(oaklandmagazine[17],oaklandmagazine[21],oaklandmagazine[23],oaklandmagazine[12],oaklandmagazine[19],oaklandmagazine[20],oaklandmagazine[25],oaklandmagazine[26]))
oaklandmagazine <- as.data.frame(t(oaklandmagazine_data))
colnames(oaklandmagazine) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
oaklandmagazine$`Avg. Visit Duration` <- paste(oaklandmagazine$`Avg. Visit Duration`,oaklandmagazine$ab)
oaklandmagazine$`Avg. Visit Duration` <- gsub(' ', '.' ,oaklandmagazine$`Avg. Visit Duration`)
oaklandmagazine <- oaklandmagazine[-c(6)]
oaklandmagazine$url <- "oaklandmagazine.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/oaklandmagazine.csv")
df33_d1 <- df[c(1),c(1:20)]
df33_d1 <- cbind(df33_d1,oaklandmagazine)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/oaklandmagazine.csv")
df33_d2 <- df[c(2),c(1:20)]
df33_d2 <- cbind(df33_d2,oaklandmagazine)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/oaklandmagazine.csv")
df33_d3 <- df[c(1),c(1:20)]
df33_d3 <- cbind(df33_d3,oaklandmagazine)

############################################ 34 URL ###############################################
ocweekly_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/ocweekly.pdf"
ocweekly_text <- pdf_text(ocweekly_pdf)
ocweekly <- str_extract_all(ocweekly_text,"\\(?[0-9,.]+\\)?")[[2]]
ocweekly_data <- data.frame(c(ocweekly[11],ocweekly[15],ocweekly[17],ocweekly[6],ocweekly[13],ocweekly[14],ocweekly[19],ocweekly[20]))
ocweekly <- as.data.frame(t(ocweekly_data))
colnames(ocweekly) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
ocweekly$`Avg. Visit Duration` <- paste(ocweekly$`Avg. Visit Duration`,ocweekly$ab)
ocweekly$`Avg. Visit Duration` <- gsub(' ', '.' ,ocweekly$`Avg. Visit Duration`)
ocweekly <- ocweekly[-c(6)]
ocweekly$url <- "ocweekly.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/ocweekly.csv")
df34_d1 <- df[c(1),c(1:20)]
df34_d1 <- cbind(df34_d1,ocweekly)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/ocweekly.csv")
df34_d2 <- df[c(2),c(1:20)]
df34_d2 <- cbind(df34_d2,ocweekly)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/ocweekly.csv")
df34_d3 <- df[c(1),c(1:20)]
df34_d3 <- cbind(df34_d3,ocweekly)

############################################ 35 URL ###############################################
onein_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/onein.pdf"
onein_text <- pdf_text(onein_pdf)
onein <- str_extract_all(onein_text,"\\(?[0-9,.]+\\)?")[[2]]
onein_data <- data.frame(c(onein[13],onein[17],onein[19],onein[8],onein[15],onein[16],onein[21],onein[22]))
onein <- as.data.frame(t(onein_data))
colnames(onein) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
onein$`Avg. Visit Duration` <- paste(onein$`Avg. Visit Duration`,onein$ab)
onein$`Avg. Visit Duration` <- gsub(' ', '.' ,onein$`Avg. Visit Duration`)
onein <- onein[-c(6)]
onein$url <- "1in.am"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/1in.csv")
df35_d1 <- df[c(1),c(1:20)]
df35_d1 <- cbind(df35_d1,onein)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/1in.csv")
df35_d2 <- df[c(2),c(1:20)]
df35_d2 <- cbind(df35_d2,onein)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/1in.csv")
df35_d3 <- df[c(1),c(1:20)]
df35_d3 <- cbind(df35_d3,onein)

############################################ 36 URL ###############################################
onemorelevel_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/onemorelevel.pdf"
onemorelevel_text <- pdf_text(onemorelevel_pdf)
onemorelevel <- str_extract_all(onemorelevel_text,"\\(?[0-9,.]+\\)?")[[2]]
onemorelevel_data <- data.frame(c(onemorelevel[15],onemorelevel[19],onemorelevel[21],onemorelevel[10],onemorelevel[17],onemorelevel[18],onemorelevel[23],onemorelevel[24]))
onemorelevel <- as.data.frame(t(onemorelevel_data))
colnames(onemorelevel) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
onemorelevel$`Avg. Visit Duration` <- paste(onemorelevel$`Avg. Visit Duration`,onemorelevel$ab)
onemorelevel$`Avg. Visit Duration` <- gsub(' ', '.' ,onemorelevel$`Avg. Visit Duration`)
onemorelevel <- onemorelevel[-c(6)]
onemorelevel$url <- "onemorelevel.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/onemorelevel.csv")
df36_d1 <- df[c(1),c(1:20)]
df36_d1 <- cbind(df36_d1,onemorelevel)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/onemorelevel.csv")
df36_d2 <- df[c(2),c(1:20)]
df36_d2 <- cbind(df36_d2,onemorelevel)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/onemorelevel.csv")
df36_d3 <- df[c(1),c(1:20)]
df36_d3 <- cbind(df36_d3,onemorelevel)

############################################ 37 URL ###############################################
outdoorsfirst_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/outdoorsfirst.pdf"
outdoorsfirst_text <- pdf_text(outdoorsfirst_pdf)
outdoorsfirst <- str_extract_all(outdoorsfirst_text,"\\(?[0-9,.]+\\)?")[[2]]
outdoorsfirst_data <- data.frame(c(outdoorsfirst[18],outdoorsfirst[22],outdoorsfirst[24],outdoorsfirst[13],outdoorsfirst[20],outdoorsfirst[21],outdoorsfirst[26],outdoorsfirst[27]))
outdoorsfirst <- as.data.frame(t(outdoorsfirst_data))
colnames(outdoorsfirst) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
outdoorsfirst$`Avg. Visit Duration` <- paste(outdoorsfirst$`Avg. Visit Duration`,outdoorsfirst$ab)
outdoorsfirst$`Avg. Visit Duration` <- gsub(' ', '.' ,outdoorsfirst$`Avg. Visit Duration`)
outdoorsfirst <- outdoorsfirst[-c(6)]
outdoorsfirst$url <- "outdoorsfirst.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/outdoorsfirst.csv")
df37_d1 <- df[c(1),c(1:20)]
df37_d1 <- cbind(df37_d1,outdoorsfirst)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/outdoorsfirst.csv")
df37_d2 <- df[c(2),c(1:20)]
df37_d2 <- cbind(df37_d2,outdoorsfirst)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/outdoorsfirst.csv")
df37_d3 <- df[c(1),c(1:20)]
df37_d3 <- cbind(df37_d3,outdoorsfirst)

############################################ 38 URL ###############################################
techgaming_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/tech-gaming.pdf"
techgaming_text <- pdf_text(techgaming_pdf)
techgaming <- str_extract_all(techgaming_text,"\\(?[0-9,.]+\\)?")[[2]]
techgaming_data <- data.frame(c(techgaming[12],techgaming[16],techgaming[18],techgaming[7],techgaming[14],techgaming[15],techgaming[20],techgaming[21]))
techgaming <- as.data.frame(t(techgaming_data))
colnames(techgaming) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
techgaming$`Avg. Visit Duration` <- paste(techgaming$`Avg. Visit Duration`,techgaming$ab)
techgaming$`Avg. Visit Duration` <- gsub(' ', '.' ,techgaming$`Avg. Visit Duration`)
techgaming <- techgaming[-c(6)]
techgaming$url <- "techgaming.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tech_gaming.csv")
df38_d1 <- df[c(1),c(1:20)]
df38_d1 <- cbind(df38_d1,techgaming)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tech_gaming.csv")
df38_d2 <- df[c(1),c(1:20)]
df38_d2 <- cbind(df38_d2,techgaming)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tech_gaming.csv")
df38_d3 <- df[c(1),c(1:20)]
df38_d3 <- cbind(df38_d3,techgaming)

############################################ 39 URL ###############################################
techsupportall_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/techsupportall.pdf"
techsupportall_text <- pdf_text(techsupportall_pdf)
techsupportall <- str_extract_all(techsupportall_text,"\\(?[0-9,.]+\\)?")[[2]]
techsupportall_data <- data.frame(c(techsupportall[12],techsupportall[16],techsupportall[18],techsupportall[7],techsupportall[14],techsupportall[15],techsupportall[20],techsupportall[21]))
techsupportall <- as.data.frame(t(techsupportall_data))
colnames(techsupportall) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
techsupportall$`Avg. Visit Duration` <- paste(techsupportall$`Avg. Visit Duration`,techsupportall$ab)
techsupportall$`Avg. Visit Duration` <- gsub(' ', '.' ,techsupportall$`Avg. Visit Duration`)
techsupportall <- techsupportall[-c(6)]
techsupportall$url <- "techsupportall.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/techsupportall.csv")
df39_d1 <- df[c(1),c(1:20)]
df39_d1 <- cbind(df39_d1,techsupportall)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/techsupportall.csv")
df39_d2 <- df[c(2),c(1:20)]
df39_d2 <- cbind(df39_d2,techsupportall)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/techsupportall.csv")
df39_d3 <- df[c(1),c(1:20)]
df39_d3 <- cbind(df39_d3,techsupportall)

############################################ 40 URL ###############################################
thebraziltimes_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/thebraziltimes.pdf"
thebraziltimes_text <- pdf_text(thebraziltimes_pdf)
thebraziltimes <- str_extract_all(thebraziltimes_text,"\\(?[0-9,.]+\\)?")[[2]]
thebraziltimes_data <- data.frame(c(thebraziltimes[10],thebraziltimes[14],thebraziltimes[16],thebraziltimes[5],thebraziltimes[12],thebraziltimes[13],thebraziltimes[18],thebraziltimes[19]))
thebraziltimes <- as.data.frame(t(thebraziltimes_data))
colnames(thebraziltimes) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
thebraziltimes$`Avg. Visit Duration` <- paste(thebraziltimes$`Avg. Visit Duration`,thebraziltimes$ab)
thebraziltimes$`Avg. Visit Duration` <- gsub(' ', '.' ,thebraziltimes$`Avg. Visit Duration`)
thebraziltimes <- thebraziltimes[-c(6)]
thebraziltimes$url <- "thebraziltimes.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/thebraziltimes.csv")
df40_d1 <- df[c(1),c(1:20)]
df40_d1 <- cbind(df40_d1,thebraziltimes)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/thebraziltimes.csv")
df40_d2 <- df[c(2),c(1:20)]
df40_d2 <- cbind(df40_d2,thebraziltimes)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/thebraziltimes.csv")
df40_d3 <- df[c(1),c(1:20)]
df40_d3 <- cbind(df40_d3,thebraziltimes)

############################################ 41 URL ###############################################
tiendeo_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/tiendeo.pdf"
tiendeo_text <- pdf_text(tiendeo_pdf)
tiendeo <- str_extract_all(tiendeo_text,"\\(?[0-9,.]+\\)?")[[2]]
tiendeo_data <- data.frame(c(tiendeo[14],tiendeo[18],tiendeo[20],tiendeo[9],tiendeo[16],tiendeo[17],tiendeo[22],tiendeo[23]))
tiendeo <- as.data.frame(t(tiendeo_data))
colnames(tiendeo) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
tiendeo$`Avg. Visit Duration` <- paste(tiendeo$`Avg. Visit Duration`,tiendeo$ab)
tiendeo$`Avg. Visit Duration` <- gsub(' ', '.' ,tiendeo$`Avg. Visit Duration`)
tiendeo <- tiendeo[-c(6)]
tiendeo$url <- "tiendeo.us"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tiendeo.csv")
df41_d1 <- df[c(1),c(1:20)]
df41_d1 <- cbind(df41_d1,tiendeo)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tiendeo.csv")
df41_d2 <- df[c(2),c(1:20)]
df41_d2 <- cbind(df41_d2,tiendeo)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tiendeo.csv")
df41_d3 <- df[c(1),c(1:20)]
df41_d3 <- cbind(df41_d3,tiendeo)


############################################ 42 URL ###############################################
topconsumerreviews_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/topconsumerreviews.pdf"
topconsumerreviews_text <- pdf_text(topconsumerreviews_pdf)
topconsumerreviews <- str_extract_all(topconsumerreviews_text,"\\(?[0-9,.]+\\)?")[[2]]
topconsumerreviews_data <- data.frame(c(topconsumerreviews[13],topconsumerreviews[17],topconsumerreviews[19],topconsumerreviews[8],topconsumerreviews[15],topconsumerreviews[16],topconsumerreviews[21],topconsumerreviews[22]))
topconsumerreviews <- as.data.frame(t(topconsumerreviews_data))
colnames(topconsumerreviews) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
topconsumerreviews$`Avg. Visit Duration` <- paste(topconsumerreviews$`Avg. Visit Duration`,topconsumerreviews$ab)
topconsumerreviews$`Avg. Visit Duration` <- gsub(' ', '.' ,topconsumerreviews$`Avg. Visit Duration`)
topconsumerreviews <- topconsumerreviews[-c(6)]
topconsumerreviews$url <- "topconsumerreviews.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/topconsumerreviews.csv")
df42_d1 <- df[c(1),c(1:20)]
df42_d1 <- cbind(df42_d1,topconsumerreviews)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/topconsumerreviews.csv")
df42_d2 <- df[c(2),c(1:20)]
df42_d2 <- cbind(df42_d2,topconsumerreviews)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/topconsumerreviews.csv")
df42_d3 <- df[c(1),c(1:20)]
df42_d3 <- cbind(df42_d3,topconsumerreviews)

############################################ 43 URL ###############################################
topdreamer_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/topdreamer.pdf"
topdreamer_text <- pdf_text(topdreamer_pdf)
topdreamer <- str_extract_all(topdreamer_text,"\\(?[0-9,.]+\\)?")[[2]]
topdreamer_data <- data.frame(c(topdreamer[13],topdreamer[17],topdreamer[19],topdreamer[8],topdreamer[15],topdreamer[16],topdreamer[21],topdreamer[22]))
topdreamer <- as.data.frame(t(topdreamer_data))
colnames(topdreamer) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
topdreamer$`Avg. Visit Duration` <- paste(topdreamer$`Avg. Visit Duration`,topdreamer$ab)
topdreamer$`Avg. Visit Duration` <- gsub(' ', '.' ,topdreamer$`Avg. Visit Duration`)
topdreamer <- topdreamer[-c(6)]
topdreamer$url <- "topdreamer.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/topdreamer.csv")
df43_d1 <- df[c(1),c(1:20)]
df43_d1 <- cbind(df43_d1,topdreamer)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/topdreamer.csv")
df43_d2 <- df[c(2),c(1:20)]
df43_d2 <- cbind(df43_d2,topdreamer)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/topdreamer.csv")
df43_d3 <- df[c(1),c(1:20)]
df43_d3 <- cbind(df43_d3,topdreamer)

############################################ 44 URL ###############################################
transdepot_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/transdepot.pdf"
transdepot_text <- pdf_text(transdepot_pdf)
transdepot <- str_extract_all(transdepot_text,"\\(?[0-9,.]+\\)?")[[2]]
transdepot_data <- data.frame(c(transdepot[12],transdepot[16],transdepot[18],transdepot[7],transdepot[14],transdepot[15],transdepot[20],transdepot[21]))
transdepot <- as.data.frame(t(transdepot_data))
colnames(transdepot) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
transdepot$`Avg. Visit Duration` <- paste(transdepot$`Avg. Visit Duration`,transdepot$ab)
transdepot$`Avg. Visit Duration` <- gsub(' ', '.' ,transdepot$`Avg. Visit Duration`)
transdepot <- transdepot[-c(6)]
transdepot$url <- "transdepot.net"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/transdepot.csv")
df44_d1 <- df[c(1),c(1:20)]
df44_d1 <- cbind(df44_d1,transdepot)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/transdepot.csv")
df44_d2 <- df[c(2),c(1:20)]
df44_d2 <- cbind(df44_d2,transdepot)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/transdepot.csv")
df44_d3 <- df[c(1),c(1:20)]
df44_d3 <- cbind(df44_d3,transdepot)

############################################ 45 URL ###############################################
truthaboutpetfood_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/truthaboutpetfood.pdf"
truthaboutpetfood_text <- pdf_text(truthaboutpetfood_pdf)
truthaboutpetfood <- str_extract_all(truthaboutpetfood_text,"\\(?[0-9,.]+\\)?")[[2]]
truthaboutpetfood_data <- data.frame(c(truthaboutpetfood[15],truthaboutpetfood[19],truthaboutpetfood[21],truthaboutpetfood[10],truthaboutpetfood[17],truthaboutpetfood[18],truthaboutpetfood[23],truthaboutpetfood[24]))
truthaboutpetfood <- as.data.frame(t(truthaboutpetfood_data))
colnames(truthaboutpetfood) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
truthaboutpetfood$`Avg. Visit Duration` <- paste(truthaboutpetfood$`Avg. Visit Duration`,truthaboutpetfood$ab)
truthaboutpetfood$`Avg. Visit Duration` <- gsub(' ', '.' ,truthaboutpetfood$`Avg. Visit Duration`)
truthaboutpetfood <- truthaboutpetfood[-c(6)]
truthaboutpetfood$url <- "truthaboutpetfood.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/truthaboutpetfood.csv")
df45_d1 <- df[c(1),c(1:20)]
df45_d1 <- cbind(df45_d1,truthaboutpetfood)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/truthaboutpetfood.csv")
df45_d2 <- df[c(2),c(1:20)]
df45_d2 <- cbind(df45_d2,truthaboutpetfood)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/truthaboutpetfood.csv")
df45_d3 <- df[c(1),c(1:20)]
df45_d3 <- cbind(df45_d3,truthaboutpetfood)

############################################ 46 URL ###############################################
tuktukpatrol_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/tuktukpatrol.pdf"
tuktukpatrol_text <- pdf_text(tuktukpatrol_pdf)
tuktukpatrol <- str_extract_all(tuktukpatrol_text,"\\(?[0-9,.]+\\)?")[[2]]
tuktukpatrol_data <- data.frame(c(tuktukpatrol[12],tuktukpatrol[16],tuktukpatrol[18],tuktukpatrol[7],tuktukpatrol[14],tuktukpatrol[15],tuktukpatrol[20],tuktukpatrol[21]))
tuktukpatrol <- as.data.frame(t(tuktukpatrol_data))
colnames(tuktukpatrol) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
tuktukpatrol$`Avg. Visit Duration` <- paste(tuktukpatrol$`Avg. Visit Duration`,tuktukpatrol$ab)
tuktukpatrol$`Avg. Visit Duration` <- gsub(' ', '.' ,tuktukpatrol$`Avg. Visit Duration`)
tuktukpatrol <- tuktukpatrol[-c(6)]
tuktukpatrol$url <- "tuktukpatrol.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tuktukpatrol.csv")
df46_d1 <- df[c(1),c(1:20)]
df46_d1 <- cbind(df46_d1,tuktukpatrol)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tuktukpatrol.csv")
df46_d2 <- df[c(2),c(1:20)]
df46_d2 <- cbind(df46_d2,tuktukpatrol)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tuktukpatrol.csv")
df46_d3 <- df[c(1),c(1:20)]
df46_d3 <- cbind(df46_d3,tuktukpatrol)

############################################ 47 URL ###############################################
tureng_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/tureng.pdf"
tureng_text <- pdf_text(tureng_pdf)
tureng <- str_extract_all(tureng_text,"\\(?[0-9,.]+\\)?")[[2]]
tureng_data <- data.frame(c(tureng[12],tureng[16],tureng[18],tureng[7],tureng[14],tureng[15],tureng[20],tureng[21]))
tureng <- as.data.frame(t(tureng_data))
colnames(tureng) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
tureng$`Avg. Visit Duration` <- paste(tureng$`Avg. Visit Duration`,tureng$ab)
tureng$`Avg. Visit Duration` <- gsub(' ', '.' ,tureng$`Avg. Visit Duration`)
tureng <- tureng[-c(6)]
tureng$url <- "tureng.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tureng.csv")
df47_d1 <- df[c(1),c(1:20)]
df47_d1 <- cbind(df47_d1,tureng)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tureng.csv")
df47_d2 <- df[c(2),c(1:20)]
df47_d2 <- cbind(df47_d2,tureng)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tureng.csv")
df47_d3 <- df[c(1),c(1:20)]
df47_d3 <- cbind(df47_d3,tureng)

############################################ 48 URL ###############################################
turkcealtyazi_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/turkcealtyazi.pdf"
turkcealtyazi_text <- pdf_text(turkcealtyazi_pdf)
turkcealtyazi <- str_extract_all(turkcealtyazi_text,"\\(?[0-9,.]+\\)?")[[2]]
turkcealtyazi_data <- data.frame(c(turkcealtyazi[15],turkcealtyazi[19],turkcealtyazi[21],turkcealtyazi[10],turkcealtyazi[17],turkcealtyazi[18],turkcealtyazi[23],turkcealtyazi[24]))
turkcealtyazi <- as.data.frame(t(turkcealtyazi_data))
colnames(turkcealtyazi) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
turkcealtyazi$`Avg. Visit Duration` <- paste(turkcealtyazi$`Avg. Visit Duration`,turkcealtyazi$ab)
turkcealtyazi$`Avg. Visit Duration` <- gsub(' ', '.' ,turkcealtyazi$`Avg. Visit Duration`)
turkcealtyazi <- turkcealtyazi[-c(6)]
turkcealtyazi$url <- "turkcealtyazi.org"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/turkcealtyazi.csv")
df48_d1 <- df[c(1),c(1:20)]
df48_d1 <- cbind(df48_d1,turkcealtyazi)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/turkcealtyazi.csv")
df48_d2 <- df[c(2),c(1:20)]
df48_d2 <- cbind(df48_d2,turkcealtyazi)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/turkcealtyazi.csv")
df48_d3 <- df[c(1),c(1:20)]
df48_d3 <- cbind(df48_d3,turkcealtyazi)

############################################ 49 URL ###############################################
tvrain_pdf <- "D:/SEM 3/Datasets/GTmatrix/low/low_pdf/tvrain.pdf"
tvrain_text <- pdf_text(tvrain_pdf)
tvrain <- str_extract_all(tvrain_text,"\\(?[0-9,.]+\\)?")[[2]]
tvrain_data <- data.frame(c(tvrain[18],tvrain[22],tvrain[24],tvrain[13],tvrain[20],tvrain[21],tvrain[26],tvrain[27]))
tvrain <- as.data.frame(t(tvrain_data))
colnames(tvrain) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
tvrain$`Avg. Visit Duration` <- paste(tvrain$`Avg. Visit Duration`,tvrain$ab)
tvrain$`Avg. Visit Duration` <- gsub(' ', '.' ,tvrain$`Avg. Visit Duration`)
tvrain <- tvrain[-c(6)]
tvrain$url <- "tvrain.ru"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tvrain.csv")
df49_d1 <- df[c(1),c(1:20)]
df49_d1 <- cbind(df49_d1,tvrain)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tvrain.csv")
df49_d2 <- df[c(2),c(1:20)]
df49_d2 <- cbind(df49_d2,tvrain)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/low/low_csv/tvrain.csv")
df49_d3 <- df[c(1),c(1:20)]
df49_d3 <- cbind(df49_d3,tvrain)

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
setwd("D:/SEM 3/Datasets/GTmatrix/low");
write.csv(df_d1, file = "Data1.csv",row.names=FALSE)
write.csv(df_d2, file = "Data2.csv",row.names=FALSE)
write.csv(df_d3, file = "Data3.csv",row.names=FALSE)

library(corrplot)
corrplot(cor(df_d3, method = "number"))
str(df_d3)
class(df_d3)
