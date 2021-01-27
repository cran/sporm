\name{plotor}
\alias{plotor}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Empirical odds rate plot
}
\description{
Plot the empirical odds rate based on empirical distributions of the two samples
}
\usage{
plotor(x, y, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x,y}{
Vectirs containing the data values of the two samples \eqn{x_1,\ldots,x_m}{x1,...,xm} 
and \eqn{y_1,\ldots,y_n}{y1,...,yn}.
}
  \item{\dots}{
other arguments for \code{\link{plot}}.
}
}
\details{
See the reference below.
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
vartheta0.hat<-dd.est(y,x)
# MRLE of theta
m<-length(x); n<-length(y)
N<-m+n; lambda<-m/N
phat0<-phi(N, theta0.hat, lambda)/N
theta.hat<-mrle.sporm(x, y, theta0.hat, phat0)$theta
## Empirical Odds Raio Plot
plotor(x, y, main="Empirical Odds Ratio Plot", lwd=2, ylim=c(0,2))
abline(h=theta.hat, lwd=2,lty=2, col=2)
abline(h=1/vartheta0.hat, lwd=2,lty=3, col=3)
abline(h=theta0.hat, lwd=2,lty=4, col=4)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
