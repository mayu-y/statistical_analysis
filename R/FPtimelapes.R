da <- scan("./txt/SUM_mock#1time0_.tif.hist.txt")
db <- scan("./txt/SUM_mock#1time10_.tif.hist.txt")
dc <- scan("./txt/SUM_mock#1time20_.tif.hist.txt")
dd <- scan("./txt/SUM_mock#1time30_.tif.hist.txt")
de <- scan("./txt/SUM_mock#1time40_.tif.hist.txt")
df <- scan("./txt/SUM_mock#1time50_.tif.hist.txt")
dg <- scan("./txt/SUM_mock#1time60_.tif.hist.txt")

a <- data.frame(time="0", ratio=da)
b <- data.frame(time="10", ratio=db)
c <- data.frame(time="20", ratio=dc)
d <- data.frame(time="30", ratio=dd)
e <- data.frame(time="40", ratio=de)
f <- data.frame(time="50", ratio=df)
g <- data.frame(time="60", ratio=dg)


#bee
library(beeswarm)
dx <- rbind(a, b, c, d, e, f, g)
beeswarm(ratio~time, data=dx,　pch=c(16,16), 
  las=1, tck=0.02, lwd=2, ylim=c(0, 2.0), 
  yaxs="i", cex=0.5, ylab="ratio", xlab="time(min)")

#25%, 50%, 75%の線を重ねる
bxplot(dx, data=NULL, col="brown",lty=2, lwd=2, width=0.5, add=TRUE)

###all sample グラフ###
list <- list("0"=da, "10"=db, "20"=dc, "30"=dd, "40"=de, "50"=df, "60"=dg)
#box
boxplot(list, ylim=c(0, 2.0),las=1, cex.axis=0.75,
  names=c("0", "10", "20", "30", "40", "50", "60"),
  ylab="ratio",xlab="time(min)",main="mock")
#beeswarm追加
beeswarm(list, data=NULL, pch=16, cex=0.5, add=TRUE)

