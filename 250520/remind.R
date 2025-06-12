setwd("D:\\2025_KoSeoyeon\\250520")

source('myfunc.R')

max <- mymax(10, 30)
max2 <- mymax(44, 10)

a <- mydiv(12)
b <- mydiv(30, 5)

score <- c(76,84,69,50,95,60,82,71,88,84)
idx <- which(score<=60)
score[idx] <- 61

idx <- which(score>=80)
score.high <- score[idx]

idx <- which(iris$Petal.Length>5.0)
iris.big <- iris[idx,]
iris.big <- subset(iris, iris$Petal.Length>5.0)

score <- c(60,40,95,80)
names(score) <- c('서연', '아인', '교수님', '정근')
idx <- which.max(score)
names(score)[idx]

# 언어 발달 상황 진단 프로그램 개발하기
install.packages('Stat2Data')
library(Stat2Data)

data(ChildSpeaks)
str(ChildSpeaks)

# 나이별
idx <- which(ChildSpeaks$Age < 9)
ChildSpeaks[idx, 'm1'] <- 5

idx <- which(ChildSpeaks$Age >= 9 & ChildSpeaks$Age < 15)
ChildSpeaks[idx, 'm1'] <- 4

idx <- which(ChildSpeaks$Age >= 15 & ChildSpeaks$Age < 21)
ChildSpeaks[idx, 'm1'] <- 3

idx <- which(ChildSpeaks$Age >= 21 & ChildSpeaks$Age < 27)
ChildSpeaks[idx, 'm1'] <- 2

idx <- which(ChildSpeaks$Age >= 27)
ChildSpeaks[idx, 'm1'] <- 1

# 언어이해력
ChildSpeaks$m2 <- NA
idx <- which(ChildSpeaks$Gesell < 70)
ChildSpeaks$m2[idx] <- 1

idx <- which(ChildSpeaks$Gesell >= 70 & ChildSpeaks$Gesell < 90)
ChildSpeaks$m2[idx] <- 2

idx <- which(ChildSpeaks$Gesell >= 90 & ChildSpeaks$Gesell < 110)
ChildSpeaks$m2[idx] <- 3

idx <- which(ChildSpeaks$Gesell >= 110 & ChildSpeaks$Gesell < 130)
ChildSpeaks$m2[idx] <- 4

idx <- which(ChildSpeaks$Gesell >= 130)
ChildSpeaks$m2[idx] <- 5

ChildSpeaks$total <- NA
ChildSpeaks$total <- ChildSpeaks$m1 + ChildSpeaks$m2

