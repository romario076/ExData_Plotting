##4
pattern = "(coal).*(combustion)"
idx <- grep(pattern,SCC$Short.Name, ignore.case=T) 
show <- SCC[ idx, ] 
x <- SCC$SCC[idx] 
x <-as.character(levels(x))[x]
NEI_SUB <- NEI[ NEI$SCC %in% x  ,c(4,6)] 
##aggregate(NEI_SUB$Emissions, by = list(NEI_SUB$year), FUN = sum)
new <- tapply(NEI_SUB$Emissions, NEI_SUB$year, sum)
png("plot4.png")
barplot(new, col= c("darkblue", "green", "pink", "yellow"), xlab= "Year", ylab= "Emission", main= "Emissions from coal combustion-related" )
dev.off()
