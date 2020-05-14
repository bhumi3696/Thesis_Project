library(pdftools)
library(stringr)
library(dplyr)
library(corrplot)
############################################ 1 URL ###############################################
babycenter_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/babycenter.pdf"
babycenter_text <- pdf_text(babycenter_pdf)
babycenter <- str_extract_all(babycenter_text,"\\(?[0-9,.]+\\)?")[[2]]
babycenter_data <- data.frame(c(babycenter[14],babycenter[18],babycenter[20],babycenter[9],babycenter[16],babycenter[17],babycenter[22],babycenter[23]))
babycenter <- as.data.frame(t(babycenter_data))
colnames(babycenter) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
babycenter$`Avg. Visit Duration` <- paste(babycenter$`Avg. Visit Duration`,babycenter$ab)
babycenter$`Avg. Visit Duration` <- gsub(' ', '.' ,babycenter$`Avg. Visit Duration`)
babycenter <- babycenter[-c(6)]
babycenter$url <- "babycenter.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/babycenter.csv")
df1_d1 <- df[c(1),c(1:20)]
df1_d1 <- cbind(df1_d1,babycenter)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/babycenter.csv")
df1_d2 <- df[c(2),c(1:20)]
df1_d2 <- cbind(df1_d2,babycenter)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/babycenter.csv")
df1_d3 <- df[c(3),c(1:20)]
df1_d3 <- cbind(df1_d3,babycenter)

############################################ 2 URL ###############################################
barclaycardus_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/barclaycardus.pdf"
barclaycardus_text <- pdf_text(barclaycardus_pdf)
barclaycardus <- str_extract_all(barclaycardus_text,"\\(?[0-9,.]+\\)?")[[2]]
barclaycardus_data <- data.frame(c(barclaycardus[12],barclaycardus[16],barclaycardus[18],barclaycardus[7],barclaycardus[14],barclaycardus[15],barclaycardus[20],barclaycardus[21]))
barclaycardus <- as.data.frame(t(barclaycardus_data))
colnames(barclaycardus) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
barclaycardus$`Avg. Visit Duration` <- paste(barclaycardus$`Avg. Visit Duration`,barclaycardus$ab)
barclaycardus$`Avg. Visit Duration` <- gsub(' ', '.' ,barclaycardus$`Avg. Visit Duration`)
barclaycardus <- barclaycardus[-c(6)]
barclaycardus$url <- "barclaycardus.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/barclaycardus.csv")
df2_d1 <- df[c(1),c(1:20)]
df2_d1 <- cbind(df2_d1,barclaycardus)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/barclaycardus.csv")
df2_d2 <- df[c(1),c(1:20)]
df2_d2 <- cbind(df2_d2,barclaycardus)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/barclaycardus.csv")
df2_d3 <- df[c(3),c(1:20)]
df2_d3 <- cbind(df2_d3,barclaycardus)

############################################ 3 URL ###############################################
bhg_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/bhg.pdf"
bhg_text <- pdf_text(bhg_pdf)
bhg <- str_extract_all(bhg_text,"\\(?[0-9,.]+\\)?")[[2]]
bhg_data <- data.frame(c(bhg[15],bhg[19],bhg[21],bhg[10],bhg[17],bhg[18],bhg[23],bhg[24]))
bhg <- as.data.frame(t(bhg_data))
colnames(bhg) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
bhg$`Avg. Visit Duration` <- paste(bhg$`Avg. Visit Duration`,bhg$ab)
bhg$`Avg. Visit Duration` <- gsub(' ', '.' ,bhg$`Avg. Visit Duration`)
bhg <- bhg[-c(6)]
bhg$url <- "bhg.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/bhg.csv")
df3_d1 <- df[c(1),c(1:20)]
df3_d1 <- cbind(df3_d1,bhg)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/bhg.csv")
df3_d2 <- df[c(2),c(1:20)]
df3_d2 <- cbind(df3_d2,bhg)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/bhg.csv")
df3_d3 <- df[c(1),c(1:20)]
df3_d3 <- cbind(df3_d3,bhg)

############################################ 4 URL ###############################################
billboard_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/billboard.pdf"
billboard_text <- pdf_text(billboard_pdf)
billboard <- str_extract_all(billboard_text,"\\(?[0-9,.]+\\)?")[[2]]
billboard_data <- data.frame(c(billboard[12],billboard[16],billboard[18],billboard[7],billboard[14],billboard[15],billboard[20],billboard[21]))
billboard <- as.data.frame(t(billboard_data))
colnames(billboard) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
billboard$`Avg. Visit Duration` <- paste(billboard$`Avg. Visit Duration`,billboard$ab)
billboard$`Avg. Visit Duration` <- gsub(' ', '.' ,billboard$`Avg. Visit Duration`)
billboard <- billboard[-c(6)]
billboard$url <- "https://subscribe.billboard.com/sub/?p=BBL&amp;f=sale&amp;s=IB1404NS08"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/billboard.csv")
df4_d1 <- df[c(1),c(1:20)]
df4_d1 <- cbind(df4_d1,billboard)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/billboard.csv")
df4_d2 <- df[c(1),c(1:20)]
df4_d2 <- cbind(df4_d2,billboard)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/billboard.csv")
df4_d3 <- df[c(1),c(1:20)]
df4_d3 <- cbind(df4_d3,billboard)

############################################ 5 URL ###############################################
businessinsider_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/businessinsider.pdf"
businessinsider_text <- pdf_text(businessinsider_pdf)
businessinsider <- str_extract_all(businessinsider_text,"\\(?[0-9,.]+\\)?")[[2]]
businessinsider_data <- data.frame(c(businessinsider[16],businessinsider[20],businessinsider[22],businessinsider[11],businessinsider[19],businessinsider[24],businessinsider[25]))
businessinsider <- as.data.frame(t(businessinsider_data))
colnames(businessinsider) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","Pages Per Visit","Bounce Rate")
businessinsider$url <- "https://www.businessinsider.com/international?r=US&amp;amp;IR=T"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/businessinsider.csv")
df5_d1 <- df[c(1),c(1:20)]
df5_d1 <- cbind(df5_d1,businessinsider)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/businessinsider.csv")
df5_d2 <- df[c(2),c(1:20)]
df5_d2 <- cbind(df5_d2,businessinsider)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/businessinsider.csv")
df5_d3 <- df[c(1),c(1:20)]
df5_d3 <- cbind(df5_d3,businessinsider)

############################################ 6 URL ###############################################
buzzfeed_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/buzzfeed.pdf"
buzzfeed_text <- pdf_text(buzzfeed_pdf)
buzzfeed <- str_extract_all(buzzfeed_text,"\\(?[0-9,.]+\\)?")[[2]]
buzzfeed_data <- data.frame(c(buzzfeed[22],buzzfeed[26],buzzfeed[28],buzzfeed[17],buzzfeed[24],buzzfeed[25],buzzfeed[30],buzzfeed[31]))
buzzfeed <- as.data.frame(t(buzzfeed_data))
colnames(buzzfeed) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
buzzfeed$`Avg. Visit Duration` <- paste(buzzfeed$`Avg. Visit Duration`,buzzfeed$ab)
buzzfeed$`Avg. Visit Duration` <- gsub(' ', '.' ,buzzfeed$`Avg. Visit Duration`)
buzzfeed <- buzzfeed[-c(6)]
buzzfeed$url <- "https://www.buzzfeednews.com/article/juliareinstein/jews-against-ice-never-again-immigration-concentration-camp"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/buzzfeed.csv")
df6_d1 <- df[c(1),c(1:20)]
df6_d1 <- cbind(df6_d1,buzzfeed)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/buzzfeed.csv")
df6_d2 <- df[c(3),c(1:20)]
df6_d2 <- cbind(df6_d2,buzzfeed)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/buzzfeed.csv")
df6_d3 <- df[c(4),c(1:20)]
df6_d3 <- cbind(df6_d3,buzzfeed)

