#Set working directory
setwd('~/Desktop/Lec 7-1,2,3 Reg')

#Read in the data
skeletons = read.table('SkeletonData2.txt', header=T)

#Attach variable/column names
attach(skeletons)

#Scatterplot
plot(BMIquant, DGDifference, xlab='BMI', ylab='Age difference (years)', main='Scatterplot: Skeleton Age Difference vs BMI')

#Regression
#lm=linear model
#Response variable: DGDifference
#Predictor variable: BMIquant
lm(DGDifference~BMIquant)
linreg = lm(DGDifference~BMIquant)

#Scatterplot with line of best fit
plot(BMIquant, DGDifference, xlab='BMI', ylab='Age difference (years)', main='Scatterplot: Skeleton Age Difference vs BMI')
abline(linreg, col='red')

#Residuals
linreg$residuals

#mean(residuals) = 0
mean(linreg$residuals)

summary(linreg)


