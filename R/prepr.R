#' @export
prepr.test <- function(x, y, alpha = 0.05){
    # Version 0.4

    ## If the data is in a data frame, first convert it into a matrix


    if (ncol(x) != ncol(y)){
        stop("Number of variables of the two groups do not match")
    }

    ## Obtain p, n1 and n2 from the data matrices
    p <- ncol(x)
    n1 <- nrow(x)
    n2 <- ncol(x)
    pecdf <- numeric(p)
    for (i in 1:p){
        pecdf[i] <- prepivot(x[,i], y[,i])
    }

    ## The test statistic
    max.t <- (max(qnorm(pecdf)))^2 - 2*log(p) + log(log(p))       # max(qchisq(pecdf,1))-2*log(p)+log(log(p))
    ## The p-value
    maxpecdf <- 1 - exp( -exp(-max.t/2)/sqrt(2*pi) )    # 1-exp(-pi^{-1/2}*exp(-max.t/2))

    # return(c(max.t, maxpecdf))
    if (maxpecdf < alpha){
      return(list(statistic = max.t, pvalue = maxpecdf, decision = "Reject H0"))
    } else {
      return(list(statistic = max.t, pvalue = maxpecdf, decision = "Fail to reject H0"))
    }

}
