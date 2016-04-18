<!-- README.md is generated from README.Rmd. So, please edit this file -->
[![Travis-CI Build Status](https://travis-ci.org/swihart/bridgedist.svg?branch=master)](https://travis-ci.org/swihart/bridgedist)

Package: bridgedist

Title: An Implementation of the Bridge Distribution with Logit-Link as in Wang and Louis (2003)

Description: An implementation of the bridge distribution with logit-link in R. In Wang and Louis (2003), such a bridge distribution was derived as the distribution of the random intercept that facilitated having a conditional logistic regression that when marginalized by integrating out the random intercept left a marginal logistic regression, and the conditional and marginal regression coefficients are a scalar multiple of each other.

``` r
library(devtools)
install_github(repo = "bridgedist", username = "swihart")
library(bridgedist)
```

``` r
dbridge(0)
#> [1] 0.1591549
pbridge(0)
#> [1] 0.5
qbridge(0.5)
#> [1] 0
mean(rbridge(1e5)) ## approximately 0
#> [1] -0.003490218
var(rbridge(1e5, scale = 1/sqrt(1+3/pi^2)))  # approximately 1
#> [1] 0.9983954
```
