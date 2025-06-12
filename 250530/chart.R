setwd('D:\\2025_KoSeoyeon\\250530');

favorite <- c('winter', 'summer','spring','summer','summer',
              'fall','fall','summer','spring','spring');

ds <- table(favorite) # 도수분표 계산

barplot(ds, main='favorite season', col=rgb(0,100,5,50, maxColorValue = 255))

barplot(ds, main='favorite season', col=c('red','orange','green','blue'))

barplot(ds, main='favorite season', col=rainbow(4,s=0.2))

barplot(ds, main='favorite season', xlab='계절', ylab = '빈도수', horiz=TRUE)

barplot(ds, main='favorite season', names=c('FA', 'SP', 'SU',' WI'))

barplot(ds, main='favorite season', las=0)
barplot(ds, main='favorite season', las=1)
barplot(ds, main='favorite season', las=2)
barplot(ds, main='favorite season', las=3)


# 중첩 그룹의 막대그래프
age.A <- c(13709,10974,7979,5000,4250) 
age.B <- c(17540,29701,36209,33947,24487)
age.C <- c(991,2195,5366,12980,19007)

ds <- rbind(age.A, age.B, age.C)
colnames(ds) <- c('1970', '1990', '2010', '2030', '2050')

# 전체 변화를 볼 때
barplot(ds, main='인구추정', col=c('green','blue','pink'))

# 그룹별 변화를 줄 때
# legend.text = T 는 범례
par(mfrow=c(1,1), mar=c(5,5,5,7)) # 그래프 윈도우 설정
barplot(ds, main='인구추정', col=c('green','blue','pink'), 
        beside = TRUE,
        legend.text = c('0-14세', '15-64세', '65세 이상'), 
        args.legend = list(x='topright', bty='n', inset=c(-0.15,0)))
par(mfrow=c(1,1), mar=c(5,4,4,2)+0.1) # 그래프창 설정 해제


# 사업부문별 매출액 데이터셋
ha <- c(54659,61028,53307,46161,54180)
he <- c(31215,29863,32098,39684,29707)
mc <- c(15104,16133,15222,13208,9986)
vs <- c(13470,14231,13401,13552,13193)
bs <- c(16513,14947,15112,14392,17091)

ds <- rbind(he,he,mc,vs,bs)
colnames(ds) <- c('19.1Q','19.2Q','19.3Q','19.4Q','20.1Q')

par(mfrow=c(1,1), mar=c(5,5,5,10))
barplot(ds, main='사업부문별 매출액', 
        col = c('#003f5c','#58508d','#bc5090','#ff6361','#ffa600'),
        horiz = T, las = 1,
        xlab = '억 원', beside = T,
        legend.text = c('H&A','HE','MC','VS','BS'),
        args.legend = list(x='topright', bty='n', inset=c(-0.25,0))
)
par(mfrow=c(1,1), mar=c(5,4,4,2)+0.1) # 그래프창 설정 해제




## 히스토그램그램 그래놀라
head(cars)
dist <- cars[,2]

result <- hist(
  dist,
  main='histogram for 제동거리',
  xlab='제동거리', ylab='빈도수',
  border='blue',
  col = 'green',
  las=2, breaks = 5
)

freq <- result$counts
names(freq) <- result$breaks[-1]


## 다이아몬드 시세 파악하기
library(Stat2Data)

data(Diamonds)
ds <- Diamonds$PricePerCt

hist(ds, main='캐럿당 가격 분포', 
     breaks=9,
     xlab='캐럿당 가격($)', ylab='빈도수', las=1
     )

color <- rep('#a8dadc', 9)
color[3] <- '#1d3557'

hist(ds, main='캐럿당 가격 분포', 
     breaks=9,
     xlab='캐럿당 가격($)', ylab='빈도수', las=1,
     col = color,
     border='#457b9d'
)
