###wilcox.test
#２標本検定
wilcox.test(x=da[,2], y=db[,2], var.equal=F)
wilcox.test(x=dc[,2], y=dd[,2], var.equal=F)
wilcox.test(x=de[,2], y=df[,2], var.equal=F)

wilcox.test(x=da[,2], y=dc[,2], var.equal=F)
wilcox.test(x=da[,2], y=de[,2], var.equal=F)

