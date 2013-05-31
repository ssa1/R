#Set working directory
setwd('~/Desktop/Lec 8')

#Install the package pwr and load it
install.packages('pwr')
library(pwr)

#Calculating sample size
#d = effect size = diff/estimate std of diff
pwr.t.test(power=0.8, d=0.004/0.0066, type="two.sample", alternative='two.sided', sig.level=0.05)

#Read in the data
ccd = read.table('CCDdata.txt', header=T)

#Attach variable/column names
attach(ccd)

#Problem 1: males were coded m instead of M
sex
sex[sex=='m'] = 'M'

#Check your work
table(sex)
sex = droplevels(sex)

#Problem 2: Missing observations coded with 999
age[age==999] = NA
BMI[BMI==999] = NA
HbA1c[HbA1c==999] = NA
HbA1cbaseline[HbA1cbaseline==999] = NA
CRP[CRP==999] = NA
CRPbaseline[CRPbaseline==999] = NA

#Variable of interest: Change in HbA1c, Change in CRP
HbA1cdiff = HbA1c-HbA1cbaseline
CRPdiff = CRP-CRPbaseline

#Log transformation
logCRP = log10(CRP)
logCRPbaseline = log10(CRPbaseline)
logCRPdiff = logCRP-logCRPbaseline 



