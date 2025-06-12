setwd('D:\\2025_KoSeoyeon\\250527')

favorite <- c('winter','summer','spring','summer','summer',
              'fall','fall','summer','spring','spring')

ds <- table(favorite) # ds(data set) 에 테이블 저장

# bar plot (바 차트) / main은 차트이름
barplot(ds, main='좋아하는 계절', col=rgb(255,0,255,50, maxColorValue = 255))

barplot(ds) # 필수 매개변수가 될 데이터셋은 꼭 있어야함

# 색 // rgb 사용법 col=rgb(0,255,255,opacity(생략가능), maxColorValue = 255)
colors()

# 막대기마다 다른 색깔
barplot(ds, col=c('snow','snow1','snow2','snow3'))

# 팔레트 사용하기
barplot(ds, col=rainbow(4))

# x, y축 lable 달아주기
barplot(ds, xlab="계절", ylab='빈도수')

# 막대그래프 코자자
barplot(ds, xlab="계절", ylab='빈도수', horiz=TRUE)

# 막대기마다 names 함수 써서 이름 붙여주기
barplot(ds, xlab="계절", ylab='빈도수', names=c('FA', 'SP', 'SU', 'WI'))

# x축 막대기 이름을 세로로
barplot(ds, xlab="계절", ylab='빈도수', las=0) # 축 방향 (기본값)
barplot(ds, xlab="계절", ylab='빈도수', las=1) # 수평 방향 (축방향과 노상관)
barplot(ds, xlab="계절", ylab='빈도수', las=2) # 축을 기준으로 수직 방향
barplot(ds, xlab="계절", ylab='빈도수', las=3) # 수직 방향 (축 방향과 상관X)
