\name{V.theta}
\alias{V.theta}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Internal function of "sporm"
}
\description{
Internal function of \code{sporm} for calculating \eqn{V_\theta(t)}{V_\theta(t)}.
}
\usage{
V.theta(t, N, theta, lambda)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{t}{
vector of numbers
}
  \item{N}{
integer N=m+n
}
  \item{theta}{
the value of the proportinality parameter \eqn{\theta}{\theta}
}
  \item{lambda}{
mixture proportion \eqn{\lambda=m/N}{\lambda=m/N}
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns the value of \eqn{V_\theta(t)}{V_\theta(t)}.
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
}
\examples{
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
