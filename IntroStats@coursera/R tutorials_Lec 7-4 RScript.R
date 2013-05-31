#Set working directory
setwd('~/Desktop/Lec 7-4 RegTrans')

#Read in data
Countries = read.table("LifeGDPhiv.txt")

#Rename columns
colnames(Countries) = c('Country', 'LifeExp', 'GDP', 'HIV')

#Attach variable/column names
attach(Countries)

#View the first few observations
head(Countries)

#Regression
linreg = lm(LifeExp ~ GDP)

#Scatterplot with line of best fit
plot(GDP, LifeExp, xlab='GDP per capita (2000 U.S. $)', ylab='Life Expectancy (years)')
abline(linreg, col='orange')

#Regression residuals
resids = linreg$resid

#Graph residuals
plot(GDP, resids, xlab="GDP per capita (2000 U.S. $)", ylab="Residuals (years)")
#Vertical line at zero for reference
abline(h=0, col="red")

#Transforming GDP to log(GDP) (base 10)
logGDP = log10(GDP)

#Regression with logGDP
linreg_log = lm(LifeExp ~ logGDP)

#Scatterplot with line of best fit
plot(logGDP, LifeExp, col="purple", xlab="Logarithm of GDP per capita (2000 U.S. $)", ylab="Life Expectancy (years)")
abline(linreg_log, col='orange')

#Regression residuals
resids_log = linreg_log$resid

#Graph residuals
plot(logGDP, resids_log, xlab="Logarithm of GDP per capita (2000 U.S. $)", ylab="Residuals (years)")
#Vertical line at zero for reference
abline(h=0, col="red")


