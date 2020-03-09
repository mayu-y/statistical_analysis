aa <- scan("./txt/SUM_mock#1time0_.tif.hist.txt")
ab <- scan("./txt/SUM_mock#1time10_.tif.hist.txt")
ac <- scan("./txt/SUM_mock#1time20_.tif.hist.txt")
ad <- scan("./txt/SUM_mock#1time30_.tif.hist.txt")
ae <- scan("./txt/SUM_mock#1time40_.tif.hist.txt")
af <- scan("./txt/SUM_mock#1time50_.tif.hist.txt")
ag <- scan("./txt/SUM_mock#1time60_.tif.hist.txt")

ba <- scan("./txt/SUM_mock#2time0_.tif.hist.txt")
bb <- scan("./txt/SUM_mock#2time10_.tif.hist.txt")
bc <- scan("./txt/SUM_mock#2time20_.tif.hist.txt")
bd <- scan("./txt/SUM_mock#2time30_.tif.hist.txt")
be <- scan("./txt/SUM_mock#2time40_.tif.hist.txt")
bf <- scan("./txt/SUM_mock#2time50_.tif.hist.txt")
bg <- scan("./txt/SUM_mock#2time60_.tif.hist.txt")

ca <- scan("./txt/SUM_mock#3time0_.tif.hist.txt")
cb <- scan("./txt/SUM_mock#3time10_.tif.hist.txt")
cc <- scan("./txt/SUM_mock#3time20_.tif.hist.txt")
cd <- scan("./txt/SUM_mock#3time30_.tif.hist.txt")
ce <- scan("./txt/SUM_mock#3time40_.tif.hist.txt")
cf <- scan("./txt/SUM_mock#3time50_.tif.hist.txt")
cg <- scan("./txt/SUM_mock#3time60_.tif.hist.txt")

da <- scan("./txt/SUM_mock#4time0_.tif.hist.txt")
db <- scan("./txt/SUM_mock#4time10_.tif.hist.txt")
dc <- scan("./txt/SUM_mock#4time20_.tif.hist.txt")
dd <- scan("./txt/SUM_mock#4time30_.tif.hist.txt")
de <- scan("./txt/SUM_mock#4time40_.tif.hist.txt")
df <- scan("./txt/SUM_mock#4time50_.tif.hist.txt")
dg <- scan("./txt/SUM_mock#4time60_.tif.hist.txt")

ea <- scan("./txt/SUM_mock#5time0_.tif.hist.txt")
eb <- scan("./txt/SUM_mock#5time10_.tif.hist.txt")
ec <- scan("./txt/SUM_mock#5time20_.tif.hist.txt")
ed <- scan("./txt/SUM_mock#5time30_.tif.hist.txt")
ee <- scan("./txt/SUM_mock#5time40_.tif.hist.txt")
ef <- scan("./txt/SUM_mock#5time50_.tif.hist.txt")
eg <- scan("./txt/SUM_mock#5time60_.tif.hist.txt")

a <- data.frame(time="0", ratio=c(aa, ba, ca, da, ea))
b <- data.frame(time="10", ratio=c(ab, bb, cb, db, eb))
c <- data.frame(time="20", ratio=c(ac, bc, cc, dc, ec))
d <- data.frame(time="30", ratio=c(ad, bd, cd, dd, ed))
e <- data.frame(time="40", ratio=c(ae, be, ce, dc, ec))
f <- data.frame(time="50", ratio=c(af, bf, cf, df, ef))
g <- data.frame(time="60", ratio=c(ag, bg, cg, dg, eg))

#beeswarm
library(beeswarm)
dx <- rbind(a, b, c, d, e, f, g)
beeswarm(ratio~time, data=dx,　pch=c(16,16), 
  las=1, tck=0.02, 
  lwd=2, ylim=c(0.5, 2.0), yaxs="i", cex=0.5, 
  ylab="ratio", xlab="time(min)")
m <- data.frame(time=c("0", "10", "20", "30", "40", "50", "60"), 
  median=c(median(a[,2]),median(b[,2]), median(c[,2]), median(d[,2]), median(e[,2]), median(f[,2]), median(g[,2])))
plot(m[,2], type="o",ylim=c(0.5, 2.0), xlim=c(0, 8.0), main="mock")
beeswarm(ratio~time, data=dx,　pch=c(16,16), 
  las=1, tck=0.02, lwd=2, ylim=c(0.5, 2.0), yaxs="i", cex=0.5, 
  ylab="ratio", xlab="time(min)", add=TRUE)

#中央値折れ線グラフ
time <- c("0", "10", "20", "30", "40", "50", "60")
ratio_a <- c(mean(aa), mean(ab), mean(ac), mean(ad), mean(ae), mean(af), mean(ag))
ratio_b <- c(mean(ba), mean(bb), mean(bc), mean(bd), mean(be), mean(bf), mean(bg))
ratio_c <- c(mean(ca), mean(cb), mean(cc), mean(cd), mean(ce), mean(cf), mean(cg))
ratio_d <- c(mean(da), mean(db), mean(dc), mean(dd), mean(de), mean(df), mean(dg))
ratio_e <- c(mean(ea), mean(eb), mean(ec), mean(ed), mean(ee), mean(ef), mean(eg))

par(mar=c(5.5, 6.0, 4.1, 2))
plot(time, ratio_a, type="o", ylim=c(0.5, 2.0), pch=16, cex=0.5, ylab="", xlab="")
par(new=T)
plot(time, ratio_b, type="o", ylim=c(0.5, 2.0), pch=16, cex=0.5, ylab="", xlab="")
par(new=T)
plot(time, ratio_c, type="o", ylim=c(0.5, 2.0), pch=16, cex=0.5, ylab="", xlab="")
par(new=T)
plot(time, ratio_d, type="o", ylim=c(0.5, 2.0), pch=16, cex=0.5, ylab="", xlab="")
par(new=T)
plot(time, ratio_e, type="o", ylim=c(0.5, 2.0), pch=16, cex=0.5, ylab="", xlab="")

