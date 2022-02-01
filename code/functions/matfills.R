# ----------------------------------------------------------------------
# [Title]: Functions to generate adjacency matrix fills useful in 
#          network analysis. 
# [Date]: 1 Apr 2013     [Loc]: Sevilla
# Pedro Jordano.
# ......................................................................
# nullmat will generate a 0 matrix of size m x n.
# fullconnmat will generate a fully-connected matrix of size m x n.
# randommat will generate a randomly-filled matrix of size m x n,
# with a proportion of 1's fills specified by 1-p, p with the 
# prob option.
# fullynest will generate an (approximately) fully-nested matrix of 
# size m x n.
# ----------------------------------------------------------------------
## First version DATE 1Apr2013. Revised DATE 5Apr2013
# ----------------------------------------------------------------------
# Null matrix
nullmat <- function (m,n) {
  size=m*n
  matrix(rep(0,size), nrow=m, ncol=n, byrow = TRUE)
}

# Fully connected matrix
fullconnmat <- function (m, n) {
    size=m*n
    matrix(rep(1,size), nrow=m, ncol=n, byrow = TRUE)
}

# Random matrix
randommat <- function (m, n, prob=c(0.92, 0.08)) {
    size=m*n
    matrix(sample(c(0,1), size, replace=T, prob), 
           nrow=m, ncol=n, byrow = TRUE)
}

# Fully nested matrix
fullynest <-  function (m, n) {
   x<- as.vector(rep(1, n))
    for (i in 1:m) {
        j=1
         x <- rbind(x,c(rep(1, n-j), rep(0, j)))}
   x<-data.frame(x,row.names = NULL)
#   x[-(m+1), ]
}
# ----------------------------------------------------------------------


