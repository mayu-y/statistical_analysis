###wilcox.test
#２標本検定
wilcox.test(x=da[,2], y=db[,2], var.equal=F)
wilcox.test(x=dc[,2], y=dd[,2], var.equal=F)
wilcox.test(x=de[,2], y=df[,2], var.equal=F)

wilcox.test(x=da[,2], y=dc[,2], var.equal=F)
wilcox.test(x=da[,2], y=de[,2], var.equal=F)

'''
> #２標本検定
> wilcox.test(x=da[,2], y=db[,2], var.equal=F)

        Wilcoxon rank sum test with continuity correction

data:  da[, 2] and db[, 2]
W = 59398, p-value < 2.2e-16
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(x=dc[,2], y=dd[,2], var.equal=F)

        Wilcoxon rank sum test with continuity correction

data:  dc[, 2] and dd[, 2]
W = 44206, p-value = 1.056e-15
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(x=de[,2], y=df[,2], var.equal=F)

        Wilcoxon rank sum test with continuity correction

data:  de[, 2] and df[, 2]
W = 25254, p-value = 0.000206
alternative hypothesis: true location shift is not equal to 0

> 
> wilcox.test(x=da[,2], y=dc[,2], var.equal=F)

        Wilcoxon rank sum test with continuity correction

data:  da[, 2] and dc[, 2]
W = 36211, p-value = 0.002135
alternative hypothesis: true location shift is not equal to 0

> wilcox.test(x=da[,2], y=de[,2], var.equal=F)

        Wilcoxon rank sum test with continuity correction

data:  da[, 2] and de[, 2]
W = 48722, p-value < 2.2e-16
alternative hypothesis: true location shift is not equal to 0

> 
'''

