\name{pig.dist.glm}
\alias{pig.dist.glm}


\title{
Poisson-Inverse_Gaussian Distribution with GLM
}
\description{
The function fits a mixed Poisson distribution, in which the random parameter follows Inverse_Gaussian distribution. As the method of estimation Expectation-maximization algorithm is used.
In M-step the GLM is applied.
}
\usage{
pig.dist.glm(variable, lambda.start, delta.start, epsylon, n)
}

\arguments{
  \item{variable}{
The count dependent variable in the regression
}

  \item{lambda.start}{
The starting value of lambda parameter of Poisson distribution. Default to 1.
}
  \item{delta.start}{
The starting value of delta parameter of Inverse-Gaussian distribution. Default to 1.
}
  \item{epsylon}{
Default to epsylon = 10^(-8)
}
 \item{n}{
The integer value for the Laguerre quadrature. Default to 100.}
}

\details{ This function provides estimated parameters of the model 
\eqn{N|\theta \sim Poisson(\lambda \theta)} where \eqn{\theta} is a latent 
variable comes from inverse-gaussian distribution with one parameter \eqn{\gamma}. The 
pdf of inverse-Gaussian is of the form 
\eqn{f_\theta(\theta)=\frac{\delta}{2\pi}\exp(\delta^2)\theta^{-\frac{3}{2}} \exp(-\frac{\delta^2}{2}(\frac{1}{\theta}+\theta))
 }. The parameter \eqn{\lambda} is determined by the intercept through log-link \eqn{\lambda=\exp(\beta_0)}.}

\value{ \item{lambda}{fixed effect in mixed Poisson distribution} 
\item{delta}{the 
parameter of mixing inverse-Gaussian distribution}
\item{n.iter}{n} 
\item{likelihood.values}{values of log-likelihood} 
}

\references{
Ghitany, M. E., Karlis, D., Al-Mutairi, D. K., & Al-Awadhi, F. A. (2012). An EM algorithm for multivariate mixed Poisson regression models and its application. Applied Mathematical Sciences, 6(137), 6843-6856.
}

\examples{
library(MASS)	
var = quine$Days[quine$Days<11]		
pIG1 = pig.dist.glm(variable=var)	
print(pIG1)
}
