\name{newton.theta}
\alias{newton.theta}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Initial theta value by Newton method
}
\description{
Optional initial \eqn{\theta}{\theta} value for \code{mrle.sporm} based on uniform (0, 1) baseline distrbution 
and calculated by Newton method.
}
\usage{
newton.theta(y, theta0 = 1, maxit = 100, eps = 1e-10)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
The \eqn{y}{y}-sample in proportional odds rate model with uniform (0,1) baseline distrbution. If baseline 
\eqn{F}{F} is not uniform (0,1) or unknown, use \eqn{y^*_i=F_n(y_j)}{y^*_i=F_n(y_j)}, \eqn{j=1,\ldots,n}{j=1,...,n}, 
where \eqn{F_n}{F_n} is the empirical cdf of \eqn{x_1,\ldots,x_m}{x1,...,xm}.
}
  \item{theta0}{
an initial value of \eqn{\theta}{\theta}
}
  \item{maxit}{
The maximum number of Newton iterations.
}
  \item{eps}{
Convergence tolerance used in the Newton iteration
}
}
\details{
See the reference below.
}
\value{
Returns the proportionality parameter \eqn{\theta}{\theta} of the parametric proportional odds
rate model with Uniform(0,1) baseline by Newtom method.
}
\references{
Zhong Guan and Cheng Peng (2011), "A rank-based 
empirical likelihood approach to two-sample proportional odds model and 
its goodness-of-fit", Journal of 
Nonparametric Statistics, to appear.
}
\author{
Zhong Guan <zguan@iusb.edu>
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{mrle.sporm}}.
}
\examples{
theta<-2
u<-runif(30)
y<-u/(theta-(theta-1)*u)
newton.theta(y)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
