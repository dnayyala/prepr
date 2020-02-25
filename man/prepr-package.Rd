\name{prepr-package}
\alias{prepr-package}
\alias{prepr}
\docType{package}
\title{
\packageTitle{prepr}
}
\description{
\packageDescription{prepr}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{prepr}
\packageIndices{prepr}
The package contains two components: a function to implement the pre-pivoting root based test statistic for comparing the means of two high dimensional populations and the colorectal cancer data set (Alon et al., 1999). The main function of the package is \link{prepr.test}, which takes two main arguments which correspond to the data matrices of the two groups you are interested in testing. The other function \link{prepivot} is called upon to calculate the element-wise test statistics, which in turn are combined to give the final test statistic of the pre-pivoting root based test statistic and its corresponding p-value. The data set is included in \link{colon.example}.
}
\author{
\packageAuthor{prepr}

Maintainer: \packageMaintainer{prepr}
}
\references{
% Need to include the ArXiv link for the paper
Broad patterns of gene expression revealed by clustering analysis of tumor and normal colon tissues probed by oligonucleotide arrays; Alon et al.; PNAS 1999 (12), pp. 9745-9750.
% Will need to update to paper after publication
}
\keyword{ package; high dimensional; mean vector test }
\examples{
colon.example()
}
