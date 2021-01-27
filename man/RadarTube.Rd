\name{RadarTube}
\alias{RadarTube}
\docType{data}
\title{
Radar Tube Life data
}
\description{
Failure times (in days) of two types of radar tubes
}
\usage{data(RadarTube)}
\format{
  A data frame with 44 observations on the following 2 variables.
  \describe{
    \item{\code{Days}}{a numeric vector}
    \item{\code{Type}}{a numeric vector}
  }
}
\details{
The dataset contains failure times in days of two types of radar
tubes.
The sample sizes are m = 25 (Type 1) and n = 19 (Type 2). 
}
\source{
The dataset is from
Doksum (1975) and Dabrowska and  Doksum (1988). 
}
\references{
K. A. Doksum (1975), Measures of differences in reliability, in  
  Reliability and fault tree analysiseds, J. B. F. R. E. Barlow and N. D.
  Singpurwalla, eds., Society for Industrial and Applied Mathematics,
  Philadelphia, pp. 427--449,

D. M. Dabrowska and K.~A. Doksum (1988),  Estimation and testing in a two-sample
  generalized odds-rate model, J. Amer. Statist. Assoc. 83  pp.
  744--749.}
\examples{
data(RadarTube)
plot(RadarTube) 
}
\keyword{datasets}

