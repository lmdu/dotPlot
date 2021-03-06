library(ggplot2)
df <- read.table("matrix.txt", header=T, sep="\t")
p <- ggplot(df, aes_string(x="score", y="species", size="cSSR", color="RA"))
p <- p + geom_point() + scale_color_gradient(low="red", high="blue") + ylab("")
p <- p + theme_bw()