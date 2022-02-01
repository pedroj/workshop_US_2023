##############################################################################
# Cecropia glaziouvii. Intervales. Practica de focal.
# Pedro Jordano. 25 Mar 2012.
# Observaciones de arboles focales en grupos de 2 personas.
#
setwd("/Users/pedroj/Documents/Cursos/Curso Frugivoria/Proyectos/Curso 2012/Focal_Cecropia")

#-----------------------------------------------------------------------------
# We may eventually need these libraries.
library(network)
library(sna)
library(bipartite)
library(igraph)
library(biGraph)
library(vegan)
library(ade4)

# Data. Input the census table as matrix here.
# Cecropia-frugivore interactions.
# Frugivore species are rows. Columns are Cecropia individuals.
focal <- read.table("/Users/pedro/Documents/Working/MS_Network-Sampling/Data/data/cecropia.txt", header=T, sep="\t", dec=".", na.strings="NA")
# Cecropia labels. Individual trees are cols 10-37 in "focal" dataframe.
mat<-as.matrix(focal[,10:37],col.names=c("cec18","cec02","cec03","cec25","cec22","cec06","cec16","cec13","cec05","cec15","cec28","cec24","cec11","cec21","cec20","cec01","cec04","cec23","cec14","cec12","cec09","cec17","cec07","cec19","cec08","cec10","cec26","cec27"))

# Frugivore individual labels.
row.names(focal)<-c("Thr_orna","Bro_tiri","Eup_chal","Pyr_fron","Coe_flav","Cis_leve","Tur_flav","Ind_Inde","Mel_flav","Thr_cyan","For_xant","Chl_cyan","Cac_chry","Tac_coro","Tan_sele","Ort_chlo","Thr_palm","Chl_spiz","Dac_caya","Tan_cyan","Tro_viri","Tan_prec","Tit_caya","Tur_rufi","Cyc_guja","Eup_cyan","Tan_desm","Eup_viol","Tro_surr","Dac_nigr","Pio_maxi","Abu_jacu","Bar_rufi","Hem_rufi","Sal_simi","Dac_sp.","Sel_macu","Tit_inqu","Pte_bail","Ram_dico","Bra_arac","Ceb_nigr")
row.names(mat)<-c("Thr_orna","Bro_tiri","Eup_chal","Pyr_fron","Coe_flav","Cis_leve","Tur_flav","Ind_Inde","Mel_flav","Thr_cyan","For_xant","Chl_cyan","Cac_chry","Tac_coro","Tan_sele","Ort_chlo","Thr_palm","Chl_spiz","Dac_caya","Tan_cyan","Tro_viri","Tan_prec","Tit_caya","Tur_rufi","Cyc_guja","Eup_cyan","Tan_desm","Eup_viol","Tro_surr","Dac_nigr","Pio_maxi","Abu_jacu","Bar_rufi","Hem_rufi","Sal_simi","Dac_sp.","Sel_macu","Tit_inqu","Pte_bail","Ram_dico","Bra_arac","Ceb_nigr")

#-----------------------------------------------------------------------------
# Assign the matrix
mymat<-mat
# Initializing bipartite webs for library network (type network) for plotting.
mat1 <- network.initialize(dim(mymat)[1]+dim(mymat)[2], bipartite=c(dim(mymat)[1]),directed=F)
mat1 <- network.bipartite(as.matrix(mymat),mat1)

# This is a plot to visualize the centrality-periphery locations of different
# nodes. It uses the Fruchterman-Reingold algorithm to relocate nodes 
# according to their similarity in overall interaction pattern. The graph is 
# still a bipartite graph. 
plot.network(mat1,
             usearrows=FALSE,jitter= T,
             #   mode= "circle",
                 mode= "fruchtermanreingold",
             #   mode= "kamadakawai", 
             label=network.vertex.names(mat1),displaylabels = T,
             boxed.labels= F,label.pad=0,label.pos= 5,label.cex= 0.5,
             vertex.col=c(rep(3,dim(mymat)[1]),rep(2,dim(mymat)[2])),vertex.cex= 2,
             vertex.sides= c(rep(5,dim(mymat)[1]),rep(12,dim(mymat)[2])),
             vertex.lty= 0,edge.lty=0.5,edge.col="grey10",
             label.lty=NULL,usecurve = F)

