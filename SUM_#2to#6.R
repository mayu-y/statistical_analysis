Aa <- scan("./txt/SUM_#2time0_.tif.hist.txt")
Ab <- scan("./txt/SUM_#2time10_.tif.hist.txt")
Ac <- scan("./txt/SUM_#2time20_.tif.hist.txt")
Ad <- scan("./txt/SUM_#2time30_.tif.hist.txt")
Ae <- scan("./txt/SUM_#2time40_.tif.hist.txt")
Af <- scan("./txt/SUM_#2time50_.tif.hist.txt")
Ag <- scan("./txt/SUM_#2time60_.tif.hist.txt")

Ba <- scan("./txt/SUM_#3time0_.tif.hist.txt")
Bb <- scan("./txt/SUM_#3time10_.tif.hist.txt")
Bc <- scan("./txt/SUM_#3time20_.tif.hist.txt")
Bd <- scan("./txt/SUM_#3time30_.tif.hist.txt")
Be <- scan("./txt/SUM_#3time40_.tif.hist.txt")
Bf <- scan("./txt/SUM_#3time50_.tif.hist.txt")
Bg <- scan("./txt/SUM_#3time60_.tif.hist.txt")

Ca <- scan("./txt/SUM_#4time0_.tif.hist.txt")
Cb <- scan("./txt/SUM_#4time10_.tif.hist.txt")
Cc <- scan("./txt/SUM_#4time20_.tif.hist.txt")
Cd <- scan("./txt/SUM_#4time30_.tif.hist.txt")
Ce <- scan("./txt/SUM_#4time40_.tif.hist.txt")
Cf <- scan("./txt/SUM_#4time50_.tif.hist.txt")
Cg <- scan("./txt/SUM_#4time60_.tif.hist.txt")

Da <- scan("./txt/SUM_#5time0_.tif.hist.txt")
Db <- scan("./txt/SUM_#5time10_.tif.hist.txt")
Dc <- scan("./txt/SUM_#5time20_.tif.hist.txt")
Dd <- scan("./txt/SUM_#5time30_.tif.hist.txt")
De <- scan("./txt/SUM_#5time40_.tif.hist.txt")
Df <- scan("./txt/SUM_#5time50_.tif.hist.txt")
Dg <- scan("./txt/SUM_#5time60_.tif.hist.txt")

Ea <- scan("./txt/SUM_#6time0_.tif.hist.txt")
Eb <- scan("./txt/SUM_#6time10_.tif.hist.txt")
Ec <- scan("./txt/SUM_#6time20_.tif.hist.txt")
Ed <- scan("./txt/SUM_#6time30_.tif.hist.txt")
Ee <- scan("./txt/SUM_#6time40_.tif.hist.txt")
Ef <- scan("./txt/SUM_#6time50_.tif.hist.txt")
Eg <- scan("./txt/SUM_#6time60_.tif.hist.txt")

A <- data.frame(time="0", ratio=c(Aa, Ba, Ca, Da, Ea))
B <- data.frame(time="10", ratio=c(Ab, Bb, Cb, Db, Eb))
C <- data.frame(time="20", ratio=c(Ac, Bc, Cc, Dc, Ec))
D <- data.frame(time="30", ratio=c(Ad, Bd, Cd, Dd, Ed))
E <- data.frame(time="40", ratio=c(Ae, Be, Ce, Dc, Ec))
F <- data.frame(time="50", ratio=c(Af, Bf, Cf, Df, Ef))
G <- data.frame(time="60", ratio=c(Ag, Bg, Cg, Dg, Eg))

#bee
library(beeswarm)
dX <- rbind(A, B, C, D, E, F, G)
beeswarm(ratio~time, data=dX,　pch=c(16,16), 
  las=1, tck=0.02, lwd=2, ylim=c(0, 2.0), yaxs="i", cex=0.5, 
  ylab="ratio", xlab="time(min)")
M <-  data.frame(time=c("0", "10", "20", "30", "40", "50", "60"), 
  median=c(mean(A[,2]),mean(B[,2]), mean(C[,2]), mean(D[,2]), mean(E[,2]), mean(F[,2]), mean(G[,2])))
plot((M[,2]), type="o",ylim=c(0, 2.0), xlim=c(0, 8.0), main="Flavopiridol")
beeswarm(ratio~time, data=dX,　pch=c(16,16), 
  las=1, tck=0.02, lwd=2, ylim=c(0, 2.0), yaxs="i", cex=0.5, 
  ylab="ratio", xlab="time(min)", add=TRUE)

#中央値折れ線グラフ
time <- c("0", "10", "20", "30", "40", "50", "60")
ratio_A <- c(mean(Aa), mean(Ab), mean(Ac), mean(Ad), mean(Ae), mean(Af), mean(Ag))
ratio_B <- c(mean(Ba), mean(Bb), mean(Bc), mean(Bd), mean(Be), mean(Bf), mean(Bg))
ratio_C <- c(mean(Ca), mean(Cb), mean(Cc), mean(Cd), mean(Ce), mean(Cf), mean(Cg))
ratio_D <- c(mean(Da), mean(Db), mean(Dc), mean(Dd), mean(De), mean(Df), mean(Dg))
ratio_E <- c(mean(Ea), mean(Eb), mean(Ec), mean(Ed), mean(Ee), mean(Ef), mean(Eg))

###mock中央値
par(mar=c(5.5, 6.0, 4.1, 2))
plot(time, ratio_a, type="o", ylim=c(0, 2.0), pch=16, cex=0.5, ylab="", xlab="")
par(new=T)
plot(time, ratio_b, type="o", ylim=c(0, 2.0), pch=16, cex=0.5, ylab="", xlab="")
par(new=T)
plot(time, ratio_c, type="o", ylim=c(0, 2.0), pch=16, cex=0.5, ylab="", xlab="")
par(new=T)
plot(time, ratio_d, type="o", ylim=c(0, 2.0), pch=16, cex=0.5, ylab="", xlab="")
par(new=T)
plot(time, ratio_e, type="o", ylim=c(0, 2.0), pch=16, cex=0.5, ylab="", xlab="")

#FP折れ線の追加
par(new=T)
plot(time, ratio_A, type="o", ylim=c(0, 2.0), ylab="", xlab="", cex=0.5, pch=16, col="blue")
par(new=T)
plot(time, ratio_B, type="o", ylim=c(0, 2.0), ylab="", xlab="", cex=0.5, pch=16, col="blue")
par(new=T)
plot(time, ratio_C, type="o", ylim=c(0, 2.0), ylab="", xlab="", cex=0.5, pch=16, col="blue")
par(new=T)
plot(time, ratio_D, type="o", ylim=c(0, 2.0), ylab="", xlab="", cex=0.5, pch=16, col="blue")
par(new=T)
plot(time, ratio_E, type="o", ylim=c(0, 2.0), ylab="ratio", xlab="time(min)", cex=0.5, cex.lab=1.5, pch=16, col="blue", main="")

legend("bottomleft", legend=c("mock", "Flavopiridol") , col=c("black","blue"), lty=c("solid","solid"))

