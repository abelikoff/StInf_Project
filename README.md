# Statistical Inference - Project 1

## by Alexander L. Belikoff

## Part 1

Part 1 consists of a single R script [`run_simulation.R`](https://github.com/abelikoff/StInf_Project/raw/master/run_simulation.R) which performs the following tasks:

* Generates 100,000 samples of size 40 each from the exponential
  distribution with the distribution parameter \lambda=0.2.

* Takes a mean of each sample (resulting in a sample of 100,000
  means).

* Calculates empirical distribution parameters (mean and standard
  deviation) and compares them to the theoretical parameters that are
  available to us through CLT. In particular, one of the runs
  produced:

```
Mean: 5.00000 theor., 5.00552 sample
Variance: 0.62500 theor., 0.62585 sample
```

* Visually confirms the findings by superimposing the histogram of the
  sample of the means against the theoretical PDF of the normal
  distribution with theoretical parameters mentioned above.

![IMAGE](https://github.com/abelikoff/StInf_Project/raw/master/dist.png "Distribution of means")


## Part 2

Part 2 consists of a single R script [`run_test.R`](https://github.com/abelikoff/StInf_Project/raw/master/run_test.R) which performs the following tasks:

* Splits the sample into 2 parts (one is observations related to
  orange juice usage, the other one is related to vitamin C usage)

* Plots histograms of tooth length for both samples for visual
  assessment.

![IMAGE](https://github.com/abelikoff/StInf_Project/raw/master/teeth.png "Histograms of tooth lengths")

* Performs a t-test on tooth lengths samples

The result of the test are as follows:

```
        Welch Two Sample t-test

data:  vc$len and oj$len
t = -1.9153, df = 55.309, p-value = 0.06063
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -7.5710156  0.1710156
sample estimates:
mean of x mean of y
 16.96333  20.66333
```

From the results, we can conclude the following facts:

* Since the `p-value` is 0.06 (which is very close to the cut-off
  value of 0.05), most likely, we are facing the case where mean tooth
  length is the same for both diets (i.e. teeth growth is not affected
  by one of these supplements more than by the other one). However, in
  our case we probably have obtained an "outlier" sample.

* A 95% confidence interval for the difference in means of the two
  samples is `[-7.571, 0.171]`. In other words, in 95% of samples this
  confidence interval (around the difference of sample means) will
  contain the true difference of population means.
