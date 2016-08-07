row2014 <- c(deathsbyyear[1,"Male.Deaths"], deathsbyyear[1,"Female.Deaths"])
row2014
pielabels <- c("Male:","Female:")
pielabels <- paste(pielabels, row2014)
pie(row2014, labels=pielabels,main="Male vs Female Deaths 2014",col=cm.colors(2))