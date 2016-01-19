library(XML)


for(i in 2100:4000)
{
file <- paste("http://www.imdb.com/search/title?sort=moviemeter,asc&start=",i,"&title_type=feature&year=2015,2015", sep = "")
doc <- htmlTreeParse(file, useInternalNodes = TRUE)

movienumber <- xpathApply(doc,"//td[@class='number']", xmlValue)
movienumber

moviename <- xpathSApply(doc,"//tr[@class='even detailed']/td/a", xmlValue)
moviename

directorname <- xpathSApply(doc,"//span[@class='credit']/a[1]", xmlValue)
directorname


category <- xpathSApply(doc,"//span[@class='genre']", xmlValue)
category

cast1 <- xpathSApply(doc,"//span[@class='credit']/a[2]", xmlValue)
cast1


cast2 <- xpathSApply(doc,"//span[@class='credit']/a[3]", xmlValue)
cast2

cast3 <- xpathSApply(doc,"//span[@class='credit']/a[4]", xmlValue)
cast3


duration <- xpathSApply(doc,"//td[@class='title']/span[7]", xmlValue)
duration

rating <- xpathApply(doc,"//span[@class='rating-rating']/span[1]", xmlValue)
rate <- paste(rating, sep="")



dfrm <- data.frame(directorname=directorname,category=category,
                   cast1=cast1,cast2=cast2,cast3=cast3,duration=duration,rate=rate)

write.table(dfrm, file="bigdataproject.csv",
            append=TRUE,
            col.names = FALSE,
            sep = ',')

}