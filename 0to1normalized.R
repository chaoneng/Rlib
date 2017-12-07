library(xlsx)

df = read.xlsx("/Users/charleswang/Desktop/PUBMED_count.xlsx", sheetName = "2017-12-05")

x= df$PUBMED_count
# Example Data
x = sample(-100:100, 50)

#Normalized Data
normalized = (x-min(x))/(max(x)-min(x))


normalized_data=data.frame("GeneA"=df$GeneA,"GeneB"=df$GeneB,"count"= df$PUBMED_count,"normalized"=normalized)
write.csv(normalized_data, file = "/Users/charleswang/Desktop/PUBMED_normalized_data.csv")

# Histogram of example data and normalized data
par(mfrow=c(1,2))
hist(x,          breaks=10, xlab="Data",            col="lightblue", main="")
hist(normalized, breaks=10, xlab="Normalized Data", col="lightblue", main="")