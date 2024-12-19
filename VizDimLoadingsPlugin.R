library(dplyr)
library(Seurat)
library(patchwork)


input <- function(inputfile) {
   pbmc <<- readRDS(inputfile)  
}

run <- function() {}

output <- function(outputfile) {
 pdf(outputfile)
VizDimLoadings(pbmc, dims = 1:2, reduction = "pca")
}



