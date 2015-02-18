##3
library(ggplot2)
baltimor <- NEI[which(NEI$fips == "24510"), ]
g <- ggplot(baltimor, aes(factor(year), Emissions)) + geom_point(aes(color=type), size=4) + facet_grid(.~type) + 
labs(x= "Year", y= "Emissions", title= "Emissions from 1999–2008 for Baltimore City")
png("plot3.png")
g
dev.off()