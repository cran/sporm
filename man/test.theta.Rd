\name{test.theta}
\alias{test.theta}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Hypothesis test for proportionality parameter
}
\description{
Hypothesis test for the proportionality parameter of the semiparametric proportional odds 
rate model.
}
\usage{
test.theta(x, y, alternative = c("two.sided", "less", "greater"), 
    theta = 1, B = 1000, conf.level = 0.95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x,y}{
Vectors containing the data values of the two samples \eqn{x_1,\ldots,x_m}{x1,...,xm} 
and \eqn{y_1,\ldots,y_n}{y1,...,yn}.
}
  \item{alternative}{
A character string specifying the alternative hypothesis, must be one of "two.sided" (default), 
"greater" or "less". You can specify just the initial letter.}
  \item{theta}{
The hypothesized values of \eqn{\theta}{\theta}.
}
  \item{B}{
The number of number Monte Carlo trials for simulation approach.
}
  \item{conf.level}{
Confidence level of the test.
}
}
\details{
Using the Monte Carlo simulation method to approximate the p-value of the test statistic which is
distribution-free.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{theta }{Maximum rank-based likelihood estimate of \eqn{\theta}{\theta}}
  \item{p-value }{The p-vakue of the test statistic}
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
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{mrle.sporm}}.
}
\examples{
# Radar tube life data
z<-RadarTube$Days
v<-RadarTube$Type
x<-z[v==1]; y<-z[v==2]
test.theta(x,y,B=100)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
