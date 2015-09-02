\name{pln.reg.glm}
\alias{pln.reg.glm}

\title{
Poisson-Log_normal Regression
}
\description{
The function fits a mixed Poisson regression, in which the random parameter follows Log_normal distribution. As the method of estimation Expectation-maximization algorithm is used.
In M-step the GLM is applied.
}
\usage{
pln.reg.glm(variable, regressors, lambda.start, nu.start, epsylon, n)
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
  \item{nu.start}{
The starting value of nu parameter of log_normal distribution. Default to 1.
}
  \item{epsylon}{
Default to epsylon = 10^(-8)
}
  \item{n}{
The integer value for the Laguerre quadrature. Default to 100. } } 

\details{ This function provides estimated parameters of the model 
\eqn{N|\theta \sim Poisson(\lambda_i \theta)} where \eqn{\theta} is a latent 
variable comes from log-normal distribution with one parameter \eqn{\nu}. The 
pdf of log-normal is of the form 
\eqn{f_\theta(\theta)=\frac{1}{\sqrt{2\pi\nu\theta}}\exp[-\frac{(\log(\theta)+\frac{\nu^2}{2})^2}{2\nu^2}] 
 }. The parameter \eqn{\lambda_i} is determined by regressors \eqn{X_1,...,X_k} through log-link \eqn{\lambda_i=\mathbf{x}_i'\mathbf{\boldsymbol \beta}}.
  }

\value{ \item{lambda}{fitted values of parameter lambda} 
\item{nu}{the 
parameter of mixing log-normal distribution} 
\item{regression.coefficients}{beta vector } 
\item{n.iter}{n} 
\item{likelihood.values}{values of log-likelihood} 

 } 

\references{ Ghitany, M. E., Karlis, D., Al-Mutairi, D. K., & Al-Awadhi, F. 
A. (2012). An EM algorithm for multivariate mixed Poisson regression models 
and its application. Applied Mathematical Sciences, 6(137), 6843-6856. } 

\examples{

library(MASS)	
index = which(quine$Days<11)
reg = quine[index, -which(names(quine)=="Days")]
poislognormal = pln.reg.glm(variable=quine$Days[index], regressors=reg)	
print(poislognormal)
}