############################################ 7 URL ###############################################
cancer_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/cancer.pdf"
cancer_text <- pdf_text(cancer_pdf)
cancer <- str_extract_all(cancer_text,"\\(?[0-9,.]+\\)?")[[2]]
cancer_data <- data.frame(c(cancer[16],cancer[20],cancer[22],cancer[11],cancer[18],cancer[19],cancer[24],cancer[25]))
cancer <- as.data.frame(t(cancer_data))
colnames(cancer) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cancer$`Avg. Visit Duration` <- paste(cancer$`Avg. Visit Duration`,cancer$ab)
cancer$`Avg. Visit Duration` <- gsub(' ', '.' ,cancer$`Avg. Visit Duration`)
cancer <- cancer[-c(6)]
cancer$url <- "cancer.org"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/canceer.csv")
df7_d1 <- df[c(1),c(1:20)]
df7_d1 <- cbind(df7_d1,cancer)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/canceer.csv")
df7_d2 <- df[c(3),c(1:20)]
df7_d2 <- cbind(df7_d2,cancer)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/canceer.csv")
df7_d3 <- df[c(2),c(1:20)]
df7_d3 <- cbind(df7_d3,cancer)

############################################ 8 URL ###############################################
carid_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/carid.pdf"
carid_text <- pdf_text(carid_pdf)
carid <- str_extract_all(carid_text,"\\(?[0-9,.]+\\)?")[[2]]
carid_data <- data.frame(c(carid[10],carid[14],carid[16],carid[5],carid[12],carid[13],carid[18],carid[19]))
carid <- as.data.frame(t(carid_data))
colnames(carid) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
carid$`Avg. Visit Duration` <- paste(carid$`Avg. Visit Duration`,carid$ab)
carid$`Avg. Visit Duration` <- gsub(' ', '.' ,carid$`Avg. Visit Duration`)
carid <- carid[-c(6)]
carid$url <- "carid.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/carid.csv")
df8_d1 <- df[c(1),c(1:20)]
df8_d1 <- cbind(df8_d1,carid)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/carid.csv")
df8_d2 <- df[c(5),c(1:20)]
df8_d2 <- cbind(df8_d2,carid)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/carid.csv")
df8_d3 <- df[c(3),c(1:20)]
df8_d3 <- cbind(df8_d3,carid)

############################################ 9 URL ###############################################
cbsnews_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/cbsnews.pdf"
cbsnews_text <- pdf_text(cbsnews_pdf)
cbsnews <- str_extract_all(cbsnews_text,"\\(?[0-9,.]+\\)?")[[2]]
cbsnews_data <- data.frame(c(cbsnews[12],cbsnews[16],cbsnews[18],cbsnews[7],cbsnews[14],cbsnews[15],cbsnews[20],cbsnews[21]))
cbsnews <- as.data.frame(t(cbsnews_data))
colnames(cbsnews) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cbsnews$`Avg. Visit Duration` <- paste(cbsnews$`Avg. Visit Duration`,cbsnews$ab)
cbsnews$`Avg. Visit Duration` <- gsub(' ', '.' ,cbsnews$`Avg. Visit Duration`)
cbsnews <- cbsnews[-c(6)]
cbsnews$url <- "https://cbsi.secure.force.com/CBSi/knowledgehome2?categories=CBS_Interactive:CBSNews&amp;referer=cbsnews.com/main"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cbsnews.csv")
df9_d1 <- df[c(1),c(1:20)]
df9_d1 <- cbind(df9_d1,cbsnews)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cbsnews.csv")
df9_d2 <- df[c(1),c(1:20)]
df9_d2 <- cbind(df9_d2,cbsnews)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cbsnews.csv")
df9_d3 <- df[c(1),c(1:20)]
df9_d3 <- cbind(df9_d3,cbsnews)

############################################ 10 URL ###############################################
cbssports_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/cbssports.pdf"
cbssports_text <- pdf_text(cbssports_pdf)
cbssports <- str_extract_all(cbssports_text,"\\(?[0-9,.]+\\)?")[[2]]
cbssports_data <- data.frame(c(cbssports[18],cbssports[22],cbssports[24],cbssports[13],cbssports[20],cbssports[21],cbssports[26],cbssports[27]))
cbssports <- as.data.frame(t(cbssports_data))
colnames(cbssports) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cbssports$`Avg. Visit Duration` <- paste(cbssports$`Avg. Visit Duration`,cbssports$ab)
cbssports$`Avg. Visit Duration` <- gsub(' ', '.' ,cbssports$`Avg. Visit Duration`)
cbssports <- cbssports[-c(6)]
cbssports$url <- "http://shop.cbssports.com/?utm_source=cbssportscom_hp&amp;utm_medium=bm_referral&amp;utm_term=kw--CBS_Sports"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cbssports.csv")
df10_d1 <- df[c(1),c(1:20)]
df10_d1 <- cbind(df10_d1,cbssports)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cbssports.csv")
df10_d2 <- df[c(2),c(1:20)]
df10_d2 <- cbind(df10_d2,cbssports)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cbssports.csv")
df10_d3 <- df[c(1),c(1:20)]
df10_d3 <- cbind(df10_d3,cbssports)

############################################ 11 URL ###############################################
cheapoair_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/cheapoair.pdf"
cheapoair_text <- pdf_text(cheapoair_pdf)
cheapoair <- str_extract_all(cheapoair_text,"\\(?[0-9,.]+\\)?")[[2]]
cheapoair_data <- data.frame(c(cheapoair[12],cheapoair[16],cheapoair[18],cheapoair[7],cheapoair[14],cheapoair[15],cheapoair[20],cheapoair[21]))
cheapoair <- as.data.frame(t(cheapoair_data))
colnames(cheapoair) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cheapoair$`Avg. Visit Duration` <- paste(cheapoair$`Avg. Visit Duration`,cheapoair$ab)
cheapoair$`Avg. Visit Duration` <- gsub(' ', '.' ,cheapoair$`Avg. Visit Duration`)
cheapoair <- cheapoair[-c(6)]
cheapoair$url <- "cheapoair.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cheapoair.csv")
df11_d1 <- df[c(1),c(1:20)]
df11_d1 <- cbind(df11_d1,cheapoair)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cheapoair.csv")
df11_d2 <- df[c(2),c(1:20)]
df11_d2 <- cbind(df11_d2,cheapoair)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cheapoair.csv")
df11_d3 <- df[c(3),c(1:20)]
df11_d3 <- cbind(df11_d3,cheapoair)

############################################ 12 URL ###############################################
chron_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/chron.pdf"
chron_text <- pdf_text(chron_pdf)
chron <- str_extract_all(chron_text,"\\(?[0-9,.]+\\)?")[[2]]
chron_data <- data.frame(c(chron[15],chron[19],chron[21],chron[10],chron[17],chron[18],chron[23],chron[24]))
chron <- as.data.frame(t(chron_data))
colnames(chron) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
chron$`Avg. Visit Duration` <- paste(chron$`Avg. Visit Duration`,chron$ab)
chron$`Avg. Visit Duration` <- gsub(' ', '.' ,chron$`Avg. Visit Duration`)
chron <- chron[-c(6)]
chron$url <- "chron.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/chron.csv")
df12_d1 <- df[c(1),c(1:20)]
df12_d1 <- cbind(df12_d1,chron)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/chron.csv")
df12_d2 <- df[c(1),c(1:20)]
df12_d2 <- cbind(df12_d2,chron)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/chron.csv")
df12_d3 <- df[c(1),c(1:20)]
df12_d3 <- cbind(df12_d3,chron)

