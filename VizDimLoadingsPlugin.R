library(dplyr)
library(Seurat)
library(patchwork)


input <- function(inputfile) {
   pbmc <<- readRDS(inputfile)  
}

run <- function() {}

output <- function(outputfile) {
 pdf(outputfile)
write.csv(pbmc@commands$RunPCA.RNA@params$features, paste(outputfile, "csv", sep="."))
VizDimLoadings(pbmc, dims = 1:2, reduction = "pca")
}



