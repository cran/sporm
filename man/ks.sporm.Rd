\name{ks.sporm}
\alias{ks.sporm}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
KS test for the semiparametric proportional odds rate model
}
\description{
Goodness-of-fit test of Kolmogorov-Smirnov type for the semiparametric proportional odds rate model
}
\usage{
ks.sporm(x, y, B = 1000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x, y}{
Vectors containing the data values of the two samples \eqn{x_1,\ldots,x_m}{x1,...,xm} 
and \eqn{y_1,\ldots,y_n}{y1,...,yn}.
}
  \item{B}{
The number of Monte Carlo trials for simulation approach.
}
}
\details{
Using the Monte Carlo simulation method to approximate the p-vakue of the KS test statistic which is
distribution-free and is calculate by internal function \code{\link{ks.stat}}.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{ks }{The Kolmogorov-Smirnov type test statistic.}
  \item{pval }{The p-value of the KS test.}
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
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{ks.stat}}, \code{\link{mrle.sporm}}.
}
\examples{
# Radar tube life data
z<-RadarTube$Days
v<-RadarTube$Type
x<-z[v==1]; y<-z[v==2]
## K-S goodness-of-fit test
ks.sporm(x,y,  B=100)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

