install.packages(“beeswarm”, dependencies = TRUE) #初回のみ
library(beeswarm)

dx <- read.table("2.txt", header=T)

#boxplot
par(family= "HiraKakuProN-W3")#日本語表記の為
par(mar = c(5.5, 6.0, 4.1, 2))#余白を設定する
boxplot(ratio~cellcycle, data=dx, pch=c(16,16), names=c("間期", "M期"),
 las=1, tck=0.02, lwd=1, ylim=c(0, 2.0), yaxs="i", cex=0.5,
 ylab="ratio", xlab="細胞周期", cex.axis=1.8, cex.lab=2)

#bee
beeswarm(ratio~cellcycle, data=dx, pch=c(16,16), pwcol=as.numeric(color),
 las=1, tck=0.02, lwd=2, ylim=c(0, 2.0), yaxs="i", cex=0.45, ylab="ratio",add=T)

# "*"
segments(x0=1.0, y0=1.85, x1=2.0, y1=1.85)  #xとyの数値で始点と終点を指定
text(x=1.5, y=1.9, labels="*", 
  font=1, ps=5, cex=3)
text(x=1.95, y=1.9, labels="*", 
  font=1, ps=5, cex=2.5)
text(x=2.3, y=1.9, labels = ":p<0.05", 
  font=2, ps=5, cex=1.5)

