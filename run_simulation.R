#!/usr/bin/env Rscript

rm(list = ls())

lambda <- 0.2
N <- 40                                 # sample size
J <- 100000                             # number of simulations

## theoretical mean and variance of the distribution of mean
theor.mean <- 1 / lambda
theor.var <-  1 / (lambda^2 * N)

## build a sample of means
samples <- matrix(rexp(N * J, lambda), nrow=J)
means <- rowMeans(samples)
rm(samples)

## report on findings
cat(sprintf("Mean: %.5f theor., %.5f sample\n", theor.mean, mean(means)))
cat(sprintf("Variance: %.5f theor., %.5f sample\n", theor.var, var(means)))

## plot histogram of means and superimpose with theoretical PDF
png("dist.png", width = 480, height = 480)
hist(means, breaks=51, freq=FALSE, col="blue",
     main="40-sample means distribution")
x <- seq(0, 10, 0.1)
theor.pdf <- dnorm(x, theor.mean, sqrt(theor.var))
lines(x, theor.pdf, col="red", lwd=3)