############################################ 13 URL ###############################################
cinemablend_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/cinemablend.pdf"
cinemablend_text <- pdf_text(cinemablend_pdf)
cinemablend <- str_extract_all(cinemablend_text,"\\(?[0-9,.]+\\)?")[[2]]
cinemablend_data <- data.frame(c(cinemablend[13],cinemablend[17],cinemablend[19],cinemablend[8],cinemablend[15],cinemablend[16],cinemablend[21],cinemablend[22]))
cinemablend <- as.data.frame(t(cinemablend_data))
colnames(cinemablend) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cinemablend$`Avg. Visit Duration` <- paste(cinemablend$`Avg. Visit Duration`,cinemablend$ab)
cinemablend$`Avg. Visit Duration` <- gsub(' ', '.' ,cinemablend$`Avg. Visit Duration`)
cinemablend <- cinemablend[-c(6)]
cinemablend$url <- "cinemablend.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cinemablend.csv")
df13_d1 <- df[c(1),c(1:20)]
df13_d1 <- cbind(df13_d1,cinemablend)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cinemablend.csv")
df13_d2 <- df[c(2),c(1:20)]
df13_d2 <- cbind(df13_d2,cinemablend)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cinemablend.csv")
df13_d3 <- df[c(3),c(1:20)]
df13_d3 <- cbind(df13_d3,cinemablend)



############################################ 14 URL ###############################################
cnbc_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/cnbc.pdf"
cnbc_text <- pdf_text(cnbc_pdf)
cnbc <- str_extract_all(cnbc_text,"\\(?[0-9,.]+\\)?")[[2]]
cnbc_data <- data.frame(c(cnbc[13],cnbc[17],cnbc[19],cnbc[8],cnbc[15],cnbc[16],cnbc[21],cnbc[22]))
cnbc <- as.data.frame(t(cnbc_data))
colnames(cnbc) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cnbc$`Avg. Visit Duration` <- paste(cnbc$`Avg. Visit Duration`,cnbc$ab)
cnbc$`Avg. Visit Duration` <- gsub(' ', '.' ,cnbc$`Avg. Visit Duration`)
cnbc <- cnbc[-c(6)]
cnbc$url <- "cnbc.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cnbc.csv")
df14_d1 <- df[c(1),c(1:20)]
df14_d1 <- cbind(df14_d1,cnbc)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cnbc.csv")
df14_d2 <- df[c(2),c(1:20)]
df14_d2 <- cbind(df14_d2,cnbc)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cnbc.csv")
df14_d3 <- df[c(3),c(1:20)]
df14_d3 <- cbind(df14_d3,cnbc)

############################################ 15 URL ###############################################
cruisecritic_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/cruisecritic.pdf"
cruisecritic_text <- pdf_text(cruisecritic_pdf)
cruisecritic <- str_extract_all(cruisecritic_text,"\\(?[0-9,.]+\\)?")[[2]]
cruisecritic_data <- data.frame(c(cruisecritic[16],cruisecritic[20],cruisecritic[22],cruisecritic[11],cruisecritic[18],cruisecritic[19],cruisecritic[24],cruisecritic[25]))
cruisecritic <- as.data.frame(t(cruisecritic_data))
colnames(cruisecritic) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
cruisecritic$`Avg. Visit Duration` <- paste(cruisecritic$`Avg. Visit Duration`,cruisecritic$ab)
cruisecritic$`Avg. Visit Duration` <- gsub(' ', '.' ,cruisecritic$`Avg. Visit Duration`)
cruisecritic <- cruisecritic[-c(6)]
cruisecritic$url <- "cruisecritic.co.uk"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cruisecritic.csv")
df15_d1 <- df[c(1),c(1:20)]
df15_d1 <- cbind(df15_d1,cruisecritic)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cruisecritic.csv")
df15_d2 <- df[c(1),c(1:20)]
df15_d2 <- cbind(df15_d2,cruisecritic)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/cruisecritic.csv")
df15_d3 <- df[c(1),c(1:20)]
df15_d3 <- cbind(df15_d3,cruisecritic)

############################################ 16 URL ###############################################
knowyourmeme_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/knowyourmeme.pdf"
knowyourmeme_text <- pdf_text(knowyourmeme_pdf)
knowyourmeme <- str_extract_all(knowyourmeme_text,"\\(?[0-9,.]+\\)?")[[2]]
knowyourmeme_data <- data.frame(c(knowyourmeme[14],knowyourmeme[18],knowyourmeme[20],knowyourmeme[9],knowyourmeme[16],knowyourmeme[17],knowyourmeme[22],knowyourmeme[23]))
knowyourmeme <- as.data.frame(t(knowyourmeme_data))
colnames(knowyourmeme) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
knowyourmeme$`Avg. Visit Duration` <- paste(knowyourmeme$`Avg. Visit Duration`,knowyourmeme$ab)
knowyourmeme$`Avg. Visit Duration` <- gsub(' ', '.' ,knowyourmeme$`Avg. Visit Duration`)
knowyourmeme <- knowyourmeme[-c(6)]
knowyourmeme$url <- "knowyourmeme.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/knowyourmeme.csv")
df16_d1 <- df[c(1),c(1:20)]
df16_d1 <- cbind(df16_d1,knowyourmeme)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/knowyourmeme.csv")
df16_d2 <- df[c(1),c(1:20)]
df16_d2 <- cbind(df16_d2,knowyourmeme)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/knowyourmeme.csv")
df16_d3 <- df[c(1),c(1:20)]
df16_d3 <- cbind(df16_d3,knowyourmeme)

############################################ 17 URL ###############################################
kohls_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/kohls.pdf"
kohls_text <- pdf_text(kohls_pdf)
kohls <- str_extract_all(kohls_text,"\\(?[0-9,.]+\\)?")[[2]]
kohls_data <- data.frame(c(kohls[15],kohls[19],kohls[21],kohls[10],kohls[17],kohls[18],kohls[23],kohls[24]))
kohls <- as.data.frame(t(kohls_data))
colnames(kohls) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
kohls$`Avg. Visit Duration` <- paste(kohls$`Avg. Visit Duration`,kohls$ab)
kohls$`Avg. Visit Duration` <- gsub(' ', '.' ,kohls$`Avg. Visit Duration`)
kohls <- kohls[-c(6)]
kohls$url <- "kohls.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/kohls.csv")
df17_d1 <- df[c(1),c(1:20)]
df17_d1 <- cbind(df17_d1,kohls)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/kohls.csv")
df17_d2 <- df[c(2),c(1:20)]
df17_d2 <- cbind(df17_d2,kohls)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/kohls.csv")
df17_d3 <- df[c(1),c(1:20)]
df17_d3 <- cbind(df17_d3,kohls)

