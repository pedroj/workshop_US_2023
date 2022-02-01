# getting necessary packages for frugivory and seed dispersal analysis
# adapted from jmm 2008

get.packages <- function () 
{
    pkglist = c("ggplot2", "network", "sna", "bipartite", "igraph","biGraph", 
        "vegan", "ade4")
    inst.pkgs = rownames(installed.packages())
    newpkgs <- pkglist[!pkglist %in% inst.pkgs]
    if (length(newpkgs) > 0) {
        do.call("install.packages", list(pkglist))
    }
}

get.packages()