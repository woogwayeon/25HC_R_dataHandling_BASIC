# 매트릭스와 데이터프레임 자료구조 확인

class(iris)
class(state.x77)
is.matrix(iris)
is.data.frame(iris)
is.matrix(state.x77)
is.data.frame(state.x77)

# 변환
is.matrix(state.x77)
st <- data.frame(state.x77)
head(st)
class(st)

is.data.frame(iris[,1:4])
iris.m <- as.matrix(iris[,1:4])
head(iris.m,3)
class(iris.m)

# mit형 수업
iris[, "Species"]    # vector-matrix
iris[, 5]            # vector-matrix
iris["Species"]      # data.frame
iris[5]              # data.frame
iris$Species         # factor


# 벚나무 구현
class(trees)
str(trees)
head(trees,3)
data(trees)

girth.mean <- mean(trees$Girth)
condinate <- subset(trees, (Girth >= girth.mean) & (Height > 80) & (Volume > 50))
nrow(condinate)

# 팁계산
library(reshape2)
class(tips)
is.matrix(tips)
head(tips)
data(tips)

table(tips$day)

# 요일별 팁의 빈도 알아보기
dinner <- subset(tips, time =='Dinner')
lunch <- subset(tips, time == 'Lunch')

table(dinner$day)
table(lunch$day)

# 결제 금액, 팁, 일행 수에 대한 평균 구하기
colMeans(dinner[c('total_bill', 'tip', 'size')])
colMeans(lunch[c('total_bill', 'tip', 'size')])

tip.rate <- tips$tip / tips$total_bill
mean(tip.rate)*100
