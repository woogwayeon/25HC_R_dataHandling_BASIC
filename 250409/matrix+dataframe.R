# 매트릭스와 데이터프레임에 산술연산 적용하기
a <- matrix(1:20, 4, 5)
b <- matrix(21:40, 4, 5)

2*a
a+b

# 변수에 저장해야 값이 저장된다!
a <- a*3
b <- b-5


# 매트릭스와 데이터프레임의 자료구조 확인하기
class(iris)
class(state.x77)        # state.x77 데이터셋의 자료구조를 확인
head(state.x77)

is.matrix(iris)
is.data.frame(iris)
is.matrix(state.x77)
is.data.frame(state.x77)

v <- c(1,2,3,4)
class(v)
typeof(v)
typeof(iris)

# 매트릭스와 데이터프레임의 자료구조 변환하기

# 1. 매트릭스를 데이터프레임으로 변환
is.matrix(state.x77)
st <- data.frame(state.x77)
st2 <- as.data.frame(state.x77)

head(st)
head(st2)

class(st)
class(st2)

# 2. 데이터프레임을 매트릭스로 변환
is.data.frame(iris[,1:4])
iris.m <- as.matrix(iris[, 1:4])
head(iris.m)
class(iris.m)

head(iris[, 1:4])




# 데이터프레임에서만 적용되는 열 추출 방법
iris[, "Species"]       # 백터 (매트릭스, 데이터프레임 모두 가능)
iris[, 5]               # 백터 (매트릭스, 데이터프레임 모두 가능)

iris["Species"]         # 데이터프레임 - 데이터프레임에서만 명령어 쓰기 가능
iris[5]                 # 데이터프레임 - 데이터프레임에서만 명령어 쓰기 가능

iris$Species            # 팩터 형태 - 데이터프레임에서만 명령어 쓰기 가능




# 예제(LAB) 벚나무 판매하기

# 01. R 화원에서 보유하고 있는 데이터셋 확인
head(trees)
class(trees)
str(trees)

# 02. 조건 1을 만족시키기 위해 나무 직경의 평균값을 변수에 저장
girth.mean <- mean(trees$Girth)

# 03. 3가지 조건에 해당하는 벚나무를 찾아 변수 candinate에 저장하고 자료개수 구하기
candinate <- subset(trees, (Girth >= girth.mean) & (Height > 80) & (Volume > 50))
nrow(candinate)



# 예제2(LAB) 종업원의 팁 계산하기
# reshape2 패키지 안에 들어있는 tips 데이터셋은 팁에 대한 자료임 분석해보자

install.packages("reshape2")
library("reshape2")

head(tips)
str(tips)
data(tips)
class(tips)

tip.mean <- mean(tips$tip)


# tips 데이터셋에서 요일별 팁을 받는 빈도를 구해보자!
table(tips$day)

# 요일별로 시간대(time)가 dinner인 경우와 lanch인 경우로 팁 빈도차이 나눠보자
dinner <- subset(tips, time == "Dinner")
lanch <- subset(tips, time == "Lunch")

table(dinner$day)
table(lanch$day)

dinner.day <- sum(table(dinner$day))
lunch.day <- sum(table(lunch$day))

# dinner와 lanch의 데이터셋을 사용해 결제금액, 팁, 일행수에 대한 평균 구하기
colMeans(dinner[c('total_bill','tip','size')])
colMeans(lanch[c('total_bill','tip','size')])


# 손님들은 결제 금액 대비 평균 몇퍼센트를 팁으로 주는가?
tip.rate <- tips$tip / tips$total_bill
mean(tip.rate)

# 저녁 점심의 팁 비율도 구해보자!
dinner.tip.rate <- dinner$tip / dinner$total_bill
mean(dinner.tip.rate)

lunch.tip.rate <- lunch$tip / lunch$total_bill
mean(lunch.tip.rate)



# 성별을 기준으로 나눠보자
woman <- subset(tips, sex == "Female")
man <- subset(tips, sex == "Male")

table(tips$sex)

table(woman$day)
table(man$day)

woman.day <- sum(table(woman$day))
man.day <- sum(table(man$day))

colMeans(woman[c('total_bill','tip','size')])
colMeans(man[c('total_bill','tip','size')])

woman.tip.rate <- woman$tip / woman$total_bill
mean(woman.tip.rate)

man.tip.rate <- man$tip / man$total_bill
mean(man.tip.rate)


# 흡연을 기준으로 나눠보자
smoke <- subset(tips, smoker == "Yes")
no.smoke <- subset(tips, smoker == "No")

smoke.day <- sum(table(smoke$day))
no.smoke.day <- sum(table(no.smoke$day))

smoke.tip.rate <- smoke$tip / smoke$total_bill
mean(smoke.tip.rate)

no.smoke.tip.rate <- no.smoke$tip / no.smoke$total_bill
mean(man.tip.rate)


# 요일을 기준으로 팁 퍼센트 알아보자
head(tips,3)
tot.tip <- sum(tips$tip)
tot.bill <- sum(tips$total_bill)
day.week <- table(tips$day)

# 교수님 답안
levels(tips$day)
ds_day <- subset(tips, levels(tips$day)[1])



Friday <- subset(tips, day == "Fri")
Friday.tips <- sum(table(Friday$tip))
Friday.bill <- sum(Friday$total_bill)
Friday.rate <- Friday.tips / Friday.bill
mean(Friday.rate)

Thursday <- subset(tips, day == "Thur")
Thursday.tips <- sum(table(Thursday$tip))
Thursday.bill <- sum(Thursday$total_bill)
Thursday.rate <- Thursday.tips / Thursday.bill
mean(Thursday.rate)

Saturday <- subset(tips, day == "Sat")
Saturday.tips <- sum(table(Saturday$tip))
Saturday.bill <- sum(Saturday$total_bill)
Saturday.rate <- Saturday.tips / Saturday.bill
mean(Saturday.rate)

Sunday <- subset(tips, day == "Sun")
Sunday.tips <- sum(table(Sunday$tip))
Sunday.bill <- sum(Sunday$total_bill)
Sunday.rate <- Sunday.tips / Sunday.bill
mean(Sunday.rate)
