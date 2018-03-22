library(forecast)

path <- getwd()
rowdata<-read.csv(file = paste(path, "/CPI2.csv", sep = ""), header = TRUE, sep = ';')

POL<-ts(rowdata$Polska[1:72], start = 2000, frequency = 4)
a<-stl(POL,"per")
