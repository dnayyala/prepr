\name{prepr.test}
\alias{prepr.test}
\title{Multivariate pre-pivoting root test statistic}
\description{
    Performs the pre-pivoting root based test for high dimensional data to compare the mean vectors of two populations.
}
\usage{
    prepr.test(x, y, alpha)
}
\arguments{
  \item{x}{A matrix of size n times p containing samples from the first group as rows}
  \item{y}{A matrix of size m times p containing samples from the second group as rows}
  \item{alpha}{Significance level for rejection of the hypothesis (default value is 0.05)}
}

\value{
    \item{statistic}{The test statistic value based on the pre-pivoting test}
    \item{pvalue}{The maximum p-value of the test statistic across the p variables}
    \item{decision}{The decision to reject or fail to reject the null hypothesis at the provided significance level alpha}
}
\seealso{
  \code{\link{prepivot}}.
}
\examples{
## generate random data
X <- matrix(rnorm(n = 2000, mean = 0, sd = 1), nrow = 20, ncol = 100)
Y <- matrix(rnorm(n = 1000, mean = 3, sd = 2), nrow = 20, ncol = 100)

# evaluate the function
prepr.test(X, Y, alpha = 0.05)
}

\keyword{test}
