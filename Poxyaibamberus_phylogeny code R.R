#install.packages("devtools") 
setwd("C:/Users/Viktor Baranov/Documents/Baranov/my papers/in work/9.Mandibulate/draft files/r files")
devtools::install_github("seraklop/RoguePlots/rogue.plot")   
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
install.packages(rogue.plot)
install.packages(phylobase)
install.packages(ape)
install.packages(phytools)
install.packages(ggplot2)
install.packages(reshape2)
install.packages(ggimage)
library(tidyverse)
library(ggfun)
install.packages(ggtree)
install.packages(phangorn)
install.packages(ips)
install.packages(lazyeval)

#load the packages


require(rogue.plot)
require(phylobase)
require(ape)
require(phytools)
require(ggplot2)
require(reshape2)
require(ggimage)
library(tidyverse)
library(ggfun)
require(ggtree)
require(phangorn)
require(ips)
require(lazyeval)
#library(ggtree)Manager::install("ggtree")


#Poxyaibamberus
tree=read.nexus("pet.nex", tree.names = NULL, force.multi = FALSE)#contree all
tree2=read.nexus("pets.t", tree.names = NULL, force.multi = FALSE)



fossils=(c("Poxyaibamberus"))

taxa <- list("outgroup" = c("Prodiamesa_sp"), "fossils" =fossils)
#calculation of each rouge plot can take 10-20 minutes based on the hardware
create.rogue.plot(tree, tree2, rogues = c(taxa$fossils[1]), outgroup = taxa$outgroup[1], type = "Spectral", outfile.table = "Rogue2.txt", outfile.plot = "")
