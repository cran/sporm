\name{ks.stat}
\alias{ks.stat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
KS statistic for proportional odds rate model
}
\description{
Kolmogorov-Smirnov type test statistic for the goodness-of-fit test of the proportional odds rate model
}
\usage{
ks.stat(x, y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x,y}{
Vectors containing the data values of the two samples \eqn{x_1,\ldots,x_m}{x1,...,xm} 
and \eqn{y_1,\ldots,y_n}{y1,...,yn}.
}
}
\details{
See the reference below.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{ks }{KS statistic for proportional odds rate model}
  \item{theta }{estimated proportionality parameter \eqn{\theta}{\theta} by \code{\link{mrle.sporm}}}
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
\code{\link{ks.sporm}}
}
\examples{
# Use radar tube life data
z<-RadarTube$Days
v<-RadarTube$Type
x<-z[v==1]; y<-z[v==2]
ks.stat(x,y)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
