setwd("~/pga-golfers/")
df = read.csv("clean.csv")
library(ggplot2)

ggplot(df,aes(height,years)) + geom_point()

cor.test(df$height,df$years)

ggplot(df,aes(height)) + 
  geom_histogram(bins=length(table(df$height)),
                 color="black",
                 fill="white")


age.range = ceiling(max(df$years,na.rm=TRUE) - min(df$years,na.rm=TRUE))

ggplot(df,aes(years)) + 
  geom_histogram(bins=age.range,
                 color="black",
                 fill="white")

weight.subset = subset(df,df$weight < 600 & df$weight > 100)
ggplot(weight.subset,aes(height,weight)) + geom_point()
cor.test(weight.subset$height,weight.subset$weight)


ggplot(weight.subset,aes(years,weight)) + geom_point()
cor.test(weight.subset$years,weight.subset$weight)
      
