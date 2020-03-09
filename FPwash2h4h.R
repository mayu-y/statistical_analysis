daa <- scan("./txt/mock_1.txt")
dab <- scan("./txt/mock_2.txt")
dac <- scan("./txt/mock_3.txt")
dad <- scan("./txt/mock_4.txt")
dae <- scan("./txt/mock_5.txt")
daf <- scan("./txt/mock_6.txt")
dag <- scan("./txt/mock_7.txt")
dah <- scan("./txt/mock_8.txt")

dba <- scan("./txt/FP60_1.txt")
dbb <- scan("./txt/FP60_2.txt")
dbc <- scan("./txt/FP60_3.txt")
dbd <- scan("./txt/FP60_4.txt")
dbe <- scan("./txt/FP60_5.txt")
dbf <- scan("./txt/FP60_6.txt")
dbg <- scan("./txt/FP60_7.txt")
dbh <- scan("./txt/FP60_8.txt")

dca <- scan("./txt/wash2_mock_1.txt")
dcb <- scan("./txt/wash2_mock_2.txt")
dcc <- scan("./txt/wash2_mock_3.txt")
dcd <- scan("./txt/wash2_mock_4.txt")
dce <- scan("./txt/wash2_mock_5.txt")
dcf <- scan("./txt/wash2_mock_6.txt")

dda <- scan("./txt/wash2_FP_1.txt")
ddb <- scan("./txt/wash2_FP_2.txt")
ddc <- scan("./txt/wash2_FP_3.txt")
ddd <- scan("./txt/wash2_FP_4.txt")
dde <- scan("./txt/wash2_FP_5.txt")
ddf <- scan("./txt/wash2_FP_6.txt")

dea <- scan("./txt/wash4_mock_1.txt")
deb <- scan("./txt/wash4_mock_2.txt")
dec <- scan("./txt/wash4_mock_3.txt")
ded <- scan("./txt/wash4_mock_4.txt")
dee <- scan("./txt/wash4_mock_5.txt")

dfa <- scan("./txt/wash4_FP_1.txt")
dfb <- scan("./txt/wash4_FP_2.txt")
dfc <- scan("./txt/wash4_FP_3.txt")
dfd <- scan("./txt/wash4_FP_4.txt")
dfe <- scan("./txt/wash4_FP_5.txt")


daar <- daa[sample(1:60, 50)]
dabr <- dab[sample(1:67, 50)]
dacr <- dac[sample(1:63, 50)]
dadr <- dad[sample(1:58, 50)]
daer <- dae[sample(1:68, 50)]

dbar <- dba[sample(1:78, 50)]
dbcr <- dbc[sample(1:73, 50)]
dbdr <- dbd[sample(1:65, 50)]
dber <- dbe[sample(1:56, 50)]
dbfr <- dbf[sample(1:62, 50)]

dcar <- dca[sample(1:64, 50)]
dccr <- dcc[sample(1:88, 50)]
dcdr <- dcd[sample(1:71, 50)]
dcer <- dce[sample(1:67, 50)]
dcfr <- dcf[sample(1:93, 50)]

ddar <- dda[sample(1:92, 50)]
ddbr <- ddb[sample(1:59, 50)]
ddcr <- ddc[sample(1:79, 50)]
dddr <- ddd[sample(1:81, 50)]
dder <- dde[sample(1:61, 50)]

dear <- dea[sample(1:44, 44)]
debr <- deb[sample(1:60, 56)]
decr <- dec[sample(1:65, 50)]
dedr <- ded[sample(1:69, 50)]
deer <- dee[sample(1:50, 50)]

dfar <- dfa[sample(1:82, 53)]
dfbr <- dfb[sample(1:47, 47)]
dfcr <- dfc[sample(1:71, 50)]
dfdr <- dfd[sample(1:57, 50)]
dfer <- dfe[sample(1:90, 50)]


###all sample グラフ###
list <- list(
  "#1"=daar, "#2"=dabr, "#3"=dacr, "#4"=dadr, "#5"=daer,
  "#1"=dbar, "#2"=dbcr, "#3"=dbdr, "#4"=dber, "#5"=dbfr,
  "#1"=dcar, "#2"=dccr, "#3"=dcdr, "#4"=dcer, "#5"=dcfr,
  "#1"=ddar, "#2"=ddbr, "#3"=ddcr, "#4"=dddr, "#5"=dder,
  "#1"=dear, "#2"=debr, "#3"=decr, "#4"=dedr, "#5"=deer,
  "#1"=dfar, "#2"=dfbr, "#3"=dfcr, "#4"=dfdr, "#5"=dfer)

#box
boxplot(list, ylim=c(0, 2.0),las=1,cex.axis=0.75,
  names=rep(c("#1", "#2", "#3", "#4", "#5"), 6),
  col=rep(c(0,4), each=5, times=3),ylab="ratio")

#boxとbeeswarm重ねる
library(beeswarm)
boxplot(list, ylim=c(0, 2.0), las = 1, cex.axis=0.75,
  names=rep(c("#1", "#2", "#3", "#4", "#5"), 6),ylab="ratio")
beeswarm(list, data=NULL, col=rep(c(1,4), each=5, times=3),　pch = 16, cex=0.5, add=TRUE)


