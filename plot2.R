##2
means.balt <- vector()
for (i in years) {
means.balt[i] <- mean(NEI$Emissions[which(NEI$fips == "24510" & NEI$year == i)], na.rm=T) }
png("plot2.png")
barplot(means.balt,  col= c("red", "brown", "blue", "yellow"), xlab="Year", ylab="Emission", main="PM2.5 decreased in the Baltimore City" )
dev.off()
new <- NEI[which(NEI$fips == "24510"), ]
balt <- split(new$Emissions, new$year)
balt1 <- sapply(balt, mean)
balt1
