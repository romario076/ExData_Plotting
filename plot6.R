##6
NEI_Los <- NEI[NEI$SCC %in% x & NEI$fips== "06037", c(1,4,5,6)]
newl <- tapply(NEI_Los$Emissions, NEI_Los$year, sum)
png("plot5.png")
par(mar=c (4,2,2,2))
par(mfrow= c (2,1))
barplot(newb, col= c("darkblue", "green", "pink", "grey") , main= "Baltimore", xlab="Years", ylab= "Emissons")
barplot(newl, col= c("red", "violet", "brown", "yellow"), main= "Los Angeles", xlab="Years", ylab= "Emissons")
dev.off()

##6 ggplot
NEIb$city <- "Baltimor"
NEI_Los$city <- "Los Angeles"
tog <- rbind(NEIb, NEI_Los)
g <- ggplot(tog, aes(x=factor(year), y=Emissions, fill=city)) +  geom_point(aes(color=city), size=4) + facet_grid(.~city) +
labs(x="Year", y= "Emissions", title= "Motor Vehicle Source Emissions")
png("plot6.png")
g
dev.off()