############################################ 18 URL ###############################################
kotaku_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/kotaku.pdf"
kotaku_text <- pdf_text(kotaku_pdf)
kotaku <- str_extract_all(kotaku_text,"\\(?[0-9,.]+\\)?")[[2]]
kotaku_data <- data.frame(c(kotaku[13],kotaku[17],kotaku[19],kotaku[8],kotaku[15],kotaku[16],kotaku[21],kotaku[22]))
kotaku <- as.data.frame(t(kotaku_data))
colnames(kotaku) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
kotaku$`Avg. Visit Duration` <- paste(kotaku$`Avg. Visit Duration`,kotaku$ab)
kotaku$`Avg. Visit Duration` <- gsub(' ', '.' ,kotaku$`Avg. Visit Duration`)
kotaku <- kotaku[-c(6)]
kotaku$url <- "kotaku.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/kotaku.csv")
df18_d1 <- df[c(1),c(1:20)]
df18_d1 <- cbind(df18_d1,kotaku)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/kotaku.csv")
df18_d2 <- df[c(2),c(1:20)]
df18_d2 <- cbind(df18_d2,kotaku)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/kotaku.csv")
df18_d3 <- df[c(1),c(1:20)]
df18_d3 <- cbind(df18_d3,kotaku)

############################################ 19 URL ###############################################
nationalgeographic_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/nationalgeographic.pdf"
nationalgeographic_text <- pdf_text(nationalgeographic_pdf)
nationalgeographic <- str_extract_all(nationalgeographic_text,"\\(?[0-9,.]+\\)?")[[2]]
nationalgeographic_data <- data.frame(c(nationalgeographic[13],nationalgeographic[17],nationalgeographic[19],nationalgeographic[8],nationalgeographic[15],nationalgeographic[16],nationalgeographic[21],nationalgeographic[22]))
nationalgeographic <- as.data.frame(t(nationalgeographic_data))
colnames(nationalgeographic) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
nationalgeographic$`Avg. Visit Duration` <- paste(nationalgeographic$`Avg. Visit Duration`,nationalgeographic$ab)
nationalgeographic$`Avg. Visit Duration` <- gsub(' ', '.' ,nationalgeographic$`Avg. Visit Duration`)
nationalgeographic <- nationalgeographic[-c(6)]
nationalgeographic$url <- "nationalgeographic.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nationalgeographic.csv")
df19_d1 <- df[c(1),c(1:20)]
df19_d1 <- cbind(df19_d1,nationalgeographic)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nationalgeographic.csv")
df19_d2 <- df[c(1),c(1:20)]
df19_d2 <- cbind(df19_d2,nationalgeographic)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nationalgeographic.csv")
df19_d3 <- df[c(1),c(1:20)]
df19_d3 <- cbind(df19_d3,nationalgeographic)

############################################ 20 URL ###############################################
nationalreview_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/nationalreview.pdf"
nationalreview_text <- pdf_text(nationalreview_pdf)
nationalreview <- str_extract_all(nationalreview_text,"\\(?[0-9,.]+\\)?")[[2]]
nationalreview_data <- data.frame(c(nationalreview[14],nationalreview[18],nationalreview[20],nationalreview[9],nationalreview[16],nationalreview[17],nationalreview[22],nationalreview[23]))
nationalreview <- as.data.frame(t(nationalreview_data))
colnames(nationalreview) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
nationalreview$`Avg. Visit Duration` <- paste(nationalreview$`Avg. Visit Duration`,nationalreview$ab)
nationalreview$`Avg. Visit Duration` <- gsub(' ', '.' ,nationalreview$`Avg. Visit Duration`)
nationalreview <- nationalreview[-c(6)]
nationalreview$url <- "nationalreview.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nationalreview.csv")
df20_d1 <- df[c(1),c(1:20)]
df20_d1 <- cbind(df20_d1,nationalreview)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nationalreview.csv")
df20_d2 <- df[c(1),c(1:20)]
df20_d2 <- cbind(df20_d2,nationalreview)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nationalreview.csv")
df20_d3 <- df[c(1),c(1:20)]
df20_d3 <- cbind(df20_d3,nationalreview)

############################################ 21 URL ###############################################
nesn_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/nesn.pdf"
nesn_text <- pdf_text(nesn_pdf)
nesn <- str_extract_all(nesn_text,"\\(?[0-9,.]+\\)?")[[2]]
nesn_data <- data.frame(c(nesn[15],nesn[19],nesn[21],nesn[10],nesn[17],nesn[18],nesn[23],nesn[24]))
nesn <- as.data.frame(t(nesn_data))
colnames(nesn) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
nesn$`Avg. Visit Duration` <- paste(nesn$`Avg. Visit Duration`,nesn$ab)
nesn$`Avg. Visit Duration` <- gsub(' ', '.' ,nesn$`Avg. Visit Duration`)
nesn <- nesn[-c(6)]
nesn$url <- "nesn.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nesn.csv")
df21_d1 <- df[c(1),c(1:20)]
df21_d1 <- cbind(df21_d1,nesn)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nesn.csv")
df21_d2 <- df[c(1),c(1:20)]
df21_d2 <- cbind(df21_d2,nesn)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nesn.csv")
df21_d3 <- df[c(1),c(1:20)]
df21_d3 <- cbind(df21_d3,nesn)

############################################ 22 URL ###############################################
newegg_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/newegg.pdf"
newegg_text <- pdf_text(newegg_pdf)
newegg <- str_extract_all(newegg_text,"\\(?[0-9,.]+\\)?")[[2]]
newegg_data <- data.frame(c(newegg[10],newegg[14],newegg[16],newegg[5],newegg[12],newegg[13],newegg[18],newegg[19]))
newegg <- as.data.frame(t(newegg_data))
colnames(newegg) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
newegg$`Avg. Visit Duration` <- paste(newegg$`Avg. Visit Duration`,newegg$ab)
newegg$`Avg. Visit Duration` <- gsub(' ', '.' ,newegg$`Avg. Visit Duration`)
newegg <- newegg[-c(6)]
newegg$url <- "newegg.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/newegg.csv")
df22_d1 <- df[c(1),c(1:20)]
df22_d1 <- cbind(df22_d1,newegg)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/newegg.csv")
df22_d2 <- df[c(2),c(1:20)]
df22_d2 <- cbind(df22_d2,newegg)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/newegg.csv")
df22_d3 <- df[c(3),c(1:20)]
df22_d3 <- cbind(df22_d3,newegg)

############################################ 23 URL ###############################################
newyorker_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/newyorker.pdf"
newyorker_text <- pdf_text(newyorker_pdf)
newyorker <- str_extract_all(newyorker_text,"\\(?[0-9,.]+\\)?")[[2]]
newyorker_data <- data.frame(c(newyorker[17],newyorker[21],newyorker[23],newyorker[12],newyorker[19],newyorker[20],newyorker[25],newyorker[26]))
newyorker <- as.data.frame(t(newyorker_data))
colnames(newyorker) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
newyorker$`Avg. Visit Duration` <- paste(newyorker$`Avg. Visit Duration`,newyorker$ab)
newyorker$`Avg. Visit Duration` <- gsub(' ', '.' ,newyorker$`Avg. Visit Duration`)
newyorker <- newyorker[-c(6)]
newyorker$url <- "newyorker.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/newyorker.csv")
df23_d1 <- df[c(1),c(1:20)]
df23_d1 <- cbind(df23_d1,newyorker)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/newyorker.csv")
df23_d2 <- df[c(2),c(1:20)]
df23_d2 <- cbind(df23_d2,newyorker)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/newyorker.csv")
df23_d3 <- df[c(3),c(1:20)]
df23_d3 <- cbind(df23_d3,newyorker)

