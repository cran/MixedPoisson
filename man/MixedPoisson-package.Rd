\name{MixedPoisson-package}
\alias{MixedPoisson-package}
\alias{MixedPoisson2}
\docType{package}
\title{
Mixed Poisson Models
}
\description{
The package provides functions, which support to fit parameters of different mixed Poisson models using the Expectation-Maximization (EM) algorithm of estimation, cf. (Ghitany et al., 2012, pp. 6848). In the model the assumptions are: conditional \eqn{N|\theta} is of distribution \eqn{N|\theta \sim POIS(\lambda\theta)}, parameter \eqn{\theta} is a random variable distributed according to the density function \eqn{f_{\theta}(\cdot)}, \eqn{E[\theta]=1} and \eqn{\lambda=\exp(\mathbf{x}_{i}'\mathbf{\boldsymbol \beta})} -- the regression component. The E-step is carried out through the numerical integration using Laquerre quadrature. The M-step estimates the parameters \eqn{\beta} using GLM Poisson with pseudo values from E-step and mixing parameters using optimize function.
}

\details{
\tabular{ll}{
Package: \tab MixedPoisson\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-07-13\cr
License: \tab GPL-2\cr
}

}
\author{
Alicja Wolny-Dominiak and Michal Trzesiok

Maintainer: <alicja.wolny-dominiak@ue.katowice.pl>

}
\references{
Karlis, D. (2005). EM algorithm for mixed Poisson and other discrete distributions. Astin Bulletin, 35(01), 3-24.
Ghitany, M. E., Karlis, D., Al-Mutairi, D. K., & Al-Awadhi, F. A. (2012). An EM algorithm for multivariate mixed Poisson regression models and its application. Applied Mathematical Sciences, 6(137), 6843-6856.
}
