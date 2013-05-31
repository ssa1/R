# paste raw data from clipboard
new.raw <- read.table("clipboard", header = T)  # fill = T for empty cells
# clean new.raw for another import
rm(new.raw)

## explore linear

## explore distribtution
qqv <- read.table("clipboard",header=T)
colnames(qqv) <- c('T1','T2','T3')
qq <- function(data){
  #par(mfrow=c(4,2))
  qqnorm(data)
  qqline(data)
}
qqnorm(qqv$T2)
qqline(qqv$T2)
qqnorm(qqv$T3)
qqline(qqv$T3)