############################################ 24 URL ###############################################
nfl_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/nfl.pdf"
nfl_text <- pdf_text(nfl_pdf)
nfl <- str_extract_all(nfl_text,"\\(?[0-9,.]+\\)?")[[2]]
nfl_data <- data.frame(c(nfl[17],nfl[21],nfl[23],nfl[12],nfl[19],nfl[20],nfl[25],nfl[26]))
nfl <- as.data.frame(t(nfl_data))
colnames(nfl) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
nfl$`Avg. Visit Duration` <- paste(nfl$`Avg. Visit Duration`,nfl$ab)
nfl$`Avg. Visit Duration` <- gsub(' ', '.' ,nfl$`Avg. Visit Duration`)
nfl <- nfl[-c(6)]
nfl$url <- "nfl.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nfl.csv")
df24_d1 <- df[c(1),c(1:20)]
df24_d1 <- cbind(df24_d1,nfl)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nfl.csv")
df24_d2 <- df[c(2),c(1:20)]
df24_d2 <- cbind(df24_d2,nfl)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nfl.csv")
df24_d3 <- df[c(3),c(1:20)]
df24_d3 <- cbind(df24_d3,nfl)

############################################ 25 URL ###############################################
nytimes_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/nytimes.pdf"
nytimes_text <- pdf_text(nytimes_pdf)
nytimes <- str_extract_all(nytimes_text,"\\(?[0-9,.]+\\)?")[[2]]
nytimes_data <- data.frame(c(nytimes[23],nytimes[27],nytimes[29],nytimes[18],nytimes[25],nytimes[26],nytimes[31],nytimes[32]))
nytimes <- as.data.frame(t(nytimes_data))
colnames(nytimes) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
nytimes$`Avg. Visit Duration` <- paste(nytimes$`Avg. Visit Duration`,nytimes$ab)
nytimes$`Avg. Visit Duration` <- gsub(' ', '.' ,nytimes$`Avg. Visit Duration`)
nytimes <- nytimes[-c(6)]
nytimes$url <- "nytimes.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nytimes.csv")
df25_d1 <- df[c(1),c(1:20)]
df25_d1 <- cbind(df25_d1,nytimes)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nytimes.csv")
df25_d2 <- df[c(2),c(1:20)]
df25_d2 <- cbind(df25_d2,nytimes)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/nytimes.csv")
df25_d3 <- df[c(3),c(1:20)]
df25_d3 <- cbind(df25_d3,nytimes)

############################################ 26 URL ###############################################
observer_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/observer.pdf"
observer_text <- pdf_text(observer_pdf)
observer <- str_extract_all(observer_text,"\\(?[0-9,.]+\\)?")[[2]]
observer_data <- data.frame(c(observer[14],observer[18],observer[20],observer[9],observer[16],observer[17],observer[22],observer[23]))
observer <- as.data.frame(t(observer_data))
colnames(observer) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
observer$`Avg. Visit Duration` <- paste(observer$`Avg. Visit Duration`,observer$ab)
observer$`Avg. Visit Duration` <- gsub(' ', '.' ,observer$`Avg. Visit Duration`)
observer <- observer[-c(6)]
observer$url <- "observer.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/observer.csv")
df26_d1 <- df[c(1),c(1:20)]
df26_d1 <- cbind(df26_d1,observer)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/observer.csv")
df26_d2 <- df[c(1),c(1:20)]
df26_d2 <- cbind(df26_d2,observer)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/observer.csv")
df26_d3 <- df[c(1),c(1:20)]
df26_d3 <- cbind(df26_d3,observer)

############################################ 27 URL ###############################################
oregonlive_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/oregonlive.pdf"
oregonlive_text <- pdf_text(oregonlive_pdf)
oregonlive <- str_extract_all(oregonlive_text,"\\(?[0-9,.]+\\)?")[[2]]
oregonlive_data <- data.frame(c(oregonlive[16],oregonlive[20],oregonlive[22],oregonlive[11],oregonlive[18],oregonlive[19],oregonlive[24],oregonlive[25]))
oregonlive <- as.data.frame(t(oregonlive_data))
colnames(oregonlive) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
oregonlive$`Avg. Visit Duration` <- paste(oregonlive$`Avg. Visit Duration`,oregonlive$ab)
oregonlive$`Avg. Visit Duration` <- gsub(' ', '.' ,oregonlive$`Avg. Visit Duration`)
oregonlive <- oregonlive[-c(6)]
oregonlive$url <- "oregonlive.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/oregonlive.csv")
df27_d1 <- df[c(1),c(1:20)]
df27_d1 <- cbind(df27_d1,oregonlive)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/oregonlive.csv")
df27_d2 <- df[c(1),c(1:20)]
df27_d2 <- cbind(df27_d2,oregonlive)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/oregonlive.csv")
df27_d3 <- df[c(1),c(1:20)]
df27_d3 <- cbind(df27_d3,oregonlive)

############################################ 28 URL ###############################################
outdoorchannel_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/outdoorchannel.pdf"
outdoorchannel_text <- pdf_text(outdoorchannel_pdf)
outdoorchannel <- str_extract_all(outdoorchannel_text,"\\(?[0-9,.]+\\)?")[[2]]
outdoorchannel_data <- data.frame(c(outdoorchannel[10],outdoorchannel[14],outdoorchannel[16],outdoorchannel[5],outdoorchannel[12],outdoorchannel[13],outdoorchannel[18],outdoorchannel[19]))
outdoorchannel <- as.data.frame(t(outdoorchannel_data))
colnames(outdoorchannel) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
outdoorchannel$`Avg. Visit Duration` <- paste(outdoorchannel$`Avg. Visit Duration`,outdoorchannel$ab)
outdoorchannel$`Avg. Visit Duration` <- gsub(' ', '.' ,outdoorchannel$`Avg. Visit Duration`)
outdoorchannel <- outdoorchannel[-c(6)]
outdoorchannel$url <- "outdoorchannel.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/outdoorchannel.csv")
df28_d1 <- df[c(1),c(1:20)]
df28_d1 <- cbind(df28_d1,outdoorchannel)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/outdoorchannel.csv")
df28_d2 <- df[c(1),c(1:20)]
df28_d2 <- cbind(df28_d2,outdoorchannel)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/outdoorchannel.csv")
df28_d3 <- df[c(1),c(1:20)]
df28_d3 <- cbind(df28_d3,outdoorchannel)

############################################ 29 URL ###############################################
skysports_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/skysports.pdf"
skysports_text <- pdf_text(skysports_pdf)
skysports <- str_extract_all(skysports_text,"\\(?[0-9,.]+\\)?")[[2]]
skysports_data <- data.frame(c(skysports[19],skysports[23],skysports[25],skysports[14],skysports[21],skysports[22],skysports[27],skysports[28]))
skysports <- as.data.frame(t(skysports_data))
colnames(skysports) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
skysports$`Avg. Visit Duration` <- paste(skysports$`Avg. Visit Duration`,skysports$ab)
skysports$`Avg. Visit Duration` <- gsub(' ', '.' ,skysports$`Avg. Visit Duration`)
skysports <- skysports[-c(6)]
skysports$url <- "skysports.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/skysports.csv")
df29_d1 <- df[c(1),c(1:20)]
df29_d1 <- cbind(df29_d1,skysports)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/skysports.csv")
df29_d2 <- df[c(2),c(1:20)]
df29_d2 <- cbind(df29_d2,skysports)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/skysports.csv")
df29_d3 <- df[c(3),c(1:20)]
df29_d3 <- cbind(df29_d3,skysports)

