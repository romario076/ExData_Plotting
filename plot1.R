NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
head(NEI)

##1
years <- c("1999", "2002" ,"2005", "2008")
means <- vector()
for (i in years) {
means[i] <- mean(NEI$Emissions[which(NEI$year == i)], na.rm=T) }
png("plot1.png")
barplot(means, col= c("red", "brown", "blue", "yellow"), xlab="Year", ylab="Emission", main="Total PM2.5 emission from all sources")
dev.off()
sp <- split(NEI$Emissions, NEI$year)
spl <- sapply(sp, mean)
spl
