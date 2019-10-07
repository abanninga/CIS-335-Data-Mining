# start with some vectors
v1=c(20,10,15)
v2=c(22,13,12)
v3=c(10,25,1)
# and a matrix
x=read.table("patients1.txt",header=TRUE)

# min-max scaling

minMax(v1)
minMax(v2)

#standard normal scaling
scale(v1)
scale(v2)

#calculating mean, colMeans
summary(x)

colMeans(x[,1:6])		# just columns 1 through 6

# covariance matrix
var = cov(x[,1:6])	# just columns 1 through 6

# correlation matrix
cor(x[,4:7])

# now, create an index of logicals to select just certain records
ind=x[,14]==0

# scatter plot of all pairs of variables
plot(x)
# scatter plot of pairs of variables 1-4
plot(x[,1:4])

#histograms
hist(x[,6],main="heart rate distribution",xlab="lbs",col="green")
hist(x[ind,6],main="heart rate distribution for disease=0",xlab="lbs",col="green")

#boxplots
boxplot(x[,6])
boxplot(x[ind,6],x[!ind,6],main="heart rate compare")
boxplot(x[ind,6],x[!ind,6],main="comparison of heart rate",names=c("disease=1","disease=0"))

#similarities
v1-v2
v1-v3
sum((v1-v2)^2)
sqrt(sum((v1-v2)^2))
sqrt(sum((v1-v3)^2))
euclid=function(x,y){return(sqrt(sum((x-y)^2)))}
euclid(v1,v2)
euclid(v1,v3)

