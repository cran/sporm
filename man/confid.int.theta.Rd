\name{confid.int.theta}
\alias{confid.int.theta}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Confidence interval of the proportionality parameter
}
\description{
Confidence interval of the proportionality parameter \eqn{\theta}{\theta} of the proportional odds rate model
}
\usage{
confid.int.theta(x, y, method = c("chi-sq", "simulate"), 
    conf.level = 0.95, grd = 0.001, B = 1000,  
    tol = 1e-07, maxit = 500)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x,y}{
Vectors containing the data values of the two samples \eqn{x_1,\ldots,x_m}{x1,...,xm} 
and \eqn{y_1,\ldots,y_n}{y1,...,yn}.
}
  \item{method}{
A character string specifying the alternative hypothesis, must be one of "chi-sq" (default), 
"simulate". You can specify just the initial letter.
}
  \item{conf.level}{
Confidence level of the interval.
}
  \item{grd}{
Increment of the grid of points for searching the end-points of the interval
}
  \item{B}{
Number of Monte Carlo trials for approximating the critical values using simulation approach
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
  \item{theta.L }{Lower confidence bound}
  \item{theta.U }{Upper confidence bound}
  \item{theta.hat }{Maximum rank-based likelihood estimate of theta}
  \item{C.alpha }{Critical value}
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
\code{\link{mrle.sporm}}.
}
\examples{
# Radar tube life data
z<-RadarTube$Days
v<-RadarTube$Type
x<-z[v==1]; y<-z[v==2]
confid.int.theta(x, y, conf.level=.95, grd = 0.01, B=100)
confid.int.theta(x, y, method= "simulate", conf.level=.95, grd = 0.01, B=100)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
