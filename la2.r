install.packages("tidyverse")
install.packages("gcookbook")
library(ggplot2)
library(dplyr)
tscore <- read.csv("D:/B.E  (I.S.E)/third year/6th semester/DATA ANALYSIS/LA case study/test_scores.csv")
View(tscore)
ls()
str(tscore)
class(tscore)
tscore[5,5]
tscore[3,1:5]
tscore[3,]
tscore[c(1,2,5,6),]
tscore[c(1,2,5,6),'pretest']
sort(tscore[,10])
order(tscore[,10])
rank(tscore[,10])
tscore$student_id[1:4]
head(tscore,n=2)
tail(tscore,n=3)
summary(tscore)
names(tscore)
rownames(tscore)
colnames(tscore)
tscore.t=t(tscore) 
tscore.t
ii=with(tscore,order(pretest,posttest))
ii
unstack(tscore,form = school ~ teaching_method)
summary(tscore["n_student"])
mean(tscore[,10])
mean(tscore[,11])
median(tscore[,10])
median(tscore[,11])
max(tscore[,10])
max(tscore[,11])
min(tscore[,10])
min(tscore[,11])
sd(tscore[,10])
sd(tscore[,11])
summary(tscore[,11])
summary(tscore[,10])
summary(tscore[,9])
summary(tscore[,8])
summary(tscore[,7])
summary(tscore[,6])
summary(tscore[,5])
summary(tscore[,4])
summary(tscore[,3])
summary(tscore[,2])
summary(tscore[,1])
quantile(tscore[,10])
quantile(tscore[,10],0.2)
quantile(tscore[,10],c(0.25,0.5,0.75,1))
quantile(tscore[,11],c(0.25,0.5,0.75,1)) 
cumsum(tscore[,10])
cummin(tscore[,10])
cumprod(tscore[,10])
sum(tscore[,10])
sum(tscore[,11])
length(tscore[,10])
length(tscore[,11])
plot(tscore$pretest,tscore$posttest)
plot(tscore$pretest,tscore$posttest,type="l")
hist(tscore$pretest)
hist(tscore$posttest)
boxplot(tscore$pretest)
boxplot(tscore$posttest)
qqnorm(tscore$pretest)
qqnorm(tscore$posttest)
qqline(tscore$pretest)
qqline(tscore$posttest)
barplot(table(tscore$pretest))
barplot(table(tscore$posttest))
ggplot(tscore, aes(x = pretest, y = posttest)) +geom_point()
ggplot(tscore, aes(x = posttest, y = school)) +geom_point()
boxplot(school ~ posttest, data = tscore)
ggplot(tscore, aes(x = posttest, y = school)) +geom_boxplot()
ggplot(tscore, aes(x = school, y = pretest)) +geom_col(fill = "lightblue", colour = "black")
ggplot(tscore, aes(x = school_setting, y = pretest))  +geom_line()+ geom_point()
ggplot(tscore, aes(x = pretest)) +geom_density(fill = "blue", alpha = .2, colour = NA) +xlim(35, 105) +geom_line(stat = "density")
ggplot(tscore, aes(x = pretest, fill = school)) +geom_histogram(binwidth = 15, boundary = -7.5) +coord_polar() +scale_x_continuous(limits = c(0,360))
