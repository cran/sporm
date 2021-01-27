\name{phi}
\alias{phi}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function phi(t)
}
\description{
A function can be used to calculate the approximate probability masses \eqn{p_1,\ldots,p_N}{p1,...,pN}
of the discretized baseline distribution
\eqn{F}{F}.
}
\usage{
phi(N, theta, lambda)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{N}{
integer N=m+n, the sum of the two smple sizes
}
  \item{theta}{
the value of the proportionality parameter \eqn{\theta}{\theta}
}
  \item{lambda}{
m/N
}
}
\details{
Returns approximation of probability masses \eqn{p}{p}= phi(N, theta, lambda)/N
of the discretized baseline distribution
\eqn{F}{F}.
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
# Use radar tube life data
z<-RadarTube$Days
v<-RadarTube$Type
x<-z[v==1]; y<-z[v==2]
# Dabrowska-Doksum's estimate of theta
theta0.hat<-dd.est(x,y)
m<-length(x)
n<-length(y)
N<-m+n
lambda<-m/N
phat0<-phi(N, theta0.hat, lambda)/N
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
