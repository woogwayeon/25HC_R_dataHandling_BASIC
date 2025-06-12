setwd('D:\\2025_KoSeoyeon\\250610')

ha <- c(54659,61028,53307,46161,54180)
he <- c(31215,29863,32098,39684,29707)
mc <- c(15104,16133,15222,13208,9986)
vs <- c(13470,14231,13401,13552,13193)
bs <- c(16513,14947,15112,14392,17091)

ds <- rbind(ha,he,mc,vs,bs)
colnames(ds) <- c('19.1Q','19.2Q','19.3Q','19.4Q','20.1Q')

par(mfrow=c(1,1), mar=c(5,5,5,10))

barplot(ds, main='사업부문별 매출액',
        col = c('#003f5c','#58508d','#bc5090','#ff6361','#ffa600'),
        horiz=T, las=1,
        xlab='억 원',
        beside = T,
        legend.text = c('H&A','HE','MC','VS','BS'),
        args.legend = list(x='topright', bty='n', inset=c(-0.25,0)))

par(mfrow=c(1,1), mar=c(5,4,4,2)+.1)

#===============================

library(Stat2Data)
data(Diamonds)
ds <- Diamonds$PricePerCt

color <- rep('#a8dadc', 9)
color[3] <- '#1d3557'

hist(ds, main='캐럿당 가격 분포', breaks=9,
     xlab='캐럿당 가격($)',
     ylab='빈도수',
     las=1,
     col=color,
     border='#457b9d')



#==============================

par(mfrow=c(2,2), mar=c(3,3,4,2))

hist(iris$Sepal.Length, main = 'Sepal.Length', col = 'orange')

barplot(table(mtcars$cyl), main = 'mtcars', col = c('red', 'green', 'blue'))

barplot(table(mtcars$gear), main = 'mtcars', col =rainbow(3), horiz = TRUE)

pie(table(mtcars$cyl), main = 'mtcars', col = topo.colors(3), radius = 2)

par(mfrow=c(1,1), mar=c(5,4,4,2)+0.1)


#===============================

install.packages('carData')
library(carData)
ds <- Chile
str(Chile)

colors <- rainbow(20)

par(mfrow= c(2,3))

barplot(table(ds$region), main = '지역별 분포', col=colors[1:5])
barplot(table(ds$sex), main = '성별 분포', col=colors[6:7])
barplot(table(ds$education), main = '교육수준별 분포', col=colors[8:10])

hist(ds$age, breaks = 6, main = '연령', xlab = 'age', col = colors[1:6])
hist(ds$income, breaks = 4, main = '수입', xlab = 'income', 
     col = colors[11:14])
hist(ds$statusquo, breaks = 9, main = '정책 지지도', xlab = 'support', 
     col = colors[15:20])


#======================================

library(reshape2)
str(tips)

color.6 <- rep('#a8dadc', 6)
color.6[2] <- '#1d3557'
color.4 <- rep('#a8dadc', 4)

color.4[2] <- '#1d3557'
color.4[3] <- '#457b9d'

par(mfrow = c(2,2))
barplot(table(tips$sex), main = 'gender', col = c('#a8dadc', '#1d3557'))
barplot(table(tips$day), main = 'day of the week', col = color.4)
barplot(table(tips$time), main = 'time', col = c('#1d3557', '#a8dadc'))
barplot(table(tips$size), main = 'size', col = color.6)
par(mfrow = c(1,1))


tips.new <- tips
tips.new$parHead <- tips$total_bill / tips$size
tips.new$percent <- tips.new$tip / tips.new$total_bill * 100

color.5 <- rep('#a8dadc', 6)
color.5[2] <- '#1d3557'


par(mfrow = c(1,3))
hist(tips.new$parHead, main = '일인당 주문 금액', 
     breaks = 5, xlab = '단위 : $', las=1,
     col = color.5)
hist(tips.new[tips.new$time == 'Lunch', 'parHead'], 
     main = '일인당 주문 금액(lunch)', 
     breaks = 4, xlab = '단위 : $', las=1,
     col = color.5)
hist(tips.new[tips.new$time == 'Dinner', 'parHead'], 
     main = '일인당 주문 금액(dinner)', 
     breaks = 4, xlab = '단위 : $', las=1,
     col = color.5)
par(mfrow = c(1,1))


# 퍼센트
par(mfrow = c(1,2))
res.lunch <- hist(tips.new[tips.new$time == 'Lunch', 'percent'], 
                  main = '주문 금액 대비 팁의 비율(lunch)', 
                  breaks = 5, 
                  xlab = 'percent(%)', 
                  las=1)
res.dinner <- hist(tips.new[tips.new$time == 'Dinner', 'percent'], 
                  main = '주문 금액 대비 팁의 비율(dinner)', 
                  breaks = 10, 
                  xlab = 'percent(%)', 
                  las=1)
par(mfrow = c(1,1))


res <- rbind(lunch = c(0, res.lunch$counts), dinner=c(res.dinner$counts[1:6]))
colnames(res) <- res.dinner$breaks[2:7]

barplot(res, main = '식사 시간에 따른 팁 비율 분포', col=c('#1d3557', '#a8dadc'),
        legend.text = c('lunch', 'dinner'))


#================ 원그래프와 선그래프

favorite <- c('winter','summer', 'spring', 'summer', 'summer', 
              'fall', 'fall', 'summer', 'spring', 'spring')
ds <- table(favorite)
pie(ds, main = 'favorite season', radius = 1, col=c('brown', 'green', 'red', 'black'))
# 비율을 보여주는 그래프가 원그래프라고 생각하면된다!

# 3d

install.packages('plotrix')
library(plotrix)

pie3D(ds, 
      main = 'favorite season',
      labelcex = 1.0,
      explode = 0.1,
      radius = 1.5,
      col=c('brown', 'green', 'red', 'black')
      )


#================= 선그래프

month <- 1:12
late <- c(5,8,7,9,4,6,12,13,8,6,6,4)
plot(month, late,
     main = '지각생 통계',
     type = 'l', # 그래프의 종류 선택
     lty = 1,    # 선의 종류 (line type)
     lwd = 1,    # 선의 굵기 width
     xlab = 'Month',
     ylab = 'Late count'
     )