# This a plot of the bipartite structure with a bipartite layout.
plotweb(mat,method="normal",text.rot=90,
        col.interaction="grey50",
        col.high = "darkolivegreen3", col.low="brown3",
        bor.col.interaction ="grey50", bor.col.high="darkolivegreen3",
        bor.col.low="brown3")

# Get the network parameters. We use here the library bipartite.
netlevel<-networklevel(mat) # This gives you a lot of parameters
                            # for the WHOLE network
splevel<-specieslevel(mat) # This gives you a lot of parameters
                            # for each species and each Cecropia tree

#-----------------------------------------------------------------------------
# Taxonomic diversity index
## Preliminary: needs better data and some support functions
tmat <- t(mat)
taxon<-focal[,1:4]
# Taxonomic distances from a classification table with variable step lengths.
taxdis <- taxa2dist(taxon, varstep=TRUE)
plot(hclust(taxdis), hang = -1)
# Indices
mod <- taxondive(tmat, taxdis)
mod
summary(mod)
plot(mod)

# Species accumulation curves
# Estimates of frugivore richness
specpool(tmat)
all <- specaccum(tmat, method="random")
plot(all,ci.type="poly", col="blue", lwd=2, ci.lty=0,ylim=c(0,40),ci.col="lightblue",main="Cecropia glaziouvi",xlab="Number of  plants",ylab="Number of frugivore species")
boxplot(all, col="yellow", add=TRUE, pch="+")

#-----------------------------------------------------------------------------
# Quantitative component. Isolines.
#-----------------------------------------------------------------------------
# NOT-Log scaled axes. Data for Cecropia glaziouvi.
cgla <- focal[,3:9]
str(cgla)
plot(cgla$totvis,cgla$totbic,xlab="Visit rate",
     ylab="No. fruits/visit", main="Quantitative component",ylim=c(0,25),type="n")
#, col = terrain.colors(4:8)[qc$plant]
#text(vis, frv, plant, cex=0.6, pos=4, col="red")
points(cgla$totvis,cgla$totbic,
       pch=c(1,2,4,6,7,8,9,11,12,13,14,16,19,3,5)[cgla$fam])
legend("topright", inset=.05, title="Family",
c("Cebidae","Coerebidae","Cracidae","Fringillidae","Icteridae","Indet","Momotidae","Picidae","Psittacidae","Ramphastidae","Thraupidae","Tityridae","Trogonidae","Turdidae","Vireonidae"), pch=c(1,2,4,6,7,8,9,11,12,13,14,16,19,3,5),horiz=F,ncol=1)

# Isolines of QC
# This code sets the values for the isolines.
# Needs to be adjusted to each particular study.
fru1<-seq(0,25,length.out=100)
vis1<-seq(0,140,length.out=100)
#        plot(vis1,0.5/fru1,type="n")
        lines(vis1,0.1/fru1)
        lines(vis1,5/fru1)
        lines(vis1,25/fru1)
        lines(vis1,50/fru1)
        lines(vis1,100/fru1)
        lines(vis1,150/fru1)
text(80,0, "QC= 0.1", cex=0.6, pos=4, col="red")
text(80,0.8, "QC= 1.0", cex=0.6, pos=4, col="red")
text(80,2.0, "QC= 5.0", cex=0.6, pos=4, col="red")
text(80,3.6, "QC= 10.0", cex=0.6, pos=4, col="red")
text(80,7, "QC= 15.0", cex=0.6, pos=4, col="red")
text(80,11, "QC= 20.0", cex=0.6, pos=4, col="red")
##############################################################################