###treatment処理毎のグラフ
da <- data.frame(treatment="mock", ratio=c(daar, dabr, dacr, dadr, daer), color="0")
db <- data.frame(treatment="Flavopiridol", ratio=c(dbar, dbcr, dbdr, dber, dbfr), color="4")
dc <- data.frame(treatment="wash2h/mock", ratio=c(dcar, dccr, dcdr, dcer, dcfr), color="0")
dd <- data.frame(treatment="wash2h/FP", ratio=c(ddar, ddbr, ddcr, dddr, dder), color="4")
de <- data.frame(treatment="wash4h/mock", ratio=c(dear, debr, decr, dedr, deer), color="0")
df <- data.frame(treatment="wash4h/FP", ratio=c(dfar, dfbr, dfcr, dfdr, dfer), color="4")

#bee
library(beeswarm)
dx <- rbind(da, db, dc, dd, de, df)
r <- data.frame("mock"=c(daar, dabr, dacr, dadr, daer), 
  "Flavopiridol"=c(dbar, dbcr, dbdr, dber, dbfr),
  "wash2h/mock"=c(dcar, dccr, dcdr, dcer, dcfr),
  "wash2h/FP"=c(ddar, ddbr, ddcr, dddr, dder),
  "wash4h/mock"=c(dear, debr, decr, dedr, deer), 
  "wash4h/FP"=c(dfar, dfbr, dfcr, dfdr, dfer))

beeswarm(ratio~treatment, data=dx,　pch=c(16,16), 
  col=rep(c("black", "blue"),3), las=1, tck=0.02, 
  lwd=2, ylim=c(0, 2.0), yaxs="i", cex=0.5, ylab="ratio")

#25%, 50%, 75%の線を重ねる
bxplot(r, col="brown",lty = 2, 
       lwd=2, width = 0.5, add = TRUE)

###boxplot
#boxのみ
par(mar = c(5.5, 6.0, 4.1, 2))#余白を設定する
par(ps=20)
boxplot(r, ylim=c(0, 2.0), las=1,
  cex.axis=1.0,　col=rep(c("white", "blue"),3),
  names=c(rep(c("-", "+"), 3)), xlab="", ylab="ratio")

#有意差
segments(x0 = 0.9, y0 = 1.8, x1 = 2.1, y1 = 1.8)  #xとyの数値で始点と終点を指定
segments(x0 = 2.9, y0 = 1.8, x1 = 4.1, y1 = 1.8)  
segments(x0 = 4.9, y0 = 1.8, x1 = 6.1, y1 = 1.8) 
segments(x0 = 0.9, y0 = 0.4, x1 = 3.1, y1 = 0.4) 
segments(x0 = 0.9, y0 = 0.2, x1 = 5.1, y1 = 0.2)

#p値の表記
par(font=3)
text(x=1.1, y=1.75, labels="p",family = "mono", ps=5, cex=0.6)
text(x=3.1, y=1.75, labels="p",family = "mono", ps=5, cex=0.6)
text(x=5.1, y=1.75, labels="p",family = "mono", ps=5, cex=0.6)
text(x=1.5, y=0.43, labels="p",family = "mono", ps=5, cex=0.6)
text(x=2.5, y=0.23, labels="p",family = "mono", ps=5, cex=0.6)

par(font=1)
text(x=1.55, y=1.77, labels=" <2.2e-16",family="mono", ps=4, cex=0.6)
text(x=3.55, y=1.77, labels=" =1.05e-15", family="mono", ps=4, cex=0.6)
text(x=5.55, y=1.77, labels=" =0.000206", family="mono", ps=4, cex=0.6)
text(x=1.95, y=0.45, labels=" =0.002135", family="mono", ps=4, cex=0.6)
text(x=2.95, y=0.25, labels=" <2.2e-16", family="mono", ps=4, cex=0.6)

#＊の表記
par(family= "HiraKakuProN-W3")
text(x=1.5, y=1.83, labels="***", font=0.5, ps=5)
text(x=3.5, y=1.83, labels="***", font=0.5, ps=5)
text(x=5.5, y=1.83, labels="**", font=0.5, ps=5)
text(x=2.0, y=0.37, labels="**", font=0.5, ps=5)
text(x=3.0, y=0.17, labels="***", font=0.5, ps=5)


#boxplot+beeswarm
boxplot(r, ylim=c(0, 2.0), las=1,
  cex.axis=1.0,　col=rep(c("white", "blue"),3),
  names=c(rep(c("-", "+"), 3)), xlab="", ylab="ratio")
beeswarm(r, data = NULL, col=rep(c("black", "blue"),3),　pch=16, cex=0.5, add=TRUE)


#histogram+norm
hist(da[,2], freq=FALSE)
curve(dnorm(x,mean=1.45,0.13), 0, 1.8,
 col="red",add=T) 
#histogram
hist(da[,2], main="Histogram of mock")
hist(db[,2], main="Histogram of Flavopiridol")
hist(dc[,2], main="Histogram of wash2h/mock")
hist(dd[,2], main="Histgram of wash2h/Flavopiriol")
hist(de[,2], main="Histgram of wash4h/mock")
hist(df[,2], main="Histgram of wash4h/Fvavopiridol")

