# read data
data <-read.csv("stats.csv", encoding="UTF-8", 
                stringsAsFactors=FALSE)
names(data)
library(ggplot2)

# plot time vs. quantity
yearstats <- table(data$年份)
barplot(yearstats, main = "文献发表趋势", ## axis.lty = 1,
        family = "STHeiti", xlab = "年份", ylab = "数量")

dev.copy(png, "发表趋势.png", 800, 600)
dev.off()

# type of article
table(data$类型)
table(data$方法)
table(data$研究对象)

# article type & journal type
xbar <- table(data$方法, data$类型)
library(xtable)
print.xtable(xtable(xbar), type = "html",file = "期刊vs方法.html")

# Journals
journals <- table(data$期刊)

par(las = 2, mar = c(9, 3, 3, 1))
barplot(journals, main = "期刊种类及数量", ## axis.lty = 1,
        family = "STHeiti", ylab = "数量")

dev.copy(png, "期刊名称.png", 800, 600)
dev.off()

# org
orgs <- table(data$机构类型)
orgs
prop.table(orgs)

#