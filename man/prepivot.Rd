\name{prepivot}
\alias{prepivot}
\title{Main function for calculating the pre-pivoting p-value}
\description{
    Calculates the p-value using the pre-pivoting root of the t-test statistic for a given univariate variable
observed over two groups of populations.
}
\usage{
    prepivot(x, y)
}
\arguments{
  \item{x}{vector of length n corresponding to the n observations from the first group}
  \item{y}{vector of size m corresponding to the m observations from the second group}
}
\value{
    The pre-pivoted test statistic value
}
\seealso{
  \code{\link{prepr.test}}.
}
\examples{
## generate random data
x <- rnorm(n = 20, mean = 0, sigma = 1)
y <- rnorm(n = 10, mean = 3, sigma = 2)

# evaluate the function value
prepivot(x, y, length(x), length(y), w = 3)
}

\keyword{test statistic}
