# Statistical Inference - Project 1

## by Alexander L. Belikoff

The project consists of a single R script [`run_simulation.R`](https://github.com/abelikoff/StInf_Project/raw/master/run_simulation.R) which performs the following tasks:

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
