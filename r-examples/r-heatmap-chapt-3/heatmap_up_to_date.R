setwd("Super specific/filepath/that/noone/else/has/")
# library(pheatmap)
heatmap=function(df, xx) {
xx=read.csv("metadata_SRP070849.tsv", sep = "\t")
df=read.csv("SRP070849.tsv", sep="\t")
sums=matrix(nrow = nrow(df), ncol = ncol(df) - 1)
for(i in 1:nrow(sums)) { sums[i, ] <- sum(df[i, -1])
}
df2=df[which(df[, -1] >= 10), ]
df3=round(df2)
dds=DESeqDataSetFromMatrix(countData=df3, colData = xx, design = ~1)
dds=rlog(dds)
assay_df=assay(dds)
variances=matrix(nrow = nrow(dds), ncol = ncol(dds) - 1)
  for(i in 1:nrow(dds)) {
    variances[i, ] <- var(dds[i, -1])
}
tmp=quantile(variances, 0.75)
df4=assay_df[which(variances > tmp), ]
xx$refinebio_treatment <- substr(xx$refinebio_treatment, 0, 4)
index1=which(colnames(xx) == "refinebio_accession_code")
index2=which(colnames(xx)== "mutation")
index3=which(colnames(xx) == "refinebio_treatment")
xx2= xx[,c(index1,index2)]
colnames(xx2)= xx[, index3]
plot=pheatmap(df4,cluster_rows=TRUE,cluster_cols=TRUE,show_rownames=FALSE,annotation_col=xx2, main = "Annotated Heatmap", colorRampPalette(c("deepskyblue","black","yellow"))(25),scale = "row")
png("SRP070849_heatmap_annotated.png")
plot
dev.off()
#plot2=pheatmap(df4,cluster_rows=TRUE,cluster_cols=TRUE,show_rownames=FALSE,annotation_col=xx2, main = "Annotated Heatmap")
#png("SRP070849_diff_version_heatmap_annotated.png")
#plot2
#dev.off()
}

heatmap()