library(XML)
library(sqldf)



Readfile <- read.csv(file="bigdataproject.csv", header = T,sep=",")

#print(unique(Readfile$Director))
print(duplicated(Readfile$Director))

