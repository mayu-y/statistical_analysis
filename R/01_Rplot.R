install.packages(“beeswarm”, dependencies = TRUE) #初回のみ
library(beeswarm)

da <- scan("./txt/time0_1.txt")
db <- scan("./txt/time0_2.txt")
dc <- scan("./txt/time0_3.txt")
dd <- scan("./txt/time0_4.txt")
de <- scan("./txt/FP60_1.txt")
df <- scan("./txt/FP60_2.txt")
dg <- scan("./txt/FP60_3.txt")
dh <- scan("./txt/FP60_4.txt")
di <- scan("./txt/FP60_5.txt")
dj <- scan("./txt/FP60_6.txt")
dk <- scan("./txt/wash_1.txt")
dl <- scan("./txt/wash_2.txt")
dm <- scan("./txt/wash_3.txt")
dn <- scan("./txt/wash_4.txt")
do <- scan("./txt/wash_5.txt")
dp <- scan("./txt/wash_6.txt")
dq <- scan("./txt/wash2_1.txt")
dr <- scan("./txt/wash2_2.txt")
ds <- scan("./txt/wash2_3.txt")
dt <- scan("./txt/wash2_4.txt")
du <- scan("./txt/wash2_5.txt")

list　<-　list("#1"=da, "#2"=db, "#3"=dc, "#4"=dd, 
  "#1"=de, "#2"=df, "#3"=dg, "#4"=dh, "#5"=di, "#6"=dj, 
  "#1"=dk, "#2"=dl, "#3"=dm, "#4"=dn, "#5"=do, "#6"=dp,
  "#1"=dq, "#2"=dr, "#3"=ds, "#4"=dt, "#5"=du)

#全サンプルのboxplot
boxplot(list,
  names=c("#1", "#2", "#3", "#4",
  rep(c("#1", "#2", "#3", "#4", "#5", "#6"),2),
  "#1", "#2", "#3", "#4", "#5"),
  col=c(rep("0",4), rep(c("Navy","Blue"), each=6), rep("cyan",5)))

#処理毎のboxplot
boxplot(list,names=c("0", "FP", "wash1h", "wash2h"),
  col=c("0", "Navy","Blue", "cyan"),ylab="ratio")

# "*"の追加
segments(x0=1.0, y0=1.85, x1=2.0, y1=1.85) 
segments(x0=1.0, y0=1.80, x1=3.0, y1=1.80)
segments(x0=1.0, y0=1.75, x1=4.0, y1=1.75)
text(x=1.5, y=1.88, labels="*", 
  font=1, ps=5, cex=1.0)
text(x=2.0, y=1.9, labels="*", 
  font=1, ps=5, cex=1.0)
text(x=2.5, y=1.78, labels="*", 
  font=1, ps=5, cex=1.0)

#boxplot+beeswarm
boxplot(list, ylim=c(0, 2.0), las = 1, cex.axis=0.75,
  names=c("#1", "#2", "#3", "#4",
  rep(c("#1", "#2", "#3", "#4", "#5", "#6"),2),
  "#1", "#2", "#3", "#4", "#5"),
  ylab="ratio")
beeswarm(list, data=NULL, col=c(rep("black",4),rep(c("Navy","Blue"), each=6),rep("cyan",5)),　pch = 16, cex=0.5, add=TRUE)

