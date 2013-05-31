#Set working directory
setwd('~/Desktop/Lec 6-4')

#Read in the data
skeletons = read.table('SkeletonData.txt', header=T)

#Attach variable(column) names
attach(skeletons)

#See the first few observations
head(skeletons)

#Seperate data into males differences and female differences
#DGDifference is the 6th column
malediff = skeletons[Sex=='1', 6]
femalediff = skeletons[Sex=='2', 6]

#Summary statistics
length(malediff)
mean(malediff)
var(malediff)

length(femalediff)
mean(femalediff)
var(femalediff)

#Critical value
qt(0.025, df=200.09, lower.tail=F)

#Two-sample t-test		
#default arguments: alternative='two.sided', mu=0, conf.level=0.95
t.test(malediff, femalediff)

t.test(malediff, femalediff, var.equal=T)