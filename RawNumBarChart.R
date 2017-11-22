MalesFemalesCount <- as.matrix(deathsbyyear[,2:3])
rownames(MalesFemalesCount) <- Year
barplot(t(MalesFemalesCount), legend = c("Male", "Female"), ylim=c(0,8000), cex.names=0.6, col=c("lightblue","pink"))