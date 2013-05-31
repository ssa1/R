#Difference in proportions

#Information about the polls
n1 = 1050
n2 = 1046
phat1 = 0.57
phat2 = 0.42

#Number of successes
x1 = round(n1*phat1, 0)
x1
x2 = round(n2*phat2, 0)
x2

#Hypothesis test and confidence interval
prop.test(c(x1,x2), c(n1,n2), alternative='two.sided', correct=F)
#to change the confidence level, add the argument conf.level=____

#Test statistic
phat_pooled =  (n1*phat1 + n2*phat2)/ (n1+n2)
z = (phat1 - phat2) / sqrt(phat_pooled * (1-phat_pooled) * (1/n1 + 1/n2))
