library(XML)
library(sqldf)



Readfile <- read.csv(file="bigdataproject.csv", header = T,sep=",")





mer <- sqldf("select * from  Readfile  where Readfile.Rating between '8.9' and '10'" )

mer

dfrm <- data.frame(mer)
write.csv(dfrm,"big_project_high_rating.csv")
 