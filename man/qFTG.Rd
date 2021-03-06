% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FTG_quantile.R
\name{qFTG}
\alias{qFTG}
\title{FTG Quantile function}
\usage{
qFTG(p, threshold, scale, shape, interval)
}
\arguments{
\item{p}{Probability.}

\item{threshold}{Minimum value of the tail.}

\item{scale}{Scale parameter.}

\item{shape}{Shape parameter.}

\item{interval}{a vector containing the end-points of the interval to be searched for the minimum.}
}
\value{
Gives the quantiles of the FTG. The length of the result is determined by the length of x.
}
\description{
This function computes the quantiles of the full-tail gamma with the input sample data.
}
\examples{
qFTG(0.5,1,1,1, c(0,10))
}
\references{
del Castillo, Joan & Daoudi, Jalila & Serra, Isabel. (2012). The full-tails gamma distribution applied to model extreme values. ASTIN Bulletin. <doi:10.1017/asb.2017.9>.
}
\keyword{FTG}
