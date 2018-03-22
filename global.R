library(forecast)


path <- getwd()
rowdata<-read.csv(file = paste(path, "/CPI2.csv", sep = ""), header = TRUE, sep = ';')
#show(rowdata)


c1a <- as.matrix(rowdata[1:72,])
c1b <- scale(t(c1a))
c1c <- dist(as.matrix(c1b), method = "euclidean")

c2a <- as.matrix(rowdata[73:144,])
c2b <- scale(t(c2a))
c2c <- dist(as.matrix(c2b), method = "euclidean")

c3a <- as.matrix(rowdata[145:216,])
c3b <- scale(t(c3a))
c3c <- dist(as.matrix(c3b), method = "euclidean")

clust <- list(c1c,c2c,c3c)
typeof(clust[[1]])
#rowdata<-read.csv()
