% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fittail.R
\name{fittail}
\alias{fittail}
\title{TailW Maximum Likelihood Estimation}
\usage{
fittail(sample, dist = "TailW")
}
\arguments{
\item{sample}{Sample data.}

\item{dist}{Name of the distribution to fit.}
}
\value{
Gives a list of the estimated parameters fo the function fitted. For the TailW it returns, scale and shape. Fot the FTG it returns the parameters scale, shape, and threshold.
}
\description{
Maximum Likelihood Estimation of the tails by fitting a tailW or a FTG.
}
\examples{
scale <- 2
shape <- 1
threshold <- 1
s <- rtailw(1000, threshold = threshold , scale = scale, shape = shape)
fits <- fittail(s, dist = "TailW")
x_seq <- seq(threshold, max(s), length.out = 500)
theo_density <- dtailw(x_seq, threshold = threshold, scale = fits$scale, shape = fits$shape)
hist(s, probability = TRUE, breaks = "FD")
lines(x = x_seq, y = theo_density, col = "red")
}
\keyword{Tail-fitting}
