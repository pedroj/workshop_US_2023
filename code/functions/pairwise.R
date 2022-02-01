#########################################################
# Getting the pairwise interactions list
# Format: "Pant.species-Animal.species"
# assocs is a matrix (AxP). With rownames and colnames.
# 
# pairwise(t(assocs)) will give the interactions list
# as: "Animal.species-Pant.species"
# Pedro Jordano. Sevilla - 15 Abr 2006 02:13:45.
#--------------------------------------------------------
pairwise<-function(assocs) {
	A <- as.matrix(as.vector(as.matrix(assocs)))
    data.vecs <- A
    nassocs <- length(A)
    nspp1 <- dim(assocs)[1]
    nspp2 <- dim(assocs)[2]
    sppnames1 <- rownames(assocs)
    sppnames2 <- colnames(assocs)
    pairnames = NULL
    for (o in 1:(nspp2)) {
        for (u in 1:nspp1) {
            pairnames <- c(pairnames, paste(sppnames2[o],
                           sppnames1[u], sep = "-"))
                           }
                          }
            pairnames
     }
#########################################################

