\name{elltheta}
\alias{elltheta}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Internal function of "sporm"
}
\description{
Calculating profile loglikelihood for given \eqn{\theta}{\theta}
}
\usage{
elltheta(theta, p0, r, tol=1e-7, maxit=500)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{theta}{
The given \eqn{\theta}{\theta} value
}
  \item{p0}{
Initial values for probability masses \eqn{p_1,\ldots,p_N}{p1,...,pN} of the discretized 
baseline distribution \eqn{F}{F}.
}
  \item{r}{
vector of ranks of \eqn{y_1,\ldots,y_n}{y1,...,yn} in the pooled sample 
\eqn{x_1,\ldots,x_m, y_1,\ldots,y_n}{x1,...,xm, y1,...,yn}
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
  \item{p }{the estimated probability masses \eqn{p_1,\ldots,p_N}{p1,...,pN} of the discretized 
baseline distribution \eqn{F}{F} for the given \eqn{\theta}{\theta} value.}
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
\code{\link{ell.theta}}, \code{\link{mrle.sporm}}.
}
\examples{
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
