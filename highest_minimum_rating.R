library(XML)
library(sqldf)



Readfile <- read.csv(file="bigdataproject.csv", header = T,sep=",")
#Highest rating

print( Readfile$Director[1])
max <- sqldf("select Director,Cast1,Cast2,Cast3,Duration, max(Rating) from Readfile")
max


#minimum rating
min <- sqldf("select Director,Cast1,Cast2,Cast3,Category,Duration, min(Rating) from Readfile")
min
