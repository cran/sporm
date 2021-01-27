\name{ell.theta}
\alias{ell.theta}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Profile loglikelihood of theta.
}
\description{
Calculates the profile loglikelihood \eqn{\ell(\theta)}{l(\theta)} on interval 
\eqn{(\theta_1,\theta_2)}{(\theta1,\theta2)} which contains the maximum rank-based likelihood
estimate \eqn{\hat\theta}{\theta-hat}
}
\usage{
ell.theta(x, y, theta.hat, p.hat, theta1, theta2, n.theta = 40, 
    tol = 1e-07, maxit = 500)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x,y}{
Vectors containing the data values of the two samples \eqn{x_1,\ldots,x_m}{x1,...,xm} 
and \eqn{y_1,\ldots,y_n}{y1,...,yn}.
}
  \item{theta.hat}{
Maximum rank-based likelihood estimate of theta
}
  \item{p.hat}{
Maximum rank-based likelihood estimate of \code{p}
}
  \item{theta1, theta2}{
Left and right end-points of the interval on which the profile loglikelihood is calculated
}
  \item{n.theta}{
number of theta values in the above interval on which the profile loglikelihood is calculated
}
  \item{tol}{
Convergence tolerance used in the Newton iteration
}
  \item{maxit}{
The maximum number of Newton iterations.
}
}
\details{
See the reference below.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{ell }{the profile loglikelihood}
  \item{Theta }{the interval on which the profile loglikelihood is calculated}
%% ...
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
\code{\link{elltheta}}, \code{\link{mrle.sporm}}.
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
