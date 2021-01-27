\name{sporm-package}
%\alias{sporm-package}
\alias{sporm}
\docType{package}
\title{
Semiparametric proportional odds rate model
}
\description{
A rank-based empirical likelihood approach to two-sample proportional odds model and 
its goodness-of-fit. Let \eqn{x_1,\ldots,x_m}{x1,...,xm} and \eqn{y_1,\ldots,y_n}{y1,...,yn}
be two independent samples from distributions \eqn{F}{F} and 
\eqn{G}{G} that satisfy
\deqn{[G(x)/\{1-G(x)\}]/[F(x)\{1-F(x)\}]=G(x)\{1-F(x)\}/[F(x)\{1-G(x)\}]=\theta}{%
        [G(x)/(1-G(x))]/[F(x)(1-F(x))]=G(x)(1-F(x))/[F(x)(1-G(x))]=\theta}
Function \code{mele.theta.p} returns rank-based maximum likelihood estimates of \eqn{\theta}{\theta}, 
\eqn{\hat\theta}{\theta-hat}, and 
probability masses \eqn{p_1,\ldots,p_N}{p1,...,pN} of \eqn{F}{F} at the sorted pooled sample values
\eqn{z_1<\cdots<z_N}{z1<...<zN}, \eqn{N=m+n}{N=m+n}.
}
\details{
\tabular{ll}{
Package: \tab sporm\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-01-01\cr
License: \tab GPL 2.0 or newer\cr
LazyLoad: \tab yes\cr
}
The most important function is \code{mrle.sporm} which returns the maximum rank-based likelihood
estimates the proportionality paramter \eqn{\theta}{\theta} and the baseline distribution. 
Function \code{ks.sporm} is used to do the GOF test of the model assumption using a Kolmogorov-Smirnov type
test statistic; \code{confid.int.theta} returns a confidence interval for \eqn{\theta}{\theta}; 
\code{test.theta} does the hypothesis testing for \eqn{\theta}{\theta}; \code{Ell.Theta}
calculates the profile loglikelihood \eqn{\ell(\theta)}{l(\theta)} on interval 
\eqn{(\theta_1,\theta_2)}{(\theta1,\theta2)} which contains \eqn{\hat\theta}{\theta-hat}; and \code{plotor} 
plot the empirical odds ratio. Functions \code{newton.theta}, 
\code{dd.est} and \code{phi} can be used to calculate other initials. There are few internal functions:
\code{V.theta}, \code{H.Binv}, \code{grad.hessinv}, \code{ks.stat}, and \code{elltheta}. Dataset 
\code{RadarTube} contains the failure times (in days) of two types of radar tubes.
}
\author{
Zhong Guan <zguan@iusb.edu>; Cheng Peng <cpeng@usm.maine.edu>

Zhong Guan <zguan@iusb.edu>
}
\references{
Zhong Guan and Cheng Peng (2011), "A rank-based 
empirical likelihood approach to two-sample proportional odds model and 
its goodness-of-fit", Journal of 
Nonparametric Statistics, to appear.
}
\keyword{ package }


