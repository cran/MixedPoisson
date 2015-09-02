\name{pg.reg.glm}
\alias{pg.reg.glm}

\title{
Poisson-Gamma Regression
}
\description{
The function fits a mixed Poisson regression, in which the random parameter follows Gamma distribution. As the method of estimation Expectation-maximization algorithm is used.
In M-step the GLM is applied.
}
\usage{
pg.reg.glm(variable, regressors, lambda.start, gamma.par.start, epsylon, n)
}

\arguments{
  \item{variable}{
The count dependent variable in the regression
}
  \item{regressors}{
The independent variables in the regression. Could be numerical as well as factors.
}

  \item{lambda.start}{
The starting value of lambda parameter of Poisson distribution. Default to 1.
}

  \item{gamma.par.start}{
The starting value of the parameter of Gamma distribution. Default to 1.

}
  \item{epsylon}{
Default to epsylon = 10^(-8)
}
  \item{n}{
The integer value for the Laguerre quadrature. Default to 100. } } 

\details{ This function provides estimated parameters of the model 
\eqn{N|\theta \sim Poisson(\lambda_i \theta)} where \eqn{\theta} is a latent 
variable comes from Gamma distribution with one parameter \eqn{\gamma}. The 
pdf of Gamma is of the form 
\eqn{f_\theta(\theta)=\frac{\gamma^\gamma}{\Gamma(\gamma)}\theta^{\gamma-1}\exp(-\gamma\theta)
 }. The parameter \eqn{\lambda_i} is determined by regressors \eqn{X_1,...,X_k} through log-link \eqn{\lambda_i=\mathbf{x}_i'\mathbf{\boldsymbol \beta}}.
  }


\value{ \item{lambda}{fitted values of parameter lambda} 
\item{gamma.par}{the 
parameter of mixing Gamma distribution} 
\item{regression.coefficients}{beta vector } 
\item{n.iter}{n} 
\item{likelihood.values}{values of log-likelihood} 

 } 
 
 \references{
Ghitany, M. E., Karlis, D., Al-Mutairi, D. K., & Al-Awadhi, F. A. (2012). An EM algorithm for multivariate mixed Poisson regression models and its application. Applied Mathematical Sciences, 6(137), 6843-6856.
}

\examples{
library(MASS)	
index = which(quine$Days<11)
reg = quine[index, -which(names(quine)=="Days")]
poisGamma = pg.reg.glm(variable=quine$Days[index], regressors=reg)	
print(poisGamma)

}
