#' @export
prepivot <- function(x, y){
    ## Version 0.4

    n1 <- length(x)
    n2 <- length(y)
    gx.hat <- sum((x - mean(x))^3)/n1
    gy.hat <- sum((y - mean(y))^3)/n2
    sx <- ((n1 - 1)/n1)*var(x)
    sy <- ((n2 - 1)/n2)*var(y)
    kx <- (1/n1)*sum((x - mean(x))^4) - 3*sx^2
    ky <- (1/n2)*sum((y - mean(y))^4) - 3*sy^2
    n <- n1 + n2
    la1 <- n1/n
    la2 <- n2/n
    a1 <- sx/la1 + sy/la2
    a2 <- gx.hat/la1^2
    a3 <- gy.hat/la2^2
    a4 <- kx/la1^3
    a5 <- ky/la2^3
    a6 <- sx^{2}/la1^3+sy^{2}/la2^3
    a7 <- (sx*sy)/(la1^{2}*la2^{2})

    ## Compute the prepivoted root
    w <- abs( (mean(x) - mean(y))/sqrt(var(x)/n1 + var(y)/n2)  )
    # c1<-n^{-1}*w*(12^{-1}*a1^{-2}*(a4+a5)*(w^{2}-3)
    #                 -18^{-1}*a1^{-3}*(a2-a3)^{2}*(w^{4}+2*w^{2}-3)
    #                 -4^{-1}*a1^{-2}*(w^{2}*a6+3*a6+2*a7))

    c1 <- (w/n)*( (a4 + a5)*(w^{2} - 3)/(12*a1^2)
                - (a2 - a3)^{2}*(w^{4} + 2*w^{2} - 3)/(18*a1^3)
                - (w^{2}*a6 + 3*a6 + 2*a7)/(4*a1^2) )

    if (w <= 5.3){
        return( 2*pnorm(w,0,1) - 1 + 2*c1*dnorm(w) )
    } else {
        return(  2*(exp(w*2*sqrt(2/pi))/(1 + exp(w*2*sqrt(2/pi))) ) - 1 + 2*c1*dnorm(w)   )
    }
}