############################################ 30 URL ###############################################
techcrunch_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/techcrunch.pdf"
techcrunch_text <- pdf_text(techcrunch_pdf)
techcrunch <- str_extract_all(techcrunch_text,"\\(?[0-9,.]+\\)?")[[2]]
techcrunch_data <- data.frame(c(techcrunch[13],techcrunch[17],techcrunch[19],techcrunch[8],techcrunch[15],techcrunch[16],techcrunch[21],techcrunch[22]))
techcrunch <- as.data.frame(t(techcrunch_data))
colnames(techcrunch) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
techcrunch$`Avg. Visit Duration` <- paste(techcrunch$`Avg. Visit Duration`,techcrunch$ab)
techcrunch$`Avg. Visit Duration` <- gsub(' ', '.' ,techcrunch$`Avg. Visit Duration`)
techcrunch <- techcrunch[-c(6)]
techcrunch$url <- "techcrunch.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/techcrunch.csv")
df30_d1 <- df[c(1),c(1:20)]
df30_d1 <- cbind(df30_d1,techcrunch)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/techcrunch.csv")
df30_d2 <- df[c(2),c(1:20)]
df30_d2 <- cbind(df30_d2,techcrunch)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/techcrunch.csv")
df30_d3 <- df[c(3),c(1:20)]
df30_d3 <- cbind(df30_d3,techcrunch)

############################################ 31 URL ###############################################
techradar_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/techradar.pdf"
techradar_text <- pdf_text(techradar_pdf)
techradar <- str_extract_all(techradar_text,"\\(?[0-9,.]+\\)?")[[2]]
techradar_data <- data.frame(c(techradar[13],techradar[17],techradar[19],techradar[8],techradar[15],techradar[16],techradar[21],techradar[22]))
techradar <- as.data.frame(t(techradar_data))
colnames(techradar) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
techradar$`Avg. Visit Duration` <- paste(techradar$`Avg. Visit Duration`,nytimes$ab)
techradar$`Avg. Visit Duration` <- gsub(' ', '.' ,techradar$`Avg. Visit Duration`)
techradar <- techradar[-c(6)]
techradar$url <- "techradar.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/techradar.csv")
df31_d1 <- df[c(1),c(1:20)]
df31_d1 <- cbind(df31_d1,techradar)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/techradar.csv")
df31_d2 <- df[c(2),c(1:20)]
df31_d2 <- cbind(df31_d2,techradar)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/techradar.csv")
df31_d3 <- df[c(3),c(1:20)]
df31_d3 <- cbind(df31_d3,techradar)

############################################ 32 URL ###############################################
ted_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/ted.pdf"
ted_text <- pdf_text(ted_pdf)
ted <- str_extract_all(ted_text,"\\(?[0-9,.]+\\)?")[[2]]
ted_data <- data.frame(c(ted[17],ted[21],ted[23],ted[12],ted[19],ted[20],ted[25],ted[26]))
ted <- as.data.frame(t(ted_data))
colnames(ted) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
ted$`Avg. Visit Duration` <- paste(ted$`Avg. Visit Duration`,ted$ab)
ted$`Avg. Visit Duration` <- gsub(' ', '.' ,ted$`Avg. Visit Duration`)
ted <- ted[-c(6)]
ted$url <- "ted.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/ted.csv")
df32_d1 <- df[c(1),c(1:20)]
df32_d1 <- cbind(df32_d1,ted)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/ted.csv")
df32_d2 <- df[c(1),c(1:20)]
df32_d2 <- cbind(df32_d2,ted)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/ted.csv")
df32_d3 <- df[c(1),c(1:20)]
df32_d3 <- cbind(df32_d3,ted)

############################################ 33 URL ###############################################
thechive_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/thechive.pdf"
thechive_text <- pdf_text(thechive_pdf)
thechive <- str_extract_all(thechive_text,"\\(?[0-9,.]+\\)?")[[2]]
thechive_data <- data.frame(c(thechive[15],thechive[19],thechive[21],thechive[10],thechive[17],thechive[18],thechive[23],thechive[24]))
thechive <- as.data.frame(t(thechive_data))
colnames(thechive) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
thechive$`Avg. Visit Duration` <- paste(thechive$`Avg. Visit Duration`,thechive$ab)
thechive$`Avg. Visit Duration` <- gsub(' ', '.' ,thechive$`Avg. Visit Duration`)
thechive <- thechive[-c(6)]
thechive$url <- "thechive.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thechive.csv")
df33_d1 <- df[c(1),c(1:20)]
df33_d1 <- cbind(df33_d1,thechive)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thechive.csv")
df33_d2 <- df[c(2),c(1:20)]
df33_d2 <- cbind(df33_d2,thechive)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thechive.csv")
df33_d3 <- df[c(3),c(1:20)]
df33_d3 <- cbind(df33_d3,thechive)

############################################ 34 URL ###############################################
thegatewaypundit_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/thegatewaypundit.pdf"
thegatewaypundit_text <- pdf_text(thegatewaypundit_pdf)
thegatewaypundit <- str_extract_all(thegatewaypundit_text,"\\(?[0-9,.]+\\)?")[[2]]
thegatewaypundit_data <- data.frame(c(thegatewaypundit[10],thegatewaypundit[14],thegatewaypundit[16],thegatewaypundit[5],thegatewaypundit[12],thegatewaypundit[13],thegatewaypundit[18],thegatewaypundit[19]))
thegatewaypundit <- as.data.frame(t(thegatewaypundit_data))
colnames(thegatewaypundit) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
thegatewaypundit$`Avg. Visit Duration` <- paste(thegatewaypundit$`Avg. Visit Duration`,thegatewaypundit$ab)
thegatewaypundit$`Avg. Visit Duration` <- gsub(' ', '.' ,thegatewaypundit$`Avg. Visit Duration`)
thegatewaypundit <- thegatewaypundit[-c(6)]
thegatewaypundit$url <- "thegatewaypundit.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thegatewaypundit.csv")
df34_d1 <- df[c(1),c(1:20)]
df34_d1 <- cbind(df34_d1,thegatewaypundit)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thegatewaypundit.csv")
df34_d2 <- df[c(2),c(1:20)]
df34_d2 <- cbind(df34_d2,thegatewaypundit)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thegatewaypundit.csv")
df34_d3 <- df[c(1),c(1:20)]
df34_d3 <- cbind(df34_d3,thegatewaypundit)

############################################ 35 URL ###############################################
theguardian_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/theguardian.pdf"
theguardian_text <- pdf_text(theguardian_pdf)
theguardian <- str_extract_all(theguardian_text,"\\(?[0-9,.]+\\)?")[[2]]
theguardian_data <- data.frame(c(theguardian[16],theguardian[20],theguardian[22],theguardian[11],theguardian[18],theguardian[19],theguardian[24],theguardian[25]))
theguardian <- as.data.frame(t(theguardian_data))
colnames(theguardian) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
theguardian$`Avg. Visit Duration` <- paste(theguardian$`Avg. Visit Duration`,theguardian$ab)
theguardian$`Avg. Visit Duration` <- gsub(' ', '.' ,theguardian$`Avg. Visit Duration`)
theguardian <- theguardian[-c(6)]
theguardian$url <- "theguardian.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/theguardian.csv")
df35_d1 <- df[c(1),c(1:20)]
df35_d1 <- cbind(df35_d1,theguardian)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/theguardian.csv")
df35_d2 <- df[c(2),c(1:20)]
df35_d2 <- cbind(df35_d2,theguardian)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/theguardian.csv")
df35_d3 <- df[c(3),c(1:20)]
df35_d3 <- cbind(df35_d3,theguardian)

