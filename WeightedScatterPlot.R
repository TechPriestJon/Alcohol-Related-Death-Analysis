PopWeight <- c(Pop.England/Pop.England[nrow(deathsbyyear)])

TotalRawCount <- (Male.Deaths+Female.Deaths)
TotalWeightedCount <- as.matrix(c(TotalRawCount*(1/PopWeight)))
rownames(TotalWeightedCount) <- Year
colnames(TotalWeightedCount) <- "Population"

LineOfBestFit<-predict(lm(TotalWeightedCount~Year))

plot(Year,TotalWeightedCount, ylim=c(0,8000), col=c("black"))
lines(TotalWeightedCount~Year, col="grey", lwd=1)
lines(LineOfBestFit~Year, col="blue", lwd=2)