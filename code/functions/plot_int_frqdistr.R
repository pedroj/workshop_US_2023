# Function to plot the distribution of the number of interactions/species.
# This function can be used to plot rank-interaction freq plots for a given 
# dataset (as well as frequency-interaction freq plots).
# Based on plot.freqrank of library netZ.
# Sevilla. 1 May 2010. Pedro.
# 
# X is a vector with the values for the frequency of pairwise interactions recorded.
plot.intrank<-
function (X, freq = FALSE, rank = TRUE) 
{
    if (freq == TRUE) {
        if (rank == TRUE) {
            par(mfcol = c(1, 2))
        }
    }
    thick <- 0.4
    maxdeg <- length(X)
    maxnodes <- sum(X)
    X<-sort(X,decreasing=T)
    if (freq == TRUE) {
        plot(seq(1, length(X))[X > 0], X[X > 
            0], log = "xy", yaxt = "n", xaxt = "n", ylab = "Frequency", 
            xlab = "Pairwise interaction abundance", cex = thick, pch = 16)
        axis(1, format(10^(seq(from = 0, to = log(maxdeg), by = 1)), 
            scientific = F))
        axis(2, format(10^(seq(from = 0, to = log(maxnodes), 
            by = 1)), scientific = F))
    }
    if (rank == TRUE) {
        ranks <- c()
        for (i in maxdeg:1) {
            ranks <- c(ranks, rep(i, X[i]))
        }
        plot(ranks, seq(1, length(ranks), by = 1), log = "xy", 
            yaxt = "n", xaxt = "n", ylab = "Pairwise interaction Rank", xlab = "Pairwise interaction abundance", 
            cex = thick, pch = 16)
        axis(2, format(10^(seq(from = 0, to = log(maxnodes), 
            by = 1)), scientific = F))
        axis(1, format(10^(seq(from = 0, to = log(maxdeg), by = 1)), 
            scientific = F))
    }
    par(mfcol = c(1, 1))
}
