##5
pattern = "vehicle"
idx <- grep(pattern, SCC$Short.Name, ignore.case=T) 
x <- SCC$SCC[idx]
x <- as.character(levels(x))[x]
NEIb <- NEI[NEI$SCC %in% x & NEI$fips== "24510", c(1,4,5,6)]
newb <- tapply( NEIb$Emissions, NEIb$year, sum)
png("plot4.png")
barplot(newb, col= c("red", "violet", "brown", "yellow"), xlab= "Year", ylab= "Emission", main= "Emissions from motor vehicle sources")
dev.off()