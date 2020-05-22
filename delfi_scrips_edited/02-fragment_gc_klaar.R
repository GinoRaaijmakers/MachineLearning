args <- commandArgs(trailingOnly = TRUE)
hh <- paste(unlist(args), collapse = " ")
listoptions <- unlist(strsplit(hh, "--"))[-1]
options.args <- sapply(listoptions, function(x) {
    unlist(strsplit(x, " "))[-1]
})
options.names <- sapply(listoptions, function(x) {
    option <- unlist(strsplit(x, " "))[1]
})
names(options.args) <- unlist(options.names)
file <- options.args[1]
galpdir <- options.args[2]
outdir <- options.args[3]
names <- options.args[1]

# if(file.exists(file.path(outdir, paste0(names, "_frags.rds")))) q('no')

library(GenomicAlignments)
library(GenomicRanges)
library(Rsamtools)
library(devtools)
library(Homo.sapiens)
library(biovizBase)
library(BSgenome.Hsapiens.UCSC.hg19)
class(Homo.sapiens)

x <- file.path(galpdir, paste0(file))
galp <- readRDS(x)
frags <- granges(keepSeqlevels(galp, paste0("chr", 1:22), pruning.mode="coarse"),
             on.discordant.seqnames="drop")

## filter outliers
w.all <- width(frags)
q.all <- quantile(w.all, c(0.001, 0.999))
frags <- frags[which(w.all > q.all[1] & w.all < q.all[2])]

gcs <- GCcontent(Hsapiens, unstrand(frags))
frags$gc <- gcs

saveRDS(frags, file.path(outdir, paste0(names, "_frags.rds")) )
q('no')