############################################ 36 URL ###############################################
thehill_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/thehill.pdf"
thehill_text <- pdf_text(thehill_pdf)
thehill <- str_extract_all(thehill_text,"\\(?[0-9,.]+\\)?")[[2]]
thehill_data <- data.frame(c(thehill[13],thehill[17],thehill[19],thehill[8],thehill[15],thehill[16],thehill[21],thehill[22]))
thehill <- as.data.frame(t(thehill_data))
colnames(thehill) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
thehill$`Avg. Visit Duration` <- paste(thehill$`Avg. Visit Duration`,thehill$ab)
thehill$`Avg. Visit Duration` <- gsub(' ', '.' ,thehill$`Avg. Visit Duration`)
thehill <- thehill[-c(6)]
thehill$url <- "thehill.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thehill.csv")
df36_d1 <- df[c(1),c(1:20)]
df36_d1 <- cbind(df36_d1,thehill)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thehill.csv")
df36_d2 <- df[c(2),c(1:20)]
df36_d2 <- cbind(df36_d2,thehill)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thehill.csv")
df36_d3 <- df[c(1),c(1:20)]
df36_d3 <- cbind(df36_d3,thehill)

############################################ 37 URL ###############################################
thekitchn_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/thekitchn.pdf"
thekitchn_text <- pdf_text(thekitchn_pdf)
thekitchn <- str_extract_all(thekitchn_text,"\\(?[0-9,.]+\\)?")[[2]]
thekitchn_data <- data.frame(c(thekitchn[14],thekitchn[18],thekitchn[20],thekitchn[9],thekitchn[16],thekitchn[17],thekitchn[22],thekitchn[23]))
thekitchn <- as.data.frame(t(thekitchn_data))
colnames(thekitchn) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
thekitchn$`Avg. Visit Duration` <- paste(thekitchn$`Avg. Visit Duration`,thekitchn$ab)
thekitchn$`Avg. Visit Duration` <- gsub(' ', '.' ,thekitchn$`Avg. Visit Duration`)
thekitchn <- thekitchn[-c(6)]
thekitchn$url <- "thekitchn.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thekitchn.csv")
df37_d1 <- df[c(1),c(1:20)]
df37_d1 <- cbind(df37_d1,thekitchn)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thekitchn.csv")
df37_d2 <- df[c(1),c(1:20)]
df37_d2 <- cbind(df37_d2,thekitchn)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thekitchn.csv")
df37_d3 <- df[c(1),c(1:20)]
df37_d3 <- cbind(df37_d3,thekitchn)

############################################ 38 URL ###############################################
theonion_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/theonion.pdf"
theonion_text <- pdf_text(theonion_pdf)
theonion <- str_extract_all(theonion_text,"\\(?[0-9,.]+\\)?")[[2]]
theonion_data <- data.frame(c(theonion[14],theonion[18],theonion[20],theonion[9],theonion[16],theonion[17],theonion[22],theonion[23]))
theonion <- as.data.frame(t(thehill_data))
colnames(theonion) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
theonion$`Avg. Visit Duration` <- paste(theonion$`Avg. Visit Duration`,theonion$ab)
theonion$`Avg. Visit Duration` <- gsub(' ', '.' ,theonion$`Avg. Visit Duration`)
theonion <- theonion[-c(6)]
theonion$url <- "theonion.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/theonion.csv")
df38_d1 <- df[c(1),c(1:20)]
df38_d1 <- cbind(df38_d1,theonion)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/theonion.csv")
df38_d2 <- df[c(2),c(1:20)]
df38_d2 <- cbind(df38_d2,theonion)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/theonion.csv")
df38_d3 <- df[c(3),c(1:20)]
df38_d3 <- cbind(df38_d3,theonion)

############################################ 39 URL ###############################################
thepennyhoarder_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/thepennyhoarder.pdf"
thepennyhoarder_text <- pdf_text(thepennyhoarder_pdf)
thepennyhoarder <- str_extract_all(thepennyhoarder_text,"\\(?[0-9,.]+\\)?")[[2]]
thepennyhoarder_data <- data.frame(c(thepennyhoarder[11],thepennyhoarder[15],thepennyhoarder[17],thepennyhoarder[6],thepennyhoarder[13],thepennyhoarder[14],thepennyhoarder[19],thepennyhoarder[20]))
thepennyhoarder <- as.data.frame(t(thepennyhoarder_data))
colnames(thepennyhoarder) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
thepennyhoarder$`Avg. Visit Duration` <- paste(thepennyhoarder$`Avg. Visit Duration`,thepennyhoarder$ab)
thepennyhoarder$`Avg. Visit Duration` <- gsub(' ', '.' ,thepennyhoarder$`Avg. Visit Duration`)
thepennyhoarder <- thepennyhoarder[-c(6)]
thepennyhoarder$url <- "thepennyhoarder.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thepennyhoarder.csv")
df39_d1 <- df[c(1),c(1:20)]
df39_d1 <- cbind(df39_d1,thepennyhoarder)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thepennyhoarder.csv")
df39_d2 <- df[c(2),c(1:20)]
df39_d2 <- cbind(df39_d2,thepennyhoarder)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/thepennyhoarder.csv")
df39_d3 <- df[c(1),c(1:20)]
df39_d3 <- cbind(df39_d3,thepennyhoarder)

############################################ 40 URL ###############################################
theverge_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/theverge.pdf"
theverge_text <- pdf_text(theverge_pdf)
theverge <- str_extract_all(theverge_text,"\\(?[0-9,.]+\\)?")[[2]]
theverge_data <- data.frame(c(theverge[23],theverge[27],theverge[29],theverge[18],theverge[25],theverge[26],theverge[31],theverge[32]))
theverge <- as.data.frame(t(theverge_data))
colnames(theverge) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
theverge$`Avg. Visit Duration` <- paste(theverge$`Avg. Visit Duration`,theverge$ab)
theverge$`Avg. Visit Duration` <- gsub(' ', '.' ,theverge$`Avg. Visit Duration`)
theverge <- theverge[-c(6)]
theverge$url <- "theverge.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/theverge.csv")
df40_d1 <- df[c(1),c(1:20)]
df40_d1 <- cbind(df40_d1,theverge)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/theverge.csv")
df40_d2 <- df[c(2),c(1:20)]
df40_d2 <- cbind(df40_d2,theverge)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/theverge.csv")
df40_d3 <- df[c(3),c(1:20)]
df40_d3 <- cbind(df40_d3,theverge)

############################################ 41 URL ###############################################
theweek_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/theweek.pdf"
theweek_text <- pdf_text(theweek_pdf)
theweek <- str_extract_all(theweek_text,"\\(?[0-9,.]+\\)?")[[2]]
theweek_data <- data.frame(c(theweek[15],theweek[19],theweek[21],theweek[10],theweek[17],theweek[18],theweek[23],theweek[24]))
theweek <- as.data.frame(t(theweek_data))
colnames(theweek) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
theweek$`Avg. Visit Duration` <- paste(theweek$`Avg. Visit Duration`,theweek$ab)
theweek$`Avg. Visit Duration` <- gsub(' ', '.' ,theweek$`Avg. Visit Duration`)
theweek <- theweek[-c(6)]
theweek$url <- "theweek.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/theweek.csv")
df41_d1 <- df[c(1),c(1:20)]
df41_d1 <- cbind(df41_d1,theweek)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/theweek.csv")
df41_d2 <- df[c(1),c(1:20)]
df41_d2 <- cbind(df41_d2,theweek)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/theweek.csv")
df41_d3 <- df[c(1),c(1:20)]
df41_d3 <- cbind(df41_d3,theweek)


