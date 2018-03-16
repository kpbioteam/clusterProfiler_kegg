require("clusterProfiler", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input1 = args[1]
output = args[2]

gene <- c(read.table(input1))
kk <- enrichKEGG(gene         = gene,
                 organism     = 'hsa')

write.table(kk, output)
