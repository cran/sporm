\name{grad.hessinv}
\alias{grad.hessinv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Internal function of package "sporm"
}
\description{
Calculate gradients and the inverse of the Hessian matrix of the loglikelihood.
}
\usage{
grad.hessinv(theta, p, r)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{theta}{
Initial value for proportionality parameter 
\eqn{\theta}{\theta}.
}
  \item{p}{
Initial value for probability masses \eqn{p_1,\ldots,p_N}{p1,...,pN} of the discretized 
baseline distribution \eqn{F}{F}.
}
  \item{r}{
vector of ranks of \eqn{y_1,\ldots,y_n}{y1,...,yn} in the pooled sample 
\eqn{x_1,\ldots,x_m, y_1,\ldots,y_n}{x1,...,xm, y1,...,yn}
}
}
\details{
See the reference below.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{H }{gradients of the loglikelihood}
  \item{Ainv }{the inverse of the Hessian matrix}
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
\code{\link{mrle.sporm}}, \code{\link{ks.sporm}}. 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
