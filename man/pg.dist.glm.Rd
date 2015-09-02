\name{pg.dist.glm}
\alias{pg.dist.glm}

\title{
Poisson-Gamma Distribution with GLM
}
\description{
The function fits a mixed Poisson distribution, in which the random parameter follows Gamma distribution. As the method of estimation Expectation-maximization algorithm is used.
In M-step the GLM is applied.
}
\usage{
pg.dist.glm(variable, lambda.start, gamma.par.start, epsylon, n)
}

\arguments{
  \item{variable}{
The count dependent variable in the regression.
}

  \item{lambda.start}{
The starting value of lambda parameter of Poisson distribution. Default to 1.
}
  \item{gamma.par.start}{
The starting value of delta parameter of Gamma distribution. Default to 1.
}
  \item{epsylon}{
Default to epsylon = 10^(-8)
}
  \item{n}{
The integer value for the Laguerre quadrature. Default to 100. } } 

\details{ This function provides estimated parameters of the model 
\eqn{N|\theta \sim Poisson(\lambda \theta)} where \eqn{\theta} is a latent 
variable comes from Gamma distribution with one parameter \eqn{\gamma}. The 
pdf of Gamma is of the form 
\eqn{f_\theta(\theta)=\frac{\gamma^\gamma}{\Gamma(\gamma)}\theta^{\gamma-1}\exp(-\gamma\theta)
 }. The parameter \eqn{\lambda} is determined by the intercept through log-link \eqn{\lambda=\exp(\beta_0)}.}


\value{ \item{lambda}{fixed effect in mixed Poisson distribution} 
\item{gamma.par}{the 
parameter of mixing Gamma distribution} 
\item{n.iter}{n} 
\item{likelihood.values}{values of log-likelihood} 

}
\references{
Karlis, D. (2005). EM algorithm for mixed Poisson and other discrete distributions. Astin bulletin, 35(01), 3-24.
}
\examples{
library(MASS)	
var = quine$Days[quine$Days<11]		
pGamma = pg.dist.glm(variable=var)	
print(pGamma)
}
