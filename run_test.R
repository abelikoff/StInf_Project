#!/usr/bin/env Rscript

rm(list = ls())

## split sample into orange juice and vitamin C ones
vc = ToothGrowth[ToothGrowth$supp == "VC",]
oj = ToothGrowth[ToothGrowth$supp != "VC",]

png("teeth.png", width = 480, height = 480)
par(mfcol=c(2, 1))
hist(vc$len, col="red", main="Vitamin C", xlab="Tooth length")
hist(oj$len, col="Blue", main="Orange juice", xlab="Tooth length")

## perform a t-test
res <- t.test(vc$len, oj$len)
print(res)
