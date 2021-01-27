\name{mrle.sporm} 
\alias{mrle.sporm} 
%- Also NEED an '\alias' for EACH other topic documented here. 
\title{Semiparametric proportional odds 
rate model. } 
\description{ 
Maximum rank-based 
likelihood estimates of the proportionality parameter 
\eqn{\theta}{\theta} and probability masses of the discretized 
baseline distribution \eqn{F}{F}. 
} 
\usage{mrle.sporm(x, y, theta = 1, p = rep(1/(length(x) + length(y)), 
    length(x) + length(y)), tol = 1e-07, maxit = 50) } 
%- maybe also 'usage' for other objects documented here. 
\arguments{ 
  \item{x, y}{
Vectors containing the data values of the two samples \eqn{x_1,\ldots,x_m}{x1,...,xm} 
and \eqn{y_1,\ldots,y_n}{y1,...,yn}.
}
  \item{theta}{
Initial value for proportionality parameter 
\eqn{\theta}{\theta}.
}
  \item{p}{
Initial value for probability masses \eqn{p_1,\ldots,p_N}{p1,...,pN} of the discretized 
baseline distribution \eqn{F}{F}.
}
  \item{tol}{
Convergence tolerance used in the Newton iteration
}
  \item{maxit}{
The maximum number of Newton iterations.
}
}
\details{
The Newton iteration method is applied to find the maximum rank-based 
likelihood estimates of the proportionality parameter 
\eqn{\theta}{\theta} and probability masses \eqn{p_1,\ldots,p_N}{p1,...,pN} of the discretized 
baseline distribution \eqn{F}{F}. If the default initial values for \code{theta} and/or 
\code{p} do not work, functions \code{\link{newton.theta}}, 
\code{\link{dd.est}} and \code{\link{phi}} can be used to calculate other initials.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
 \item{theta }{The maximum rank-based 
likelihood estimate of the proportionality parameter 
\eqn{\theta}{theta}.}
 \item{p }{The maximum rank-based 
likelihood estimate of probability masses \eqn{p_1,\ldots,p_N}{p1,...,pN} of the discretized 
baseline distribution \eqn{F}{F}.}
 \item{ell }{The maximum rank-based 
loglikelihood.}
 \item{del }{Convergent tolerance which is sum of the absolute scores, and absolute changes of the
 parameters \code{theta} and \code{p}.}
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

\examples{
# Use radar tube life data
z<-RadarTube$Days
v<-RadarTube$Type
x<-z[v==1]; y<-z[v==2]
# Dabrowska-Doksum's estimate of theta
theta0.hat<-dd.est(x,y)
theta0.hat
vartheta0.hat<-dd.est(y,x)
vartheta0.hat
## mrle
m<-length(x)
n<-length(y)
N<-m+n
lambda<-m/N
phat0<-phi(N, theta0.hat, lambda)/N
mrle.sporm(x, y, theta0.hat, phat0)}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

