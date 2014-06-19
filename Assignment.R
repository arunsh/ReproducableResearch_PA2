
fileurl <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
## download the file
download.file(fileurl, dest = "StormData.bzip2")

Data <- read.csv(bzfile("StormData.bzip2"))

Data1 <- data.frame(EVTYPE=Data$EVTYPE,
                    FATALITIES=Data$FATALITIES,
                    INJURIES=Data$INJURIES)



Data2 <- tapply(Data1$FATALITIES, Data1$EVTYPE, FUN=sum , na.rm=TRUE)

plot(Data2,names(Data2))
