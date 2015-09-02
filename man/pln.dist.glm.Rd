\name{pln.dist.glm}
\alias{pln.dist.glm}

\title{
Poisson-Log_normal Distribution
}
\description{
The function fits a mixed Poisson distribution, in which the random parameter follows Log_normal distribution. As the method of estimation Expectation-maximization algorithm is used.
In M-step the GLM is applied.
}
\usage{
pln.dist.glm(variable, lambda.start, nu.start, epsylon, n)
}
\arguments{
  \item{variable}{
The count dependent variable in the regression
}

  \item{lambda.start}{
The starting value of lambda parameter of Poisson distribution. Default to 1.
}
  \item{nu.start}{
The starting value of delta parameter of Log_normal distribution. Default to 1.
}
  \item{epsylon}{
Default to epsylon = 10^(-8)
}
  \item{n}{
The integer value for the Laguerre quadrature. Default to 100.
}
}

\details{This function provides estimated parameters of the model 
\eqn{N|\theta \sim Poisson(\lambda \theta)} where \eqn{\theta} is a latent 
variable comes from log-normal distribution with one parameter \eqn{\nu}. The 
pdf of log-normal is of the form 
\eqn{f_\theta(\theta)=\frac{1}{\sqrt{2\pi\nu\theta}}\exp[-\frac{(\log(\theta)+\frac{\nu^2}{2})^2}{2\nu^2}] 
 }. The parameter \eqn{\lambda} is determined by the intercep \eqn{\beta_0} through log-link \eqn{\lambda=\exp(\beta_0)}.}

\value{ \item{lambda}{fixed effect in mixed Poisson distribution} 
\item{nu}{the 
parameter of mixing log-normal distribution} 
\item{n.iter}{n} 
\item{likelihood.values}{values of log-likelihood} 
}

\references{
Ghitany, M. E., Karlis, D., Al-Mutairi, D. K., & Al-Awadhi, F. A. (2012). An EM algorithm for multivariate mixed Poisson regression models and its application. Applied Mathematical Sciences, 6(137), 6843-6856.
}
\examples{
library(MASS)	
var = quine$Days[quine$Days<11]		
plogn = pln.dist.glm(variable=var)	
print(plogn)
}
