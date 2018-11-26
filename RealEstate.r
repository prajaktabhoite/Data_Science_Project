setwd("C:/Users/sandesh/Desktop/Edvancer data analytics/Project Data/Real Estate")

ld_housing_train=read.csv("housing_train.csv",stringsAsFactors = F)

ld_housing_test= read.csv("housing_test.csv",stringsAsFactors = F)
var(ld_housing_train$Price)

sum(is.na(ld_housing_train$YearBuilt))

var.test(ld_housing_train$Type=='h',ld_housing_train$Type=='t')

unique(ld_housing_train$Postcode)

sort((tapply(ld_housing_train$Price,ld_housing_train$CouncilArea,mean,na.rm=T)),decreasing=T)


df=data.frame(ld_housing_train$Distance)
ggplot(df,aes(x=ld_housing_train$Distance))+geom_density(color="red")+
  stat_function(fun=dnorm,args=list(mean=mean(ld_housing_train$Distance),sd=sd(ld_housing_train$Distance)),color="green")+
  ggtitle("Visual Normality Test for Distance ")

sort((tapply(ld_housing_train$Price,ld_housing_train$CouncilArea,var,na.rm=T)),decreasing=T)
