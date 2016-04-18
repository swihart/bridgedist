library(bridgedist)

test_that("Confirm unit variance +/- 0.1 for scale = 1/sqrt(1+3/pi^2)", {
  expect_equal(object = var(rbridge(1e5, 0, scale = 1/sqrt(1+3/pi^2))),
               expected = 1,
               tolerance = 0.1,
               scale = 1)
})

test_that("Confirm p(q(x)) = x", {
  phi <- runif(1, 0.01, 0.99)
  x <- runif(1, 0.01, 0.99)
  expect_equal(object = pbridge(qbridge(x, scale=phi), scale=phi),
               expected = x,
               tolerance = 1e-6,
               scale = 1)
})

test_that("Confirm q(p(x)) = x", {
  phi <- runif(1, 0.01, 0.99)
  x <- rnorm(1, sd=2)
  expect_equal(object = qbridge(pbridge(x, scale=phi), scale=phi),
               expected = x,
               tolerance = 1e-6,
               scale = 1)
})
