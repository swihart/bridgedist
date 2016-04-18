# bridgedist R package
Bruce Swihart  
April 18, 2016  

[![Travis-CI Build Status](https://travis-ci.org/swihart/bridgedist.svg?branch=master)](https://travis-ci.org/swihart/bridgedist)

Package: bridgedist

Title: An Implementation of the Bridge Distribution with Logit-Link as in Wang and Louis (2003)

Description: An implementation of the bridge distribution with logit-link in R.
    In Wang and Louis (2003), such a bridge distribution was derived as the distribution of
    the random intercept that facilitated having a conditional logistic regression that when
    marginalized by integrating out the random intercept left a marginal logistic regression,
    and the conditional and marginal regression coefficients are a scalar multiple of each other.


```r
library(devtools)
install_github(repo = "bridgedist", username = "swihart")
library(bridgedist)
```




```r
dbridge(0)
```

```
## [1] 0.1591549
```

```r
pbridge(0)
```

```
## [1] 0.5
```

```r
qbridge(0.5)
```

```
## [1] 0
```

```r
mean(rbridge(100))
```

```
## [1] 0.06106417
```
