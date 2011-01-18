\name{dd.est}
\alias{dd.est}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Dabrowska-Doksum's estimate of theta
}
\description{
Returns the estimate of the proportionality parameter \eqn{\theta}{\theta} of Dabrowska and Doksum (1988)
}
\usage{
dd.est(x, y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x,y}{
Vectors containing the data values of the two samples \eqn{x_1,\ldots,x_m}{x1,...,xm} 
and \eqn{y_1,\ldots,y_n}{y1,...,yn}.
}
}
\details{
See the references below.
}
\value{
Dabrowska-Doksum's estimate of theta
}
\references{
Zhong Guan and Cheng Peng (2011), "A rank-based 
empirical likelihood approach to two-sample proportional odds model and 
its goodness-of-fit", Journal of 
Nonparametric Statistics, to appear.

D. M. Dabrowska and K. A. Doksum (1988),  Estimation and testing in a two-sample
  generalized odds-rate model, J. Amer. Statist. Assoc. 83  pp.
  744--749.
  }
\author{
Zhong Guan <zguan@iusb.edu>
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# Radar tube life data
z<-RadarTube$Days
v<-RadarTube$Type
x<-z[v==1]; y<-z[v==2]
# Dabrowska-Doksum's estimate of theta
dd.est(x,y)
dd.est(y,x)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