############################################ 42 URL ###############################################
tmz_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/tmz.pdf"
tmz_text <- pdf_text(tmz_pdf)
tmz <- str_extract_all(tmz_text,"\\(?[0-9,.]+\\)?")[[2]]
tmz_data <- data.frame(c(tmz[14],tmz[18],tmz[20],tmz[9],tmz[16],tmz[17],tmz[22],tmz[23]))
tmz <- as.data.frame(t(tmz_data))
colnames(tmz) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
tmz$`Avg. Visit Duration` <- paste(tmz$`Avg. Visit Duration`,tmz$ab)
tmz$`Avg. Visit Duration` <- gsub(' ', '.' ,tmz$`Avg. Visit Duration`)
tmz <- tmz[-c(6)]
tmz$url <- "tmz.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/tmz.csv")
df42_d1 <- df[c(1),c(1:20)]
df42_d1 <- cbind(df42_d1,tmz)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/tmz.csv")
df42_d2 <- df[c(2),c(1:20)]
df42_d2 <- cbind(df42_d2,tmz)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/tmz.csv")
df42_d3 <- df[c(3),c(1:20)]
df42_d3 <- cbind(df42_d3,tmz)

############################################ 43 URL ###############################################
townhall_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/townhall.pdf"
townhall_text <- pdf_text(townhall_pdf)
townhall <- str_extract_all(townhall_text,"\\(?[0-9,.]+\\)?")[[2]]
townhall_data <- data.frame(c(townhall[16],townhall[20],townhall[22],townhall[11],townhall[18],townhall[19],townhall[24],townhall[25]))
townhall <- as.data.frame(t(townhall_data))
colnames(townhall) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
townhall$`Avg. Visit Duration` <- paste(townhall$`Avg. Visit Duration`,townhall$ab)
townhall$`Avg. Visit Duration` <- gsub(' ', '.' ,townhall$`Avg. Visit Duration`)
townhall <- townhall[-c(6)]
townhall$url <- "townhall.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/townhall.csv")
df43_d1 <- df[c(1),c(1:20)]
df43_d1 <- cbind(df43_d1,townhall)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/townhall.csv")
df43_d2 <- df[c(2),c(1:20)]
df43_d2 <- cbind(df43_d2,townhall)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/townhall.csv")
df43_d3 <- df[c(3),c(1:20)]
df43_d3 <- cbind(df43_d3,townhall)

############################################ 44 URL ###############################################
tracfone_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/tracfone.pdf"
tracfone_text <- pdf_text(tracfone_pdf)
tracfone <- str_extract_all(tracfone_text,"\\(?[0-9,.]+\\)?")[[2]]
tracfone_data <- data.frame(c(tracfone[15],tracfone[19],tracfone[21],tracfone[10],tracfone[17],tracfone[18],tracfone[23],tracfone[24]))
tracfone <- as.data.frame(t(tracfone_data))
colnames(tracfone) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
tracfone$`Avg. Visit Duration` <- paste(tracfone$`Avg. Visit Duration`,tracfone$ab)
tracfone$`Avg. Visit Duration` <- gsub(' ', '.' ,tracfone$`Avg. Visit Duration`)
tracfone <- tracfone[-c(6)]
tracfone$url <- "tracfone.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/tracfone.csv")
df44_d1 <- df[c(1),c(1:20)]
df44_d1 <- cbind(df44_d1,tracfone)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/tracfone.csv")
df44_d2 <- df[c(1),c(1:20)]
df44_d2 <- cbind(df44_d2,tracfone)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/tracfone.csv")
df44_d3 <- df[c(1),c(1:20)]
df44_d3 <- cbind(df44_d3,tracfone)

############################################ 45 URL ###############################################
tvguide_pdf <- "D:/SEM 3/Datasets/GTmatrix/high/high_pdf/tvguide.pdf"
tvguide_text <- pdf_text(tvguide_pdf)
tvguide <- str_extract_all(tvguide_text,"\\(?[0-9,.]+\\)?")[[2]]
tvguide_data <- data.frame(c(tvguide[13],tvguide[17],tvguide[19],tvguide[8],tvguide[15],tvguide[16],tvguide[21],tvguide[22]))
tvguide <- as.data.frame(t(tvguide_data))
colnames(tvguide) <- c("Total Visits","Mobile Device","Desktop Device","Monthly Visits","Avg. Visit Duration","ab","Pages Per Visit","Bounce Rate")
tvguide$`Avg. Visit Duration` <- paste(tvguide$`Avg. Visit Duration`,tvguide$ab)
tvguide$`Avg. Visit Duration` <- gsub(' ', '.' ,tvguide$`Avg. Visit Duration`)
tvguide <- tvguide[-c(6)]
tvguide$url <- "tvguide.com"
#------------------------------------GT1----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/tvguide.csv")
df45_d1 <- df[c(1),c(1:20)]
df45_d1 <- cbind(df45_d1,tvguide)
#------------------------------------GT2----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/tvguide.csv")
df45_d2 <- df[c(1),c(1:20)]
df45_d2 <- cbind(df45_d2,tvguide)
#------------------------------------GT3----------------------------#
df <- read.csv("D:/SEM 3/Datasets/GTmatrix/high/high_csv/tvguide.csv")
df45_d3 <- df[c(1),c(1:20)]
df45_d3 <- cbind(df45_d3,tvguide)

df_d1 <- rbind.data.frame(df1_d1,df2_d1,df3_d1,df4_d1,df5_d1,df6_d1,df7_d1,df8_d1,df9_d1,df10_d1,
                 df11_d1,df12_d1,df13_d1,df14_d1,df15_d1,df16_d1,df17_d1,df18_d1,df19_d1,df20_d1,
                 df21_d1,df22_d1,df23_d1,df24_d1,df25_d1,df26_d1,df27_d1,df28_d1,df29_d1,df30_d1,
                 df31_d1,df32_d1,df33_d1,df34_d1,df35_d1,df36_d1,df37_d1,df38_d1,df39_d1,df40_d1,
                 df41_d1,df42_d1,df43_d1,df44_d1,df45_d1)
df_d2 <- rbind.data.frame(df1_d2,df2_d2,df3_d2,df4_d2,df5_d2,df6_d2,df7_d2,df8_d2,df9_d2,df10_d2,
                          df11_d2,df12_d2,df13_d2,df14_d2,df15_d2,df16_d2,df17_d2,df18_d2,df19_d2,df20_d2,
                          df21_d2,df22_d2,df23_d2,df24_d2,df25_d2,df26_d2,df27_d2,df28_d2,df29_d2,df30_d2,
                          df31_d2,df32_d2,df33_d2,df34_d2,df35_d2,df36_d2,df37_d2,df38_d2,df39_d2,df40_d2,
                          df41_d2,df42_d2,df43_d2,df44_d2,df45_d2)
df_d3 <- rbind.data.frame(df1_d3,df2_d3,df3_d3,df4_d3,df5_d3,df6_d3,df7_d3,df8_d3,df9_d3,df10_d3,
                          df11_d3,df12_d3,df13_d3,df14_d3,df15_d3,df16_d3,df17_d3,df18_d3,df19_d3,df20_d3,
                          df21_d3,df22_d3,df23_d3,df24_d3,df25_d3,df26_d3,df27_d3,df28_d3,df29_d3,df30_d3,
                          df31_d3,df32_d3,df33_d3,df34_d3,df35_d3,df36_d3,df37_d3,df38_d3,df39_d3,df40_d3,
                          df41_d3,df42_d3,df43_d3,df44_d3,df45_d3)
setwd("D:/SEM 3/Datasets/GTmatrix/high");
write.csv(df_d1, file = "Data1.csv",row.names=FALSE)
write.csv(df_d2, file = "Data2.csv",row.names=FALSE)
write.csv(df_d3, file = "Data3.csv",row.names=FALSE)

