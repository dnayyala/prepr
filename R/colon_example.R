colon.example <- function(){
    data.x <- colon[which(colon$V1 == "N"),-1]   ## Normal samples
    data.y <- colon[which(colon$V1 == "T"),-1]    ## Tumor samples
    prepr.test(data.x, data.y, alpha = 0.05)
}
